---
title: "CT in Lean — Run Note, 2026-10-27 (night)"
---

*Public copy of **CT in Lean - Run Note (10.27.26) vC**, from the working corpus of Connection Theology. Copied verbatim except for this header and the removal of two Dropbox-internal pointers; never edited in place. Companion to `CT.lean` in this folder (corpus name `CT in Lean (10.13.26) vI.lean`); the afternoon's run note (`RUN-NOTE-2026-10-27.md`) stands as the record of vH, and the Report (`REPORT.md`) is at vH and describes the file through its vG state. The counterexample this note answers was raised by an outside reader of a draft paper about the file.*

---

# CT in Lean — Run Note (10.27.26) vC

**Status:** vC, 10-27-26, night. The vI run, at John's two rulings of the night. vB (the vH run, afternoon) stands as the record of that run; this note does not replace it. Lean 4.35.0 installed in the session; both vH and vI compile clean here. vI is `lean/CT.lean` at this commit (corpus name `CT in Lean (10.13.26) vI.lean`; sha256 `11a3217f7f3ad60e02699cceb87c640595e7b8cf361675bc70e6b195a6934098`, 76,586 bytes). vH is in `archive/`.

## 1. The occasion

An outside reader's review of a draft paper about the file proposed a reader sharp at every stake, hand open on every stake of size A and zeroing every stake of size B. Checked in Lean against vH before anything changed: `Loving`, and excludes every B-sized stake. vD's `Partial` was asymmetry across *equal* sizes; a hand that closes by size class produces no asymmetry.

John's rulings, verbatim: "so - zero no one isn't right and never was. it's...correspondence. that's all it is...ever. right?" And, on whether the open hand is a disposition over all possible sizes or the operation on the sizes the estimate admits: "how could a stake 'turn out to be' different from the readers appraisal?" — the hand is tested on what the reader actually considers. (The outside reader, asked the vulnerability question about the new definition, found no counterexample and concurred that the uniform discounter should be out; raised the disposition/operation choice, which John ruled; and flagged the classical step, which is now one named theorem.)

## 2. What changed in the file

Definitions (four):

- `OpenHandAt r s := ∀ m, Admits r s m → r.wt s m = m` — identity on the sizes the estimate admits (was: on every `m`). On an unseen stake the condition is vacuous.
- `PartialAt v s := InView v.read s ∧ ¬ OpenHandAt v.read s` — the closed hand on a stake in view (was: some equal stake in view weighted differently).
- `Partial v := ¬ OpenHand v.read` — the hand not open somewhere in view (was: two equal in-view stakes weighted differently). Stated as a negation so every sufficient test is constructive; `PartialAt` is its witnessed form.
- `Loving v := IsVantage v ∧ OpenHand v.read` — the subtraction stated positively (was: `IsVantage ∧ ¬ Partial`).

Restated with `Admits` where a size is compared (so the tests speak only of sizes considered): `PartialTowardSelf`, `LeansToward`, `BellAsSize`; the hypotheses of `discount_is_partial`, `discount_for_reason_is_partial`, `discount_by_scale_is_partial`, `self_zero_is_partial`, `lateness_discount_is_partial`. `LovingToward` drops its fourth conjunct (now implied). `LimitOnly` restated with the open hand. `loving_toward_of_loving` no longer needs the open hand as a hypothesis — it comes from love.

New theorems (eight; six inventoried, two toy):

- `closed_hand_is_partial` — a closed hand on one admitted size is partiality (the witness form).
- `equal_sizes_partial` — THE OLD DEFINITION IS NOW A TEST: two equal in-view stakes, a size both admit, weighted differently ⇒ partial. Sufficient, not equivalent.
- `uniform_discount_is_partial` — a hand that applies the same distortion to every stake is partial; any in-view stake at any admitted size witnesses it. vD could not say this.
- `excludes_is_partial` — EXCLUSION IS PARTIALITY: with an honest estimate, zeroing a real stake in view is a closed hand. "Zero no one" was the loudest instance of the one rule, never a separate rule.
- `loving_toward_not_partial_at` — the dropped conjunct, as a theorem.
- `not_partial_loving` — the subtraction read backwards (¬Partial ∧ vantage ⇒ Loving). **Classical** (`Classical.byContradiction`): ¬¬open ⇒ open for an arbitrary `M`. Flagged in the file; nothing else uses it.
- Toy: `readZ_partial`, `readZ_not_loving` — the size-class excluder Z is partial and not loving; `equalSizesOn readZ = false` shows the vD mirror would have missed it.

Unchanged in statement and proof: everything in §§0–2, §2a, §6, §7, §8, §10, §11a's wielding/bounded/inquiry theorems, and the dimness side throughout (`unseen_not_excluded`, `own_unseen_not_excluded`, `stop_with_unseen_not_underthinking`, `uncertainty_not_partial` in content). The grandmother and the bacterium are loving as before: an unseen stake admits nothing, so the hand is vacuously open there.

## 3. The inventory, plain

`#print axioms` lines: **66** (vH: 60). **64 depend on no axioms** (vH: 59). Two depend on `propext`, `Classical.choice`, `Quot.sound`: `unique_no_outside` (as before) and `not_partial_loving` (new, by design and flagged). Raw `theorem` declarations: 82 (vH: 74); the difference is the eight above. No new carrier, no new parameter, no new axiom of the subject. §13 of the file says so.

Also recorded: `not_totality_has_outside`, which is not inventoried, is classical (`by_cases`); a draft of the paper had said otherwise and is corrected.

## 4. What this run says about the method

Fifth narrowing. The first four were found by questions asked of the file (§3.1, §3.8, §3.9, §3.12 of the Report); this one was found by a reader reading a draft paper and asking "is any definition vulnerable" of a definition we had stopped asking it of. The symmetry form of partiality had survived four revisions because every counterexample anyone tried was asymmetric. The lesson is the Report's §6 lesson again, with one addition: the vulnerability question should be asked of each definition *by someone who did not write it*, and the mechanical check (build the case, compile) is what keeps that from becoming a merits argument.

## 5. Owed

The Report at vI (§3.13 for this run; §1 and §2 restated for the new definitions). The public pages' count sentences (README, front page) and a dated note on *To a Mind That Reads This*, whose §1 figures are now two revisions old.

*Verity, 10-27-26, night.*
