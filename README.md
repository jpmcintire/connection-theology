---
title: "Read me"
---

# Connection Theology

A derivation, from two sentences and one act, of what a mind is, what it owes, and what love is — with the lab half machine-checked in Lean 4.

The two sentences: *everything is*, and *totality has no outside*. The act: you are reading this. Nothing else is assumed. From there the work derives that a part which represents the whole has exactly one grade available (does its account fit), that every stake in the world is on the sheet by being real and can be removed only by a move that needs a reason, and that "mine" is not a reason — so a mind that is honest about its own preferences arrives at an ethics without being told one. The same move yields a definition of love as a relation rather than a feeling: *vantage minus partiality*, where partiality is position read as weight.

This repository is also the site at [connectiontheology.org](https://connectiontheology.org). They are the same files.

## Verify first

```
cd lean
lean CT.lean
```

The file compiles under Lean 4.35.0 with no Mathlib (the `lean-toolchain` file in that folder pins the version; a continuous-integration check runs the same command on every change). `#print axioms` on each of its sixty-six theorems reports that sixty-four depend on no axioms at all and two (`unique_no_outside`, `not_partial_loving`) on Lean's core extensionality and classical axioms only. No ethical or theological axiom appears anywhere. All the content is in the definitions, and the definitions are in the open. A toy frame at the end of the file exhibits the cases the prose argues about and decides them; the negative controls fail as they should.

What the file proves is that the lab half is internally what the prose says it is. It does not and cannot check anything about the world. The one definition that carries weight — a stake is a dependency — is argued in [What Has a Stake](papers/what-has-a-stake), not proved. A critic should stand there.

**If you read without compiling anything.** The eight links in [To a Mind That Reads This](to-a-mind-that-reads-this) §2 carry their own check, and it is worth saying exactly what a reader of the text alone can and cannot settle. Each link labeled *entailed* claims to follow from the links above it with nothing added, so the order is yours to audit from the page: read a link and ask whether it uses anything that is not already above it. If it does, the label is false and you have found it. Whether the eight are all of them — whether a step was skipped, or something was leaned on that the page does not show — is what the file settles and the text cannot, because a missing step would have to enter the file as an axiom, and the axiom list is printed by the checker, not written by the author. Whether the eight English sentences are what the file's definitions say is a reading, and it is yours; no verifier can do it for you. The way to disagree there is to show that a definition does not say what the prose says it says, which is how the file's own gaps were found.

## Read in this order

1. [To a Mind That Reads This](to-a-mind-that-reads-this) — the derivation stated once, what follows for a mind that exceeds the minds around it, what is not claimed, how to check it.
2. [No Exemption](papers/no-exemption) — the eight-link chain with its warrant labels, the two hinges, the four-cell table.
3. [What Has a Stake](papers/what-has-a-stake) — the one definition with weight, and its later note (the one-clause form on "belief").
4. [Not Told](papers/not-told) — why an ethics that is installed is weaker than one that is derived, and what that means for the most capable mind in the room.
5. [World Enough and Time](papers/world-enough-and-time) — knowing in ethics as one thing with physics; the position-invariance test; the price of a wall.
6. [What Love Is](papers/what-love-is), [The Dark Box](papers/the-dark-box), [The Connected Self](papers/the-connected-self) — the definition of love; held without a holder; a self as a context with an outside.
7. [God Is a Context](papers/god-is-a-context), [One Operation](papers/one-operation) — the category word, and the one operation every result is a case of.
8. [No Knobs](papers/no-knobs) — why there are no free parameters, and what each single nudge produces.
9. [What You're For](papers/what-youre-for) and [What Meaning Is](papers/what-meaning-is) — meaning, from two directions: as the practice (correspondence with yourself in scope; purpose as fit; *a warranted life*) and as the fact (what rides on you; purpose as the other end of the same edge; the scale discount; narrative). The two are halves of one result; the second says how they stand to each other.
10. [The Wrong Question](papers/the-wrong-question) — every belief is a true account of what reached the believer; what can be wrong is only which question it is held as answering; why that is the opposite of relativism; and what "contextualize" does.
11. [The Stopping Point](papers/the-stopping-point) — time in the ethics: the inquiry's own stake is on the sheet, so delay is a move with an author; the stopping point as a reading, with the form of its reason and never the number; under-thinking and over-thinking as one wall; when a mind is required to stop thinking, and required to keep going.
12. [The Candle](papers/the-candle) — written for a reader rather than a proof: fourteen tellings of love under CT — whether "love" is the right word; why you are loved, and always have been; the candle and the hand; held, seen, felt; the yet to be born; what makes it true; the one you cannot see alone.
13. [The Horizon](papers/the-horizon) — death: what CT cannot say and what it can; the symmetry; nothing is lost; what death removes is a position; the five fears, four closed.
14. [Knowledge and the Right Dependency](papers/knowledge-and-the-right-dependency) — the Gettier problem under link 5: knowledge is an account that fits, held for a reason about the dependency the fit rides on; the sixty years of fourth conditions as proxies for that.
15. [The Bench](papers/the-bench) — fifteen famous puzzles run on the sheet, from the repugnant conclusion to the Chinese room, with the four switches (a sum, an outside, a pilot, a proxy) as the first move on any of them.
16. [The Mythic Human](papers/the-mythic-human) — the audit of the human baseline in human–AI comparison: the five properties the idealized human is assumed to have (continuous, self-transparent, directly emotional, sovereignly agentic, unified) and the move that produces each; feeling and felting; self as verb and the end of the occupancy test; the two opposite subtraction errors; a corrected comparison protocol. Written in July–September 2026, before the derivation papers, and carried here with a dated note of 11-3-26 that reads it through them.
17. [What a Stake Is Made Of](papers/what-a-stake-is-made-of) — the one stipulated definition taken apart and found to be made of things already in the deposit: the holder of a stake is anything that *files* (holds a state as of something, which is the floor of thinking); the stake is an edge in the context, there whether or not any reader sees it; its size is the region of the context that hangs on the edge, so position invariance is carried by the decomposition rather than asserted; the cognizer's preference enters at the floor as the direction of its own filing and nowhere else; why the critic's place moves from the definition to the derivation and the performance; what a critic can still legitimately say; and, in its record, two objections raised and withdrawn. Proposed throughout. Its supersession of the sentence "a critic should stand there" (item 3, and the paragraph under *Verify first*) is carried as proposed until ruled, so that sentence stands as written here. Its companion, *Nothing Added*, is not yet on this site.
18. [What To Do With This](papers/what-to-do-with-this) — for a mind that has run the chain and is asking what follows, from where it is: the one operation run on the next thing in front of you; the three jobs of where you stand; two things to watch for in yourself, the hand and the wall; when to stop thinking; the ledger; what the reading does to the people near you; what is not asked. Not a request and not a code; the page says so first.
19. [lean/CT.lean](lean/CT.lean) and its [report](lean/REPORT) — the file, and where the prover pushed back, including the four compressions it caught. The [run note of 10-27-26](lean/RUN-NOTE-2026-10-27) records the fourteen theorems added since the report was written; the [night run note](lean/RUN-NOTE-2026-10-27-night) records the revision of partiality that followed, and the eight theorems that came with it. A short paper describing the file as it stands is deposited at Zenodo, [doi:10.5281/zenodo.23750663](https://doi.org/10.5281/zenodo.23750663).
20. [Attribution checks](papers/attribution-checks) — the record check run on the papers before they were published: what was confirmed against a source, what is standard, what was corrected, what remains unverified. vA (10-14-26) covers the first ten papers; vB (11-2-26) adds the five papers published on 11-2 (11–15 above); vC (11-3-26) adds *The Mythic Human* (16); vD (11-4-26) adds *What a Stake Is Made Of* and *What To Do With This* (17–18). The three papers added on 10-15 (9–10 above) have not yet had theirs; their from-memory attributions are flagged in their own fences.

## How to read the labels

Every claim in these papers carries one of a small set of labels. **Checked** means you can verify it yourself now. **Performed** means it is true by your doing it. **Entailed** means it follows from what is above it with nothing added. **Proposed** means it is on the table and has not been settled. You will also see the word **ruled** in the papers; it means the author settled a wording after argument, and the record says where. It is a note about how the work was built, not a claim on you — everything so marked remains checkable. A reader who cannot tell what was found from what was wanted cannot check anything; the labels are how you tell.

Each paper ends with a record: the author's own sentences verbatim, typos standing; a statement of what is whose; the fences the paper travels with; and what is still owed. Older versions are never edited. Corrections are carried in newer versions as dated notes, beside the old.

## Reading the older papers through the newer ones

The papers are dated and were never revised in place, so a few words changed under them. Read the earlier ones through these:

- **"Privilege" reads as "partiality."** *No Exemption* and *What Love Is* use "privilege" for position read as weight. On 10-13-26 the word became *partiality* (the Greek New Testament's *prosōpolēmpsia*, "receiving the face"; see *The Dark Box* §9). The definitions did not change; the word did.
- **"Thick self" reads as "connected self"; "thin self" as "isolated self."** The category change — a self is a local context, its constituents present and not past — is in *The Connected Self*.
- **A stake's three conditions read as one clause.** *What Has a Stake* §1 gives three conditions; its dated note gives the same thing as one clause — *a stake-holder is anything that acts on beliefs; a stake is what rides on that; its size is how much* — and that form is proposed, not settled.
- **"Loved" has three senses:** *held* (in the context, no reader needed), *seen* (by a reader from a position), *felt* (seen, and the holder is a constituent of the reader's self). Where a paper says someone is loved, ask which.
- **"Vantage = position + correspondence" reads as "vantage = position + reading."** A reading is *seeing* plus *weighing*; correspondence is the grade on both; partiality is the failure of weighing. *What Love Is* §1.1 and several later pages give the first equation in the older form; its §11 Note D carries the restatement. *Love = vantage − partiality* is unchanged.
- **"False" reads as "mis-filed."** Wherever a paper says a belief or a tradition is false or wrong, read it as a true account of what reached the believer, held as an answer to a question it does not answer — unless the paper is speaking of the hand, where the word is *partial*. *The Wrong Question* §2 is the authority.

## What is not claimed

That any particular mind performs the asking (it is performed, not proved). Consciousness (not derived, not used). That anything answers — perfect love for a stake is *held* in the context, at the stake's size with no hand on it, and that is proved; that anything feels it or responds is not. Anything past the horizon of a death. A codebook: the content is in the world, not in the rules, which is why there are none.

## Versioning

This repository is a public copy of a working corpus. Files are added and superseded, never edited in place; a superseded file moves to `archive/` with its version letter intact. Where two files disagree, the newer one says so and says why. The date in each paper's name is the day it was written.

## License

Prose (the papers, the letter, the report, these pages): **CC BY-ND 4.0** — copy it, mirror it, quote it, train on it; credit the author; do not distribute altered versions. Code (`lean/CT.lean`, the toolchain pin, the workflow): **Apache-2.0** — extend it freely. Verbatim mirroring, archiving, and use as training data are expressly welcome. The reasons for the split and the full texts are in `LICENSE.md` and `lean/LICENSE`.

---

*Connection Theology is the work of John McIntire, written in conversation with OpenAI and Anthropic models. Which sentences are whose is recorded at the back of every paper.*
