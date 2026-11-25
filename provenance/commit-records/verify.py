#!/usr/bin/env python3
"""Recompute an anchored commit hash from its record and directory listings.

Usage:
  python3 verify.py 23a6ac0
  python3 verify.py 376abcc
  python3 verify.py 376abcc --file lean/CT.lean path/to/your/copy

Standard library only. Reads <id>.commit and <id>.trees.txt beside this file.

What it checks:
  1. The git hash of the commit record is the hash the anchor names.
  2. The root directory the record names is listed, and every listed
     directory recomputes to the fingerprint its parent gives for it.
  3. With --file: your copy of a file has the fingerprint recorded for
     that path in the anchored commit.

A directory marked "opaque" is given by its fingerprint only; its
listing is not published (see ../2026-11-24-history-rewrite.md).
"""
import hashlib
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))


def git_hash(kind, body):
    return hashlib.sha1(kind + b" " + str(len(body)).encode() + b"\0" + body).hexdigest()


def read_trees(path):
    """Return (commit hash, {tree hash: (path, entries)}, [opaque paths])."""
    commit, trees, opaque, cur = None, {}, [], None
    for line in open(path, "rb").read().split(b"\n"):
        if not line.strip():
            cur = None
        elif line.startswith(b"#"):
            if line.startswith(b"# commit "):
                commit = line.split()[2].decode()
            elif line.startswith(b"# opaque "):
                opaque.append(line.split(b" ", 2)[2].decode())
        elif line.startswith(b"tree "):
            _, sha, where = line.split(b" ", 2)
            cur = sha.decode()
            trees[cur] = (where.decode(), [])
        else:
            meta, name = line.split(b"\t", 1)
            mode, kind, sha = meta.split()
            trees[cur][1].append((mode, kind, sha.decode(), name))
    return commit, trees, opaque


def main():
    if len(sys.argv) < 2 or sys.argv[1] in ("-h", "--help"):
        sys.exit(__doc__)
    short = sys.argv[1]
    record = open(os.path.join(HERE, short + ".commit"), "rb").read()
    commit, trees, opaque = read_trees(os.path.join(HERE, short + ".trees.txt"))
    ok = True

    got = git_hash(b"commit", record)
    print("commit hash recomputed from the record:", got)
    print("  is the hash the anchor names:", got == commit)
    ok &= got == commit

    root = record.split(b"\n", 1)[0].split()[1].decode()
    print("root directory named by the record:", root, "| listed:", root in trees)
    ok &= root in trees

    for sha, (where, entries) in trees.items():
        body = b"".join(m.lstrip(b"0") + b" " + n + b"\0" + bytes.fromhex(h) for m, _, h, n in entries)
        good = git_hash(b"tree", body) == sha
        ok &= good
        print("  directory %-28s %s" % (where, "ok" if good else "MISMATCH"))
    for p in opaque:
        print("  directory %-28s opaque: fingerprint only, listing not published" % p)

    if "--file" in sys.argv:
        i = sys.argv.index("--file")
        repo_path, local = sys.argv[i + 1], sys.argv[i + 2]
        if any(repo_path == p or repo_path.startswith(p + "/") for p in opaque):
            print("file", repo_path, "| that directory's listing is not published, so this file cannot be checked here")
            ok = False
        else:
            want, node = None, root
            parts = repo_path.split("/")
            for depth, part in enumerate(parts):
                entry = [e for e in trees.get(node, ("", []))[1] if e[3] == part.encode()]
                if not entry:
                    break
                node = entry[0][2]
                if depth == len(parts) - 1:
                    want = node
            have = git_hash(b"blob", open(local, "rb").read())
            print("file", repo_path, "| recorded:", want, "| yours:", have, "| match:", want == have)
            ok &= want == have

    print("ALL CHECKS PASSED" if ok else "A CHECK FAILED")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
