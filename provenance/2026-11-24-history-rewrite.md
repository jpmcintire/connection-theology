# History rewritten on 2026-11-24: what changed, and how to check the anchors now

On 2026-11-24 the history of this repository was rewritten at the author's decision. The purpose was a privacy change: earlier public editions of four papers carried a personal detail that the current editions do not. The four are *No Exemption*, *One Operation*, *What Love Is*, and *True Representations Remain Representations*. Each current edition says in its status line what was changed.

## What changed

- All 66 commits made before the rewrite were rewritten. Their order, dates, authors and messages are kept exactly. Their hashes are all new, because the first commit was among those changed. Hashes quoted inside commit messages and inside files are left as written, so they name the original commits.
- In every earlier commit, each of the four files named above is replaced by a one-line notice that the edition was withdrawn. No other file in any commit was altered, and no file was added to or removed from any commit.
- The files at the head of `main` were not changed by the rewrite. The last commit before it (`7c79ad7c912c28778857a395e61ffae7d92e1fd0`) and the commit that replaced it (`b3582c29d012fad05e1ed82053575cf32414411a`) have the same tree, `c0fcdb05c995ab01a008975fa53e7e0dd29d935e`.
- The signatures the earlier commits carried (GitHub's web-flow signature, or the session signature the second anchor describes) are not on the rewritten commits. A signature covers the commit it was made on and cannot be carried to another.
- The two anchor statements in this folder and their `.ots` proofs are byte for byte what they were.

## What this does to the anchors

The anchors still prove what they proved: that each statement existed, in exactly its bytes, by the attested date. Each statement names a commit hash. Those two commits, `23a6ac03281379635d0a54f03bd8569358e98649` and `376abcc163f06ae09abdbf6c6e7993d7c1f8997a`, are no longer in this repository, so the hashes can no longer be recomputed from a clone.

`commit-records/` holds what is needed to recompute them without the old history:

- `23a6ac0.commit` and `376abcc.commit` are the two original commit records, byte for byte, including the signature each carried. The git hash of each record is the hash its anchor names.
- `23a6ac0.trees.txt` and `376abcc.trees.txt` are the directory listings of each commit: for every listed directory, the name and git fingerprint of each entry. The commit record names the root directory's fingerprint, and each listed directory recomputes to the fingerprint its parent gives for it.
- `verify.py` does the recomputation. It uses the Python standard library only.

```
python3 verify.py 23a6ac0
python3 verify.py 376abcc
python3 verify.py 376abcc --file cite.md path/to/a/copy
```

The third form checks a file you hold against the fingerprint recorded for that path. A match means your copy is, byte for byte, the file that stood at that path in the anchored commit.

## What can no longer be checked from the public record

In both listings the `papers/` directory is given by its fingerprint only. Its listing is withheld because it fingerprints the withdrawn editions, and a directory listing cannot be published in part. So for the papers as they stood on the two anchored dates, the public record now shows that a `papers/` directory with a fixed fingerprint was part of each anchored commit, and no more than that. Everything those commits held outside `papers/` remains checkable file by file, among it the Lean file and its reports, the letter, the README and front page, the archive and the licenses.

The author holds the complete original history privately, including both `papers/` listings and every withdrawn edition. It recomputes to the two anchored hashes, so it can be produced and checked against this record if a question of priority ever requires it.

## From here on

The rewritten history is the public record from 2026-11-24. If a new anchor is made, naming a commit of the rewritten history, it is added to this folder as a new dated file.

Author of the work: John McIntire.
