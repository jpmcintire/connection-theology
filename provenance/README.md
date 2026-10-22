# Provenance

This folder holds independent timestamp proofs for the repository, so that "this existed by this date" does not rest on any one party's say-so.

## What is here

- `2026-10-20-anchor.txt` — a plain-text statement naming commit `23a6ac03281379635d0a54f03bd8569358e98649` (the head of `main` on 2026-10-16) and what that hash covers.
- `2026-10-20-anchor.txt.ots` — an [OpenTimestamps](https://opentimestamps.org) proof that the SHA-256 of that text file was submitted to public calendar servers on 2026-10-20, which aggregate submissions into the Bitcoin blockchain. The proof is independent of GitHub and of the author.

Because a git commit hash is a digest of the whole tree and its entire history, the anchor covers every byte of every file in the repository as of that commit.

## How to verify

Install the client (`pip install opentimestamps-client`), then, in this folder:

```
ots verify 2026-10-20-anchor.txt.ots
```

This recomputes the file's hash and checks the proof. Proofs are first *pending* (attested by the calendar servers) and become *complete* once the calendars' aggregate hash is written into a Bitcoin block, typically within a day; `ots upgrade 2026-10-20-anchor.txt.ots` fetches the completed proof, after which verification needs only a Bitcoin node or a public block explorer and no calendar server at all.

**Status (2026-10-21):** the proof is complete. The `.ots` file in this folder is the upgraded copy, carrying Bitcoin block-header attestations (blocks 972354, 972355 and 972387; `ots info 2026-10-20-anchor.txt.ots` lists them with their merkle roots). The pending (calendar-only) version it replaces is the one committed 2026-10-20 and remains in the repository history.

To confirm the hash in the anchor file is the repository's:

```
git rev-parse 23a6ac0
git log --format='%H %cI %GK' -1 23a6ac0
```

The second command shows the committer date and the GitHub web-flow signing key; all commits through `23a6ac0` were made through GitHub's web interface and carry GitHub's signature, which is a second, independent attestation of their timestamps.

## What the anchor does and does not establish

It establishes that the content existed, in exactly these bytes, no later than the attesting block. It does not establish who wrote it; authorship rests on the GitHub account, the signed commits, and the author's private record. It does not establish any date earlier than October 2026; the dates the papers carry are those of the author's working corpus and are self-reported. The earliest independently attested date for this material is the repository's creation, 2026-10-15T23:57:41Z per GitHub, and this anchor.

Later anchors, if any, are added as new dated files; nothing in this folder is edited in place.
