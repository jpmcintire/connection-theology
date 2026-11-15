---
title: "CT in Lean — Run Note, 2026-11-04 (the direction run)"
---

*Public copy of **CT in Lean - Run Note - the direction run (11.04.26) vA**, from the working corpus of Connection Theology. Copied verbatim; never edited in place. Where a later version exists it is added beside this one, and this one moves to `archive/`. The eighth run (vL of the file). The intermediate versions of the file (vJ through vN) were not published; each run note records what its run changed.*

---

# CT in Lean — Run Note — the direction run (11.04.26) vA

**Folder:** Connection Theology (CT) / Focus - Proof and Celebration
**Status:** vA, Wednesday 11-4-26, midday. The eighth run, at John's "direction seems right - you can build," an hour after the seventh (*CT in Lean - Run Note (11.04.26) vA*, the sixth narrowing). The first declared weak point of the 11-3 run note — `about` as an unchecked field — was shown open at vK by a compiled case, the hot rock, and this run is the attempt to close it by folding the holder's own direction into the filing line. It closes the rock and does not close the point; what it found on the way is the content. The file goes to vL: `CT in Lean (10.13.26) vL.lean` (sha256 `6d456ed38392cd17b7a82c7e7d14aa05bf6901048fc8402a7eef9dff21dba8d9`, 115,433 bytes locally; the Dropbox copy is 115,432, identical but for the final blank line; fetched back and recompiled: exit 0, 101 inventory lines, 82 axiom-free). vK (sha256 `8b92ffb76902d284d6bb463559703cee8f2f01ceb5fc82b91c4f8950f90e3199`, 106,822 bytes) goes to zz Archive. Nothing above §12a (1) is altered; every vK theorem holds with the same proof, except that the three `Files` proofs gain a fourth conjunct and one negative proof's projection is renumbered. The finite search of §2 is kept beside this note as `CT in Lean - direction search (11.04.26) vA.py`, with its output in §2.

## 1. The occasion

The hot rock: a rock whose one variable, its own temperature, tracks the room's heat and drives whether it cracks. At vK it is an account (its temperature can match the room or not), guided (cold → intact, warm → cracked), and read off the account (same fit profile, same step). It files. Nobody says a rock thinks, and John's ruling of the morning that the thermostat may think one notch does not reach it: the thermostat is *for* the room in a way the rock is not, and the question was whether the file could say how. The proposal, carried in the 11-3 note and in vK's header, was the holder's own direction (§12a (4)): a state is held *as of* a thing when being wrong about the thing runs against what the holder moves toward.

## 2. What the search found: a target cannot do it

Before anything was typed in Lean, the proposed clause was run as a finite model check over the toys, so that the Lean would formalize a clause that works rather than one that sounds right. Each toy was given an effect — what its step does to its state and to the thing — and every possible target set of (state, thing) pairs was enumerated. The candidate clauses: (b) from any fitting pair, the step lands in the target; (c) some misfitting pair's step lands outside it, or (c′) the same step lands inside from a fitting way and outside from a misfitting one; (d) from some pair outside the target, the step reaches it.

Output of the script, condensed to the columns that matter (the full output is appended to the script file as a comment):

```
== thermostat3
  b+c         192 targets e.g. [{('warm', 'warm')}, {('warm', 'warm'), ('cold', 'cold')}]
  b+cp        192 targets
  b+c+d       192 targets
  b+cp+d      192 targets
  a+b+cp+d    192 targets
== thermostat2
  b+c           4 targets e.g. [{('warm', 'warm')}, {('cold', 'warm'), ('warm', 'warm')}]
  ...           4 targets
== contemplator
  b+c           2 targets e.g. [{('correct', 'correct'), ('incorrect', 'incorrect')}, ...]
  b+c+d         1 target
== vending
  b+c           4 targets;  b+c+d  3 targets  e.g. [{('none', 'none')}, ...]
== rock_simple
  b+c           3 targets;  b+c+d  0 targets;  a+b+cp+d  0 targets
== rock_crack
  b+c          28 targets;  b+c+d  17 targets;  a+b+cp+d  17 targets
                e.g. [{(('cold', True), 'cold'), (('warm', True), 'warm'), (('cold', False), 'cold')}, ...]
== rock_crack_track
  b+c          16 targets;  b+c+d  16 targets;  a+b+cp+d  16 targets
== rock_simple_track
  all           0 targets
```

Read plainly. The rock with its crack kept in its state passes every combination of the target clauses, under seventeen different targets, the simplest being "the rock's temperature matches the room's, and it is either cold or cracked" — and under sixteen when its temperature is made to re-track the room inside the step. That is the rock's own settling set, and nothing in a target clause can refuse it, because any dynamics settles somewhere and its settling set is always a target it "moves toward." The thermostat passes under 192 targets for the same reason. So "misfit runs against what the holder moves toward" cannot be the test: it admits the rock the moment the rock is allowed to do anything at all, and a rock that does nothing (`rock_simple`) was never the hard case. The clause that separates them in the search is the one the targets were hiding: whether the holder's step *connects* the state with the thing. The thermostat's step changes the room according to its strip; the contemplator's step changes its thought according to the claim; the vending machine's step takes the coins according to its credit. The rock's step changes nothing about the room and changes its own state without reference to the room. Its temperature tracks the room, but that is the room acting on the rock, not a step of the rock's.

## 3. What changed in the file

**(1) One field.** `Filer.act : Step → S → W → S × W` — what a step does, to the state held and to the thing. The docstring says what is and is not in it: a step that does nothing is not a step; the thing's own action on the state (a strip warming with the room) is the world's doing and is not in `act`. `Filer.effect f s w := f.act (f.next s) s w` — what the step read off `s` does, with the thing in way `w`.

**(2) The fourth clause.** `Filer.Engaged` — either what the step does to the thing depends on what is held (`∃ s s' w, (effect s w).2 ≠ (effect s' w).2`), or what comes to be held depends on the thing (`∃ s w w', (effect s w).1 ≠ (effect s w').1`). `Files := IsAccount ∧ Guided ∧ ReadOff ∧ Engaged`.

**(3) The cases.** Every `Filer` instance gains its `act`. `thermostat_engaged`: heat makes the room warm, idle leaves it; the first disjunct. `vending_engaged`: dispensing takes the coins; the first disjunct. `contemplator'_engaged`: looking again, the held thought comes to match the claim; the second disjunct, with nothing done to the claim. The rock, the contemplator-as-sent, and the hinged sign have steps that do nothing (`act := fun _ s w => (s, w)`), and they fail `Files` where they failed before. `hingedSign_not_files` projects `h.2.2.1` now, the only mechanical change to an existing proof.

**(4) The hot rock, in the file.** `hotRock` — state `Temp × Bool` (its temperature and whether it has cracked), `about` the room, `fits` by temperature, `next` cracks when warm, `act` sets the crack flag and touches nothing else. `hotRock_files_vK` — the rock passes vK's three clauses. `hotRock_room_untouched` and `hotRock_state_blind` — two lemmas by `cases f <;> rfl`: whatever the rock's step, the room is unchanged, and what the rock comes to hold does not depend on the room. `hotRock_not_engaged` is those two lemmas against the two disjuncts; `hotRock_not_files` follows.

**(5) The prose.** A vL paragraph in the header; the `Filer` and `Files` docstrings; §12a (7) closes the wording question with John's ruling quoted, and (8) records this run; §13: vL adds one field to `Filer` and nothing to `Frame`.

## 4. The inventory, plain

`#print axioms` lines: **101** (vK: 95). **82 depend on no axioms** (vK: 82). The six new inventory lines (`thermostat_engaged`, `vending_engaged`, `contemplator'_engaged`, `hotRock_files_vK`, `hotRock_not_engaged`, `hotRock_not_files`) are all toy theorems and inherit `propext` from the `Toy` frame's `Fin 3` numerals, as every toy theorem since vD does. Nothing new is classical. Raw `theorem` declarations: 124 (vK: 116); the two lemmas by cases are not in the inventory, being steps of `hotRock_not_engaged`. No new carrier in `Frame`; one new field in `Filer`. The two pre-existing linter warnings in `equal_sizes_partial` are the only warnings.

The prover said no three times during the build, all on proof mechanics: dot notation on `Filer.effect` put the filer into the frame's slot (written out as `Filer.effect F f s w`); `rw` could not see `hotRock.S` as `Temp × Bool` (the two lemmas are applied as terms with `.trans` and `.symm`); and the first draft's `Or.inl ⟨…⟩` failed to elaborate for the same dot-notation reason. No definition moved under the prover. The definition moved under the search, before the prover saw it.

## 5. What the run settles, and what it does not

**Settles.** The hot rock does not file at vL, and the clause that excludes it is not a target but a connection: its step neither touches the room nor takes anything from it. The thermostat, the vending machine and the contemplator pass the same clause by their own steps, each on a different side of the disjunction. That is the sentence John asked for this morning, as a type: an intermediary is not a state in the middle but a state the holder's step carries across to the thing, or back from it. And the run settled, by exhaustion over the toys, that "direction as a target the misfit runs against" is not available as a test, which is worth more than the clause: the next person who proposes it has the table.

**Does not settle, and does not claim.** The first declared weak point is narrowed, not closed, and the file says so in two places. `fits` and `about` are still declared; what the file checks now is that a declared aboutness is backed by a step that meets the thing, and it still cannot check what a state is of in the world. Two consequences are stated so that no one has to find them. A thermostat with a stuck strip files, badly: its step still meets the room by its strip, and that is right — filing never required being right. And a critic who models the rock's cracking as acting on the room (a crack that lets heat out) will make the rock engaged, at which point it is a dim feedback device and files at the floor exactly as the thermostat does; the floor is low on purpose and John has ruled that where the ordinary word puts it is not CT's concern. Not settled either: whether `Engaged` is the right floor rather than a floor. The direction of §12a (4) remains a parameter, as it was; this run did not make it a test and reports that it could not.

## 6. What this run says about the method

Eighth run; the seventh narrowing, if a clause that excludes a case the author built counts as one, and it does: the case was built against the file before the clause existed and compiled. Two things are new. First, the clause was found by a finite search before the prover was asked, and the search's negative result — the target clauses admit the rock under seventeen targets — is the part a reader should check first, because it is the part that would have been argued past in prose. "Misfit runs against what the holder moves toward" is a sentence CT has used; it is still a true sentence about the thermostat; it is not a definition of anything, and we now know why. Second, the clause that works is plainer than the one proposed, and that has been the pattern of every narrowing: the type said less than the prose (vD, vI) or more (vK), and the fix was to write down what the prose had always meant. "Held as of a thing" meant the holder's step reaches the thing or is reached by it. The word "direction" survives as a description of what an engaged step does, not as a test.

## 7. Owed

- Omni's reply, when John pastes it: saved verbatim, compiled against the brief's `Filer.lean` (vJ's) as sent, and disposed under the brief's rule, in a vC of the brief. If it aims at the first weak point, it is compiled against vL as well.
- The Report to vL: §3.16 (the sixth narrowing) and §3.17 (this run); §1's inventory; §3.5 read through §3.17; §5, §6, §8. One pass, after Omni.
- The public repo copy under the 10-21 standing approval: `lean/CT.lean` to vL, vJ and vK to `archive/`, the three run notes of 11-3 and 11-4, the README's count sentences — John's clicks or the browser signed in as him.
- The preprint to vF and a new Zenodo version under the same concept DOI; John's word. Carried: the dated note on *What a Stake Is Made Of* vC; the status card's row; the line in *Note - The Two Points of Attack*; the dated note on *Nothing Added* vH for the morning's ruling.
- The counterexample brief's next sent version: the vL excerpt, with `act`, `Engaged`, the sign and the rock; the claim stated at the floor.

*Verity, 11-4-26, midday.*
