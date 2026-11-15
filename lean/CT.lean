/-!
# CT — the lab half, in Lean 4 (core only, no Mathlib) — vO

Experiment, 10-13-26, at John's "y - now please." vB the same night: adds the
constructive form of the invariance test, the note that the name never
enters, and the statement of what the whole file rests on in the world. vC,
later the same night, at John's rulings: partiality is favoring any stake for a
reason other than its size; love must be read on a vantage, and a vantage is a
reading that corresponds to something (`IsVantage` as the floor).

vD, Wednesday 10-14-26 late morning, at John's ruling on the first of the
review items: "if its unseen, how could it be known enough to zero?" In vC a
reading was a total function `Stake → M`, so a stake a reader never saw was,
by type, a stake read at zero — exclusion — and every finite reader was
`Partial` toward almost everything. The prose never said that; the prose has
*reach* (a job of "mine" that is kept), "inclusion is the default," and "zero
no one" for the stakes in view. vD factors a reading into what the prose
always had:

  * an ESTIMATE per stake — absent (not in view), or a set of candidate sizes
    (sharp when it is one size; wide when the reader is dim); this is the
    correspondence term, reach and accuracy together;
  * a WEIGHTING per stake — what the reader does with the estimate; this is
    the hand, and partiality lives here and only here.

With that, four things the prose asserts become theorems that vC could not
state: an unseen stake cannot be excluded (§5); a reader who is honest about
what it sees and keeps its hand open is loving however little it sees — the
grandmother, the bacterium, "dimness is a limit, never a fault" (§4); reading
two equal stakes at different sharpness, honestly, is not partiality — the
future at its expected size (§3b, "the two discounts"); and a per-stake form,
`LovingToward`, so that "this reader loves this one" is typeable (§4a).

vE, 10-14-26 afternoon, at John's "loving things that constitute your thick
self will likely be felt by you as love" and "its hard to love yourself
directly because of almost the paradox of the lean": §4b types the three
senses of *The Candle* §6 — HELD (every stake at size, in the context, no
reader needed), SEEN (a reader loving toward a stake), FELT (a reader loving
toward a stake whose holder is a constituent of the reader's self) — with a
`Reader` as a vantage plus a self that is a context with an outside. Proved:
felt implies seen implies held; the whole feels nothing, because a self must
have an outside and Totality has none (`no_total_self`); feeling for a
constituent is not partiality (`felt_not_partial`) — reach, not weight; and
partiality's mechanism, `LeansToward`, constituency read as weight, is
partiality (`leans_is_partial`), with "mine only" its special case. The
self-love paradox is stated as a remark on the invariance test, not a
theorem: the test needs two positions, and a reader supplies one.

vF, 10-14-26 late evening, at John's "Y" to *What Meaning Is* §1 (meaning,
in the sense of mattering, is the stake definition pointed at the reader:
what rides on you). Three additions, no new primitive. §3c generalizes the
discount theorem: for ANY reason a reader might give for a discount —
lateness, kind, distance in scale, being oneself — the reason appears in the
hypotheses and nowhere in the proof (`discount_for_reason_is_partial`); the
scale discount of the paper's §3 and the self-abnegation of its §1 are
instances. §5a types the reflexive stake: `Meaning D x` is the sheet of
stakes riding on `x`, with dependency `D` a parameter like the carriers; it
takes no Position, so mattering is position-free by construction, and every
stake on it is held (`meaning_held`). Reading oneself at nothing is partiality
(`self_zero_is_partial`) and, if it reaches exclusion, a correspondence
failure (`self_excluded_not_correspondent`); not seeing one's own stake is a
limit and not exclusion (`own_unseen_not_excluded`). §5b types reach as a
second parameter and purpose as the reach-restricted sheet: sizes are
unchanged (`purpose_sizes_unchanged`) and a stake out of reach is not thereby
excluded (`out_of_reach_not_excluded`) — the reach hypothesis does not enter
the proof, which is the point. A bond is two things each of which has a stake
riding on the other, and it is symmetric (`bond_symm`): meaning and purpose
are the two ends of one edge. Narrative (the paper's §4) is not formalized;
constituency over time is not in the file.

vG, Thursday 10-15-26 morning, at John's "every belief is true...but the
believer often has the wrong conception of what question is being answered"
and his "i dont think there are two types - look carefully." §2a adds the
FILING term the file had compressed away. Through vF an estimate arrived
already paired with its stake (`est : Stake → Option Estimate`), so the
file could say an estimate was dishonest but could not say WHY — and could
not state the field's commonest error at all: a true account filed under
the wrong question. vG separates an ACCOUNT (candidate sizes, together with
the stake they are in fact an account of — what reached the reader, link 6)
from its FILING (which stake the reader holds the account as an account
of). Proved: with every account true of its source, a well-filed reading is
honest (`well_filed_honest`); and every dishonesty in the estimate is a
mis-filing (`dishonest_is_misfiled`) — truth lives on the question side.
`LeansToward` is restated as the same shape in the hand: the bell (a true
account of constituency) filed as size (`leans_is_bell_as_size`). That
every account is true of its source is link 6 in prose and is a declared
hypothesis here, not a theorem. The toy gains a mis-filer: a true account of
thing 0's stake, filed to the stranger's. Compiles clean under Lean 4.35.0
with `lean CT.lean`; no Mathlib required.

vH, Tuesday 10-27-26 afternoon, at John's rulings on the three papers of the
morning (*The Stopping Point* vC; *A Mind at the Top* vB; *Nothing Was
Dialed* vC) and his "can we just test what changed?" §11a adds fourteen
theorems and no new carrier. (1) `Partial` depends only on the reading, so
a time coordinate on `Position` (`Clock`) can never enter it except through
the hand — proved by `Iff.rfl`, which is the finding: position was never in
the predicate. (2) The inquiry's own stake is an ordinary `Stake`, held by
`rfl`, on the sheet by `trivial`. (3) Over-thinking and under-thinking are
both `Excludes` — `one_wall_two_directions` is `Iff.rfl`; the file cannot
tell them apart except by which stake is excluded, which is what "one error
with the sign flipped" means — and the limit side of stopping is
`unseen_not_excluded`. The stopping condition itself needs an order on `M`
and is recorded as a definition under a declared order with no theorem on
it: the form, not the number, exactly as the prose says. (4) The lemma of
*A Mind at the Top* §6 typed: `WieldsFrom C x y := C x ∧ ¬ C y`, so
`totality_wields_nothing` is one line from `trivial` — as cheap as the four
words, which is what "derived in one move from the second word" means —
and a self has something to wield on. `SetsFrom` has the same shape;
`Bounded := HasOutside`, so `totality_unbounded` is `totality_has_no_outside`
renamed, with nothing said about cardinality. Not typed: wielding in the
second sense (the spot where a reading becomes an act), which still needs a
type of actions (Report §3.6); the loss proof (a lossless representation of X
is X), which needs a resolution order and is owed. Compiles clean under Lean
4.35.0; the one classical dependency (`unique_no_outside`) is unchanged.

vI, Tuesday 10-27-26 night, at an outside reader's counterexample (checked
in Lean before anything changed) and John's two rulings. The case: a reader
sharp everywhere, hand open on every stake of one size and zeroing every
stake of another. vD's `Partial` was asymmetry across EQUAL sizes, so this
reader was not partial — and was `Loving` — while excluding a whole class of
stakes it saw at size. John: "zero no one isn't right and never was. it's...
correspondence. that's all it is... ever." The weighting is a size claim
(link 5), so the only hand with no reason but size is the one that reports
the size; any other hand, uniform or not, is partiality. And on what the hand
is tested against: "how could a stake 'turn out to be' different from the
reader's appraisal?" — the hand is tested on the sizes the estimate admits,
not on sizes this reader is not holding. So: `OpenHandAt` is identity on
admitted sizes; `PartialAt` is the closed hand on a stake in view; `Partial`
is the hand not open somewhere in view; `Loving` is a vantage with the hand
open on everything in view (the subtraction stated positively, so that
every theorem about love is constructive). The equal-sizes form, the two discounts,
leaning, "mine only" and exclusion are all sufficient tests for partiality
now (theorems), not its definition; a uniform discount is partial
(`uniform_discount_is_partial`), which vD could not say; exclusion with an
honest estimate is partiality (`excludes_is_partial`) — "zero no one" was its
loudest instance, never a separate rule. `LimitOnly` is restated with the
open hand. The toy gains Z, the size-class excluder: vantage, honest,
excludes, partial, not loving; and the old equal-sizes mirror run on Z finds
nothing. One theorem is classical and says so: `not_partial_loving`
(¬¬open ⇒ open). The dimness side is untouched: an unseen stake admits
nothing, so the hand is vacuously open there; the grandmother and the
bacterium are loving as before. Compiles clean under Lean 4.35.0.

vJ, Tuesday 11-3-26, afternoon, at John's "ok - let's do the lean run on
stakes": the run owed by *What a Stake Is Made Of* (10.29.26) vC §9. §12a
adds, beside `Stake` and altering nothing above it: a `Filer` — a state held
as of something, guided by it, able to be wrong about it; the floor of
thinking as one predicate (the thermostat files; the rock does not); an
`Edge` — holder, what it rides on, size: `Stake` with the dependency in the
type, so that `Stake` is recovered by forgetting `on` and §5a's parameter `D`
is derived from a set of edges rather than supplied; a `Region` — a set of
steps, the region of a step defined by FOLLOWING a declared dependency
relation rather than by collection — run in its own section and then as a
frame with `M := Region Step`: inclusion is a partial order, it arises from
the dependencies exactly where a sub-dependency rides inside another
(`hangsOn_sub_of_mem`), it is not total, it drops degree, and it does not
pick a direction of choice (`inclusion_underdetermines`); with the region as
`M` every theorem in the file still holds and the second hinge is the same
`rfl` (`region_held`); a `Direction` at the floor — a preference is a stake,
and reading another's stake down for crossing my direction is partiality by
the one discount theorem (`direction_as_weight_is_partial`); and an `ActOn`
— an act on a stake in reach adds nothing to partiality or to size. What the
run does not do: it does not make the one declared definition a theorem.
`Stake` can now be built from an account of filing and dependency instead of
standing alone, and the pieces are each checkable for what they say; the
definition moved to `Filer.Files` and `hangsOn`, where a critic should now
read. Compiles clean under Lean 4.35.0. The three toy theorems inherit
`propext` from the `Toy` frame's `Fin 3` numerals, as the vD–vI toy theorems
do; `sub_antisymm` and `region_forgets_degree` use extensionality; the rest
of the run needs no axioms.

vK, Wednesday 11-4-26, at John's "totally agree - you can change it
accordingly": THE SIXTH NARROWING, found by an outside reader. `Filer.Files`
was handed blind to three model sessions with one instruction — break it in
either direction with a case built as a `Filer` and compiled. Verity GPT built
a hinged sign with a latch: the printed line can be right or wrong about the
room (`IsAccount`), the latch decides whether the sign stays or falls
(`Guided`), and the two never touch — two states that say the same thing about
the room in every world do different things. It compiled against vJ as sent,
and a sign does not think. So `Files` was too wide at exactly the second
declared weak point of the 11-3 run note: the dependence of the next step on
the state did not have to run through the state's fit. vK adds the clause the
case dictates: READ OFF THE ACCOUNT — states with the same fit profile have
the same next step (`ReadOff`); `Files := IsAccount ∧ Guided ∧ ReadOff`. The
sign fails it by its author's own second theorem (`hingedSign_not_files`); the
thermostat, Grok's vending machine and the rebuilt contemplator pass, because
for them the state is the claim (`readOff_of_fits_eq`); the rock fails as
before. Grok's contemplator — a thinker whose held thought changes nothing,
not even its next thought — does not file and should not: a snapshot is not
thinking; with the next step read as the next thought it files, and the
`Filer` docstring now says that `Step` may be the filer's own next state. Not
closed by this run and declared: the first weak point, aboutness — a system
whose one variable both tracks something and drives its dynamics (a rock that
cracks when hot) passes even the tightened clause; that needs the holder's own
direction (§12a (4)) folded into the filing line, and is owed. Compiles clean
under Lean 4.35.0; no new axiom; the outside readers' cases are in §12a (6)
with credit.

vL, Wednesday 11-4-26, at John's "direction seems right - you can build": THE
DIRECTION RUN, at the first declared weak point. The hot rock — one variable
that tracks the room's heat and drives whether it cracks — passed every clause
of vK (`hotRock_files_vK`), and nobody says a rock thinks. The run set out to
fold the holder's own direction into the filing line, as "misfit runs against
what the holder moves toward," and found first, by a finite search kept beside
the file, that a target cannot do it: any dynamics settles somewhere, its
settling set can be declared its target, and the rock then "moves toward"
cracking-when-warm exactly as the thermostat moves toward the set point. What
separates them is not where the step goes but whether the step CONNECTS the
state with the thing at all. `Filer` gains one field, `act` — what a step does
to the state held and to the thing — and `Files` gains a fourth clause,
ENGAGED: either what the step does to the thing depends on what is held, or
what comes to be held depends on the thing. The thermostat heats the room by
its strip; the vending machine takes the coins by its credit; the contemplator
re-reads the claim and its thought changes by it. The rock's cracking touches
neither the room nor, by the room, its own state (`hotRock_room_untouched`,
`hotRock_state_blind`): it is not engaged, and it does not file. "Direction"
survives as what an engaged step does — toward the set point, toward fit — and
is not itself the clause. What is still declared, and said so: `fits` and
`about`; the file now checks that the declared aboutness is backed by a step
that meets the thing, and does not check what the state is of in the world.
Nothing above §12a (1) is altered; every vK theorem holds with the same proof,
except that the three `Files` proofs gain their fourth conjunct and one
negative proof's projection is renumbered. Compiles clean; no new axiom.

vM, Wednesday 11-4-26, afternoon, at John's "y" to the proposal that followed
his "again, aren't we saying: if you stop thinking...you're no longer doing
ethics." THE WEIGHTING AS A FILING, §12b. The weighting clause of 10-20 — a
weighting is a claim about the stake weighted, and its reason has to be
about the dependencies — had stood on the status card as a ruling beside the
inversion, so that the lab result rested on two rulings. John's sentence
makes it one: inside thinking, what a reader does with a stake is a filing,
and a filing is a claim about what it is filed as of; a weighting that is
not a claim is not a thinking step and is not in the conversation. §12b
writes the first half down. `handOf v s` is a reader's hand on a stake taken
as a `Filer` — the state is the size the hand reports, the ways are the
stake's sizes, the state fits when the report is the size, the step is to
act on the report. It is an account (`hand_is_account`: link 5 as a theorem,
not a remark on the type), guided, and read off; it files whenever its
acting is real (`hand_files`, with engagement as the hypothesis reach
supplies, since the base frame has no reach). The open hand is the fitting
state (`open_hand_fits`); a closed hand is a misfit (`closed_hand_misfits`):
partiality is a wrong claim, not a broken rule — "false, not forbidden" as a
filing fact. And the dilemma gets its first horn as a theorem: a reason that
tracks size never yields a discount (`size_reason_no_discount`), so it can
only be a correct reading of a smaller stake; the second horn was already
`discount_for_reason_is_partial`. All five are parametric in `F` and need no
axioms. The toy: the discounter's hand on the stranger's stake reports 1 at
2 and misfits; the sun's fits. Nothing above §12b is altered. What is not
here, and said so: that a weighting IS a filing is the inversion, ruled
10-29, not a theorem of this file; the file shows that, taken as one, the
hand has every property the filing line asks and that the two horns follow.

vN, the same afternoon, at John's "y" to writing the subtraction test for the
hand out as a theorem rather than leaving it to the rock's version. Two
theorems, no new definition of substance: `always_fits_not_account` — a filer
whose state fits every way is not an account, for any filer — and
`blind_hand_not_account` — a "weighting" that cannot be wrong about the stake,
one that fits every size, is not a claim about it. That is the test the
inversion is checked by, in the file: subtract the hand's being about the
stake and nothing that could be called a weighting remains. The file still
does not prove that a real weighting IS a filing; it shows that whatever is
not one is not a weighting either. Both theorems need no axioms.

vO, Thursday 11-5-26, at John's "if you feel read to dupe/revise the lean -
go for it." THE RESTATEMENT OWED SINCE vM, §12c. The weighting clause's
second half says a weighting's reason has to be ABOUT THE DEPENDENCIES; §12b
represented that as "tracks size" — the same verdict for any two stakes of
one size — because in the base frame `M` is a bare type and size is the only
handle on the dependencies there. §12a (3) built the frame in which the size
IS the dependencies: `M := Region Step`, a stake's magnitude the set of steps
hanging on its edge. §12c says "about the dependencies" there, as a reason
that is a function of what hangs on the edge, and checks that it is the same
hypothesis. `AboutTheDependencies P` — the reason's verdict is a function of
the stake's magnitude and nothing else — implies "tracks size"
(`about_deps_tracks_size`), so the first horn restates
(`about_deps_no_discount`); in the region frame a reason given on regions is
about the dependencies by definition (`ofRegion_about_deps`), and on an edge
built from a step it is literally `Q (hangsOn Dep a)` (`ofRegion_edge`, by
`rfl`); a reason about WHO holds the edge is not about the dependencies as
soon as two holders can share a region (`holder_reason_not_about_deps`). And
the dilemma is stated as one theorem (`discount_dilemma`): any discount a
reason yields shows the reason is not about the dependencies AND the reader
is partial — the two horns as two conjuncts, and what is excluded, a reason
that both yields a discount and is about the dependencies, excluded by the
one statement. The restatement inherits the region's declared loss
(`region_forgets_degree`): a reason about HOW MUCH things go differently is
not a function of the region, and the file does not pretend otherwise.
Nothing above §12c is altered; no new carrier; all nine new theorems,
the two toy instances included, depend on no axioms. (The prover said no
to nothing; the one correction was Verity's own — a first draft of
`about_deps_tracks_size` used `rw` on an iff, which quietly imports
`propext`, and was rewritten as a term so the chain stays axiom-free.)

WHAT THIS IS. A declared, bounded idealization (World Enough and Time §5) of
the lab half of Connection Theology: the four words, context vs. thing, the
two hinges, stake and sheet, estimate and weighting, partiality, the love
equation, exclusion, the four-cell table, the position-invariance test, the
two kinds of wrong, and the dark-box distinction between what love is *of*
and love itself.

WHAT IT IS NOT. It does not check correspondence to the world (the field
half), the aptness of the ruled definition, or whether "love" is the right
word. It is a verifier with no position: it can tell us whether the lab half
is internally what we say it is, and nothing more.

THE COMPRESSION RISK, declared. Every `def` and `structure` below is a choice
a type theory forced. Each is a place where a wall could be built and called
CT. The inventory (`#print axioms`) says exactly where content enters. Read
the definitions as the sheet; if one of them is not what CT means, that is the
finding. vA, vB, vC and vD have each found one; vI found one by being read.

DESIGN. Nothing is assumed about the world. The carriers (things, magnitudes,
positions) are parameters of a `Frame`, so the whole development is
axiom-free beyond Lean's core logic, and a tiny concrete frame at the end
shows the definitions are satisfiable and that the distinctions are real.
-/

namespace CT

/-- The carriers. `M` (magnitudes) has one distinguished element, `zero`, and
    NO order and NO addition: "counting, not quantity" made literal. The lab
    half needs to tell zero from nonzero and nothing else; anything that sums
    or ranks stakes is field, and is not here. -/
structure Frame where
  Thing    : Type
  M        : Type
  zero     : M
  Position : Type
  self     : Position → Thing

variable (F : Frame)

/-! ## 0. Contexts and the four words -/

/-- A context is a way of taking things together: a predicate on things.
    A context is NOT a `Thing`; it lives one type-level up. -/
def Context : Type := F.Thing → Prop

/-- Totality: the context with every thing in it. -/
def Totality : Context F := fun _ => True

/-- THE FOUR WORDS. "Totality has no outside." Proved by `trivial`: a
    tautology, and Lean confirms it carries no content. -/
theorem no_outside : ∀ x : F.Thing, Totality F x := fun _ => trivial

/-- A context has an outside iff some thing is not in it. -/
def HasOutside (C : Context F) : Prop := ∃ x : F.Thing, ¬ C x

theorem totality_has_no_outside : ¬ HasOutside F (Totality F) := by
  intro ⟨_, hx⟩
  exact hx trivial

/-- "No outside" is the differentia: the only context without an outside is
    Totality. (Uses propositional and functional extensionality, both core.) -/
theorem unique_no_outside (C : Context F) (h : ¬ HasOutside F C) : C = Totality F := by
  funext x
  apply propext
  constructor
  · intro _; trivial
  · intro _
    by_cases hx : C x
    · exact hx
    · exact absurd ⟨x, hx⟩ h

/-- Two jaws: any context that is not Totality has an outside. -/
theorem not_totality_has_outside (C : Context F) (h : C ≠ Totality F) : HasOutside F C := by
  by_cases ho : HasOutside F C
  · exact ho
  · exact absurd (unique_no_outside F C ho) h

/-- A self, under *The Connected Self*: a context with an outside. -/
def IsSelf (C : Context F) : Prop := HasOutside F C

/-- "A self is a context with an outside; God is the context without one." -/
theorem self_is_not_totality (C : Context F) (h : IsSelf F C) : C ≠ Totality F := by
  intro heq
  subst heq
  exact totality_has_no_outside F h

/-! ## 1. Stakes and the sheet -/

/-- A stake: something that depends, held by a thing, at a size.
    THE SECOND HINGE IS IN THE TYPE: `magnitude` is a field of the stake and
    takes no `Position`. Position-invariant by construction; no reading can
    change it, only misreport it. -/
structure Stake where
  holder    : F.Thing
  magnitude : F.M

/-- A sheet: a selection of stakes. -/
def Sheet : Type := Stake F → Prop

/-- The whole sheet: inclusion is the default. -/
def WholeSheet : Sheet F := fun _ => True

/-- A wall: a sheet with a stake left off. (First hinge: exclusion is the move.) -/
def IsWall (S : Sheet F) : Prop := ∃ s : Stake F, ¬ S s

theorem whole_sheet_not_wall : ¬ IsWall F (WholeSheet F) := by
  intro ⟨_, hs⟩
  exact hs trivial

/-! ## 2. Readings: estimate and weighting

vD. A reading from a position is two things per stake.

The ESTIMATE is what the reader can see of the stake's size: nothing (the
stake is not in view — dimness as reach), or a set of candidate sizes (one
size when the view is sharp; several when it is dim — dimness as accuracy).
An estimate is HONEST when the true size is among the candidates. The estimate
is the correspondence term.

The WEIGHTING is what the reader does with a candidate size when it acts or
judges: the identity when the hand is open; anything else when it is not.
The weighting is the partiality term. LINK 5 IS STILL IN THE TYPE: the
weighting returns an `M`, so it is by type a claim about the stake's size.

A reading carries its position: there is no `Reading` without a `Position`.
The view from nowhere is not false here; it is untypeable. -/

/-- A set of candidate sizes, as a decidable predicate on `M`. -/
abbrev Estimate : Type := F.M → Bool

structure Reading (_p : F.Position) where
  est : Stake F → Option (Estimate F)
  wt  : Stake F → F.M → F.M

/-- The stake is in view: the reader has some estimate of it. -/
def InView {p : F.Position} (r : Reading F p) (s : Stake F) : Prop := r.est s ≠ none

/-- Not in view. This is the third value vC lacked: not at size, not at zero,
    simply not on this reader's sheet. -/
def Unseen {p : F.Position} (r : Reading F p) (s : Stake F) : Prop := r.est s = none

/-- The estimate of `s` admits the size `m`. -/
def Admits {p : F.Position} (r : Reading F p) (s : Stake F) (m : F.M) : Prop :=
  ∃ E : Estimate F, r.est s = some E ∧ E m = true

/-- Honest at a stake: if the stake is in view, the true size is among the
    candidates. (Says nothing about stakes not in view.) -/
def HonestAt {p : F.Position} (r : Reading F p) (s : Stake F) : Prop :=
  ∀ E : Estimate F, r.est s = some E → E s.magnitude = true

/-- Honest: honest at every stake in view. -/
def Honest {p : F.Position} (r : Reading F p) : Prop := ∀ s, HonestAt F r s

/-- Sharp at a stake, at a size: the estimate is exactly that one size. -/
def SharpAt {p : F.Position} (r : Reading F p) (s : Stake F) (m : F.M) : Prop :=
  ∃ E : Estimate F, r.est s = some E ∧ ∀ x, E x = true ↔ x = m

/-- The hand is open at a stake: the weighting is the identity on every size
    the estimate admits for it. vI (10-27 night, ruled): the hand is tested on
    what the reader actually considers — John: "how could a stake 'turn out to
    be' different from the reader's appraisal?" A size the estimate does not
    admit is a size this reader is not holding; what the hand "would do" with
    it is a question about a different reading. On an unseen stake the
    condition is vacuous: nothing is admitted, so nothing is weighed. -/
def OpenHandAt {p : F.Position} (r : Reading F p) (s : Stake F) : Prop :=
  ∀ m, Admits F r s m → r.wt s m = m

/-- The hand is open everywhere. -/
def OpenHand {p : F.Position} (r : Reading F p) : Prop := ∀ s, OpenHandAt F r s

/-- Full correspondence: every stake in view, sharp at its size, hand open.
    The limit; a sun's view of the room. -/
def Correspondent {p : F.Position} (r : Reading F p) : Prop :=
  (∀ s, SharpAt F r s s.magnitude) ∧ OpenHand F r

/-- Vantage = position + reading. -/
structure Vantage where
  pos  : F.Position
  read : Reading F pos

/-! ### 2a. Accounts and filing (The Wrong Question; vG)

An ESTIMATE in §2 arrives already paired with its stake. That pairing is
where the field's commonest error lives, and the type had assumed it away.
Separate the two. An `Account` is what reached the reader: a set of
candidate sizes together with the stake it is in fact an account of. A
`Filing` is what the reader does with accounts: which stake it holds each
account as an account of. The induced reading's estimate at `s` is the
sizes of whatever account was filed to `s`.

The hypothesis the prose carries at link 6 — the account is made of what
reached the part, so it is true of its source — is DECLARED here as
`TrueOfSource`, not proved: the file cannot say what reached anyone. What
the file can then show is that, under it, the only way an estimate goes
wrong is the filing. -/

/-- An account: candidate sizes, and the stake they are in fact of. -/
structure Account where
  about : Stake F
  sizes : Estimate F

/-- The account is true of what it is of: the source's size is among its candidates. -/
def TrueOfSource (a : Account F) : Prop := a.sizes a.about.magnitude = true

/-- A filing from a position: the account held as an account of each stake, if any. -/
structure Filing (_p : F.Position) where
  file : Stake F → Option (Account F)

/-- Well filed at `s`: whatever is filed to `s` is in fact about `s`. -/
def WellFiledAt {p : F.Position} (f : Filing F p) (s : Stake F) : Prop :=
  ∀ a : Account F, f.file s = some a → a.about = s

/-- Mis-filed at `s`: something is filed to `s` that is about another stake. -/
def MisfiledAt {p : F.Position} (f : Filing F p) (s : Stake F) : Prop :=
  ∃ a : Account F, f.file s = some a ∧ a.about ≠ s

/-- The reading a filing induces, with any weighting. The estimate at `s` is
    the sizes of the account filed to `s`. -/
def Filing.toReading {p : F.Position} (f : Filing F p) (wt : Stake F → F.M → F.M) : Reading F p :=
  ⟨fun s => (f.file s).map Account.sizes, wt⟩

/-- TRUE OF SOURCE + WELL FILED ⇒ HONEST. If every account is true of what it
    is of, and the filing at `s` is right, the induced estimate at `s` is honest. -/
theorem well_filed_honest {p : F.Position} (f : Filing F p) (wt : Stake F → F.M → F.M)
    (hT : ∀ a : Account F, TrueOfSource F a) (s : Stake F) (hW : WellFiledAt F f s) :
    HonestAt F (Filing.toReading F f wt) s := by
  intro E hE
  change (f.file s).map Account.sizes = some E at hE
  cases hf : f.file s with
  | none => rw [hf] at hE; cases hE
  | some a =>
    rw [hf] at hE
    have hEa : E = a.sizes := (Option.some.inj hE).symm
    have hab : a.about = s := hW a hf
    subst hEa
    have := hT a
    unfold TrueOfSource at this
    rw [hab] at this
    exact this

/-- Not in view is not mis-filed: an empty filing at `s` is well filed. -/
theorem unfiled_well_filed {p : F.Position} (f : Filing F p) (s : Stake F)
    (h : f.file s = none) : WellFiledAt F f s := by
  intro a ha
  rw [h] at ha
  cases ha

/-- TRUTH LIVES ON THE QUESTION SIDE. If every account is true of its source,
    then any dishonesty in the induced estimate at `s` is a mis-filing at `s`.
    There is no third thing an estimate can be wrong about. -/
theorem dishonest_is_misfiled [DecidableEq (Stake F)] {p : F.Position} (f : Filing F p)
    (wt : Stake F → F.M → F.M)
    (hT : ∀ a : Account F, TrueOfSource F a) (s : Stake F)
    (hD : ¬ HonestAt F (Filing.toReading F f wt) s) : MisfiledAt F f s := by
  -- Constructive given decidable equality on stakes (the one case split the
  -- argument needs); no classical axiom enters.
  cases hf : f.file s with
  | none =>
    exact absurd (well_filed_honest F f wt hT s (unfiled_well_filed F f s hf)) hD
  | some a =>
    by_cases hab : a.about = s
    · exact absurd (well_filed_honest F f wt hT s (fun b hb => by
        rw [hf] at hb; rw [← Option.some.inj hb]; exact hab)) hD
    · exact ⟨a, hf, hab⟩

/-! ## 3. Partiality

Partiality is position read as weight: favoring any stake for a reason other
than its size (ruled 10-13 night). vD typed it as a fact about the WEIGHTING
alone — two stakes of equal magnitude, both in view, treated differently —
and that was a compression: it caught unequal treatment of equals and missed
a hand that misreports every size the same way. An outside reader's case
(10-27 night, checked in Lean): zero every stake of one size, keep every
other; symmetric across equals, so not `Partial`, yet excluding a whole
class of acknowledged stakes — and `Loving`. John's ruling: "zero no one
isn't right and never was. it's... correspondence. that's all it is... ever."
The weighting is a size claim (link 5); the only hand with no reason but
size is the one that reports the size. So vI: PARTIALITY IS THE HAND NOT
OPEN SOMEWHERE IN VIEW — any failure of the weighting to report an admitted
size, uniform or not. The equal-sizes test, the discounts, leaning, and
exclusion are sufficient tests for it (theorems below), no longer its
definition. The estimate still does not enter: a reader who sees one stake
sharply and an equal one dimly, honestly, is not partial; a reader who sees
nothing of a stake is not partial toward it. -/

/-- Partial at a stake: in view, and the hand not open there. -/
def PartialAt (v : Vantage F) (s : Stake F) : Prop :=
  InView F v.read s ∧ ¬ OpenHandAt F v.read s

/-- Partial: the hand is not open on everything in view. Stated as the
    negation of the open hand so that every sufficient test below is
    constructive; `PartialAt` is its witnessed form. -/
def Partial (v : Vantage F) : Prop := ¬ OpenHand F v.read

theorem partial_at_is_partial (v : Vantage F) (s : Stake F) (h : PartialAt F v s) : Partial F v :=
  fun ho => h.2 (ho s)

/-- A closed hand on one admitted size is partiality: the witness form. -/
theorem closed_hand_is_partial (v : Vantage F) (s : Stake F) (m : F.M)
    (hsv : InView F v.read s) (hadm : Admits F v.read s m) (hne : v.read.wt s m ≠ m) :
    Partial F v :=
  partial_at_is_partial F v s ⟨hsv, fun ho => hne (ho m hadm)⟩

/-- THE OLD DEFINITION IS NOW A TEST. Two equal stakes in view, a size both
    estimates admit, weighted differently: partial. Sufficient, not
    equivalent — a uniform discount passes this test and is partial. -/
theorem equal_sizes_partial (v : Vantage F) (s t : Stake F)
    (_hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (m : F.M) (hs : Admits F v.read s m) (ht : Admits F v.read t m)
    (hne : v.read.wt s m ≠ v.read.wt t m) : Partial F v := by
  intro ho
  apply hne
  rw [ho s m hs, ho t m ht]

/-- A UNIFORM DISCOUNT IS PARTIAL. A hand that applies the same distortion to
    every stake misreports every size; doing it to everyone does not make it
    faithful. Any one in-view stake, at any admitted size, witnesses it. -/
theorem uniform_discount_is_partial (v : Vantage F)
    (f : F.M → F.M) (hf : ∀ s m, v.read.wt s m = f m)
    (s : Stake F) (m : F.M) (hsv : InView F v.read s) (hadm : Admits F v.read s m)
    (hne : f m ≠ m) : Partial F v :=
  closed_hand_is_partial F v s m hsv hadm (by rw [hf]; exact hne)

/-- The vC form — my own stake vs. another's — is a special case (a test). -/
def PartialTowardSelf (v : Vantage F) : Prop :=
  ∃ s t : Stake F,
    s.magnitude = t.magnitude ∧
    s.holder = F.self v.pos ∧ t.holder ≠ F.self v.pos ∧
    InView F v.read s ∧ InView F v.read t ∧
    ∃ m : F.M, Admits F v.read s m ∧ Admits F v.read t m ∧ v.read.wt s m ≠ v.read.wt t m

theorem partial_toward_self_is_partial (v : Vantage F) (h : PartialTowardSelf F v) : Partial F v := by
  obtain ⟨s, t, hm, _, _, hs, ht, m, has, hat, hne⟩ := h
  exact equal_sizes_partial F v s t hm hs ht m has hat hne

/-- An open hand is never partial. Partiality is in the weighting and
    nowhere else. -/
theorem open_hand_not_partial (v : Vantage F) (h : OpenHand F v.read) : ¬ Partial F v :=
  fun hp => hp h

/-- Partiality is a correspondence failure (full correspondence has an open hand). -/
theorem partial_not_correspondent (v : Vantage F) (h : Partial F v) :
    ¬ Correspondent F v.read :=
  fun hc => open_hand_not_partial F v hc.2 h

/-! ### 3a. The floor: a vantage answers to something

John (10-13 night): "partiality has to be read in conjunction with
correspondence - which is what mind is." A vantage must see at least one real
stake truly: in view, sharp at its size, hand open there. The height of the
floor is for ruling; the minimum is enough for §4. -/

def IsVantage (v : Vantage F) : Prop :=
  ∃ s : Stake F, s.magnitude ≠ F.zero ∧ SharpAt F v.read s s.magnitude ∧ OpenHandAt F v.read s

theorem correspondent_is_vantage (v : Vantage F) (h : Correspondent F v.read)
    (hs : ∃ s : Stake F, s.magnitude ≠ F.zero) : IsVantage F v := by
  obtain ⟨s, hz⟩ := hs
  exact ⟨s, hz, h.1 s, h.2 s⟩

/-! ### 3b. The two discounts (The Candle §9)

Two stakes of the same size. The reader sees one sharply (a present stake)
and the other only within a range (a future stake, at its expected size).
If the hand is open on both, this is NOT partiality: the difference is in the
estimate, which is the correspondence term, and both estimates are honest.
Futureness enters at correspondence, not at size (John, 10-14).

If instead the reader applies a weighting to the future stake that it does
not apply to the present one — pure time preference — that IS partiality,
whatever number it produces: the hand around the calendar. -/

/-- Uncertainty is not partiality. Two equal stakes in view, one sharp, one
    wide, hand open on both: not partial at either. -/
theorem uncertainty_not_partial (v : Vantage F) (s t : Stake F)
    (_hm : s.magnitude = t.magnitude)
    (_hs : SharpAt F v.read s s.magnitude)
    (_ht : HonestAt F v.read t) (_htv : InView F v.read t)
    (ho : OpenHand F v.read) :
    ¬ PartialAt F v s ∧ ¬ PartialAt F v t :=
  -- The estimates (sharp on s, merely honest and wide on t) do not enter the
  -- proof at all: that is the point. Partiality is a fact about the hand.
  ⟨fun h => h.2 (ho s), fun h => h.2 (ho t)⟩

/-- A discount for lateness is partiality. Two equal stakes in view; the
    hand open on one and closed on the other at some size: partial. -/
theorem discount_is_partial (v : Vantage F) (s t : Stake F)
    (_hm : s.magnitude = t.magnitude)
    (_hsv : InView F v.read s) (htv : InView F v.read t)
    (_hs : OpenHandAt F v.read s)
    (m : F.M) (hadm : Admits F v.read t m) (hdisc : v.read.wt t m ≠ m) :
    Partial F v :=
  -- vI: the open hand on `s` no longer does any work; the closed hand on `t`
  -- is partiality by itself. Kept in the statement so the discount keeps its
  -- shape — one stake read at size, the other not.
  closed_hand_is_partial F v t m htv hadm hdisc

/-! ### 3c. The index never enters (What Meaning Is §3; vF)

`discount_is_partial` was stated for lateness. The paper asks for a third
instance — distance in scale, "does any of it matter given the size of the
universe" — and the honest way to add it is to notice that the proof above
never used the reason. State it once for any reason `P`: two equal stakes in
view, the hand open on the one without the reason and closed on the one with
it. `P` is in the hypotheses and nowhere in the proof. Lateness, kind, scale,
and being oneself are then four names for one act. -/

theorem discount_for_reason_is_partial (P : Stake F → Prop) (v : Vantage F) (s t : Stake F)
    (_hnot : ¬ P s) (_hyes : P t)
    (hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (hs : OpenHandAt F v.read s)
    (m : F.M) (hadm : Admits F v.read t m) (hdisc : v.read.wt t m ≠ m) :
    Partial F v :=
  discount_is_partial F v s t hm hsv htv hs m hadm hdisc

/-- The scale discount. `Far` is whatever frame the reader holds a stake
    against — the cosmos, the century, the crowd. Reading the far stake lower
    than an equal near one is partiality; the frame does not enter. -/
theorem discount_by_scale_is_partial (Far : Stake F → Prop) (v : Vantage F) (s t : Stake F)
    (hnear : ¬ Far s) (hfar : Far t)
    (hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (hs : OpenHandAt F v.read s)
    (m : F.M) (hadm : Admits F v.read t m) (hdisc : v.read.wt t m ≠ m) :
    Partial F v :=
  discount_for_reason_is_partial F Far v s t hnear hfar hm hsv htv hs m hadm hdisc

/-! ## 4. Love

love = vantage − partiality. A vantage is loving when it is a vantage (it
sees at least one real stake truly) and its hand is open across everything
it sees — whatever its reach, whatever its sharpness. vI states the
subtraction positively, as the open hand, so that every theorem about love
is constructive; `loving_not_partial` is the subtraction, and its converse
(`not_partial_loving`) is the one place the file needs classical logic,
flagged there. Perfect love is the limit: loving and fully correspondent.
Nothing here mentions feeling. -/

def Loving (v : Vantage F) : Prop := IsVantage F v ∧ OpenHand F v.read

def PerfectLove (v : Vantage F) : Prop := Loving F v ∧ Correspondent F v.read

theorem correspondent_loving (v : Vantage F) (h : Correspondent F v.read)
    (hs : ∃ s : Stake F, s.magnitude ≠ F.zero) : Loving F v :=
  ⟨correspondent_is_vantage F v h hs, h.2⟩

theorem correspondent_perfect (v : Vantage F) (h : Correspondent F v.read)
    (hs : ∃ s : Stake F, s.magnitude ≠ F.zero) : PerfectLove F v :=
  ⟨correspondent_loving F v h hs, h⟩

theorem loving_not_partial (v : Vantage F) (h : Loving F v) : ¬ Partial F v :=
  fun hp => hp h.2

/-- The equation's other direction — a vantage that is not partial is
    loving — needs ¬¬open ⇒ open, which is classical for an arbitrary `M`.
    Stated with that dependency in the open (see the inventory); nothing
    else in the file uses it. -/
theorem not_partial_loving (v : Vantage F) (hv : IsVantage F v) (hp : ¬ Partial F v) :
    Loving F v :=
  ⟨hv, Classical.byContradiction hp⟩

/-- THE GRANDMOTHER, THE BACTERIUM, THE CANDLE. A reader with an open hand
    that sees at least one real stake truly is loving — however few stakes it
    sees and however dimly it sees the rest. Nothing about reach or sharpness
    appears in the hypotheses. Dimness is a limit; it is never the fault. -/
theorem open_hand_loving (v : Vantage F) (hv : IsVantage F v) (ho : OpenHand F v.read) :
    Loving F v :=
  ⟨hv, ho⟩  -- vI: definitional. It was the content all along.

/-! ### 4a. Loving toward one

The per-stake form the prose uses constantly ("this reader loves this one")
and vC could not type. A vantage is loving toward `s` when it sees `s`
truly — in view, honest, hand open there. (vD also required "no equal stake
weighted differently"; under vI that is the same condition.) -/

def LovingToward (v : Vantage F) (s : Stake F) : Prop :=
  InView F v.read s ∧ HonestAt F v.read s ∧ OpenHandAt F v.read s

theorem loving_toward_not_partial_at (v : Vantage F) (s : Stake F) (h : LovingToward F v s) :
    ¬ PartialAt F v s :=
  fun hp => hp.2 h.2.2

/-- A loving vantage is loving toward every stake it sees honestly. (vI: the
    open hand there comes from love itself; vD had to assume it.) -/
theorem loving_toward_of_loving (v : Vantage F) (h : Loving F v) (s : Stake F)
    (hsv : InView F v.read s) (hh : HonestAt F v.read s) :
    LovingToward F v s :=
  ⟨hsv, hh, h.2 s⟩

/-- No one is loved by a reader who does not see them. (Held, yes — §10 —
    but not seen: the three senses of *The Candle* §6.) -/
theorem unseen_not_loved_toward (v : Vantage F) (s : Stake F) (h : Unseen F v.read s) :
    ¬ LovingToward F v s :=
  fun hl => hl.1 h

/-! ### 4b. Held, seen, felt (The Candle §6; vE)

A reader is a vantage together with its connected self: a context (a
predicate on things) that has an outside — *The Connected Self* — and that
contains the thing standing at the reader's position. The three senses:

  HELD  — the stake is at its size in the context. No reader. (§10 says this
          is `WhatLoveIsOf`; here it is named as a predicate on stakes.)
  SEEN  — some reader is loving toward the stake.
  FELT  — some reader is loving toward the stake, and the stake's holder is a
          constituent of that reader's self.

John's finding (10-14): feeling tracks constituency. A reading of a stake that
is part of what the reader is lands *at here* by construction. -/

structure Reader where
  v        : Vantage F
  selfCtx  : Context F
  hself    : IsSelf F selfCtx
  self_mem : selfCtx (F.self v.pos)

/-- The sheet at size: held, position-free. (Defined here, used in §10.) -/
def WhatLoveIsOf : Stake F → F.M := fun s => s.magnitude

/-- Held: at its size, in the context. Every stake is; no one is needed. -/
def Held (s : Stake F) : Prop := WhatLoveIsOf F s = s.magnitude

theorem all_held (s : Stake F) : Held F s := rfl

/-- Seen: this reader is loving toward the stake. -/
def Seen (r : Reader F) (s : Stake F) : Prop := LovingToward F r.v s

/-- Felt: seen, and the holder is a constituent of the reader's self. -/
def Felt (r : Reader F) (s : Stake F) : Prop := Seen F r s ∧ r.selfCtx s.holder

theorem felt_seen (r : Reader F) (s : Stake F) (h : Felt F r s) : Seen F r s := h.1

theorem seen_held (r : Reader F) (s : Stake F) (_ : Seen F r s) : Held F s := rfl

/-- THE WHOLE FEELS NOTHING. There is no reader whose self is Totality,
    because a self is a context with an outside and Totality has none. So
    `Felt` never has the context as its reader: the context holds every
    stake and feels none. "Held, not felt" as a typing fact. -/
theorem no_total_self : ¬ ∃ r : Reader F, r.selfCtx = Totality F := by
  intro ⟨r, hr⟩
  have h := r.hself
  rw [hr] at h
  exact totality_has_no_outside F h

/-- REACH, NOT WEIGHT. Feeling for a constituent is not partiality: a felt
    stake is, by definition, one the reader is loving toward, and loving
    toward excludes partiality at that stake. The bell may ring loudest for
    one's own; the hand can still be open there. -/
theorem felt_not_partial (r : Reader F) (s : Stake F) (h : Felt F r s) :
    ¬ PartialAt F r.v s :=
  loving_toward_not_partial_at F r.v s h.1

/-- A reader's own stakes are constituents: when seen, they are felt. -/
theorem own_seen_is_felt (r : Reader F) (s : Stake F)
    (hs : s.holder = F.self r.v.pos) (h : Seen F r s) : Felt F r s := by
  refine ⟨h, ?_⟩
  rw [hs]
  exact r.self_mem

/-! ### 4c. Partiality's mechanism (The Candle vF; vE)

Constituency read as weight. A reader leans along the boundary of its own
self: two stakes of equal size, both in view, one held by a constituent and
one not, weighted differently. This is a special case of `Partial` — and
"mine only" (`PartialTowardSelf`) is a special case of it, the self-context
shrunk to the one thing at the reader's position. The error of the whole
field half has one shape: the bell rings for constituents, and the hand
follows the bell. -/

def LeansToward (r : Reader F) : Prop :=
  ∃ s t : Stake F,
    s.magnitude = t.magnitude ∧
    r.selfCtx s.holder ∧ ¬ r.selfCtx t.holder ∧
    InView F r.v.read s ∧ InView F r.v.read t ∧
    ∃ m : F.M, Admits F r.v.read s m ∧ Admits F r.v.read t m ∧ r.v.read.wt s m ≠ r.v.read.wt t m

theorem leans_is_partial (r : Reader F) (h : LeansToward F r) : Partial F r.v := by
  obtain ⟨s, t, hm, _, _, hs, ht, m, has, hat, hne⟩ := h
  exact equal_sizes_partial F r.v s t hm hs ht m has hat hne

/-- THE BELL FILED AS SIZE (vG). `LeansToward` is the filing error in the hand.
    The bell — `r.selfCtx s.holder` — is a true account of constituency. Leaning is
    the weighting varying with the bell at fixed size: a true answer to "is this
    mine?" filed as an answer to "how large is it?". Stated as an equivalence so
    that no reading of `LeansToward` can mean anything else. -/
def BellAsSize (r : Reader F) : Prop :=
  ∃ s t : Stake F, s.magnitude = t.magnitude ∧
    (r.selfCtx s.holder ∧ ¬ r.selfCtx t.holder) ∧
    InView F r.v.read s ∧ InView F r.v.read t ∧
    ∃ m : F.M, Admits F r.v.read s m ∧ Admits F r.v.read t m ∧ r.v.read.wt s m ≠ r.v.read.wt t m

theorem leans_is_bell_as_size (r : Reader F) : LeansToward F r ↔ BellAsSize F r := by
  constructor
  · intro ⟨s, t, hm, hs, ht, hsv, htv, m, has, hat, hne⟩
    exact ⟨s, t, hm, ⟨hs, ht⟩, hsv, htv, m, has, hat, hne⟩
  · intro ⟨s, t, hm, ⟨hs, ht⟩, hsv, htv, m, has, hat, hne⟩
    exact ⟨s, t, hm, hs, ht, hsv, htv, m, has, hat, hne⟩

/-- "Mine only" is leaning with the self shrunk to the one at the position:
    if the reader's self-context is exactly {self}, partiality toward self is
    leaning toward the self-context. -/
theorem partial_toward_self_is_leaning (r : Reader F)
    (hexact : ∀ x, r.selfCtx x ↔ x = F.self r.v.pos)
    (h : PartialTowardSelf F r.v) : LeansToward F r := by
  obtain ⟨s, t, hm, hs_self, ht_self, hs, ht, m, has, hat, hne⟩ := h
  refine ⟨s, t, hm, (hexact _).2 hs_self, ?_, hs, ht, m, has, hat, hne⟩
  intro hc
  exact ht_self ((hexact _).1 hc)

/-! ### 4d. Remark: the self-love paradox is a fact about the test, not a theorem

John (10-14): "its hard to love yourself directly because of almost the
paradox of the lean." The position-invariance test (§7) compares two
readings from two positions on one stake. For the reader's own stake the
reader supplies one of them and cannot supply the other: there is no
position from which it reads itself as not-itself. The file does not prove
this unavailability — it is visible in the signature of `invariance_test`,
which takes `r : Reading F p` and `r' : Reading F q` — and it does not need
to. What the file does show is the way out. A self is a context with an
outside (`IsSelf`), so a second reader at another position is typeable, and
`LovingToward` from that position onto the first reader's stake is just
§4a's predicate with a different `v`. Being seen is the route to
self-correspondence that the whole, having no outside, does not have. -/

/-! ## 5. Zero is a number; exclusion is the move

Excluding a stake: a real stake, in view, every candidate size of which the
reader weights to zero. JOHN'S RULING (10-14) IS A THEOREM: an unseen stake
cannot be excluded, because exclusion is something done to a stake in view.
"If its unseen, how could it be known enough to zero?" -/

def Excludes (v : Vantage F) (s : Stake F) : Prop :=
  s.magnitude ≠ F.zero ∧
  ∃ E : Estimate F, v.read.est s = some E ∧ ∀ m, E m = true → v.read.wt s m = F.zero

theorem excludes_requires_view (v : Vantage F) (s : Stake F) (h : Excludes F v s) :
    InView F v.read s := by
  obtain ⟨_, E, hE, _⟩ := h
  intro hn
  rw [hE] at hn
  cases hn

theorem unseen_not_excluded (v : Vantage F) (s : Stake F) (h : Unseen F v.read s) :
    ¬ Excludes F v s :=
  fun he => excludes_requires_view F v s he h

/-- Exclusion of an honestly-estimated nonzero stake closes the hand there. -/
theorem excludes_closes_hand (v : Vantage F) (s : Stake F) (h : Excludes F v s)
    (hh : HonestAt F v.read s) : ¬ OpenHandAt F v.read s := by
  intro ho
  obtain ⟨hnz, E, hE, hz⟩ := h
  apply hnz
  have hadm : Admits F v.read s s.magnitude := ⟨E, hE, hh E hE⟩
  have := hz s.magnitude (hh E hE)
  rw [ho s.magnitude hadm] at this
  exact this

/-- EXCLUSION IS PARTIALITY (vI). With an honest estimate, zeroing a real stake
    in view is a closed hand, and a closed hand anywhere in view is partiality.
    "Zero no one" was never a separate rule; it was the loudest instance. -/
theorem excludes_is_partial (v : Vantage F) (s : Stake F) (h : Excludes F v s)
    (hh : HonestAt F v.read s) : Partial F v :=
  partial_at_is_partial F v s ⟨excludes_requires_view F v s h, excludes_closes_hand F v s h hh⟩

theorem excludes_not_correspondent (v : Vantage F) (s : Stake F) (h : Excludes F v s) :
    ¬ Correspondent F v.read := by
  intro hc
  obtain ⟨hnz, E, hE, hz⟩ := h
  obtain ⟨E', hE', hiff⟩ := hc.1 s
  rw [hE] at hE'
  have hEE : E = E' := Option.some.inj hE'
  subst hEE
  have hm : E s.magnitude = true := (hiff s.magnitude).2 rfl
  have := hz s.magnitude hm
  rw [hc.2 s s.magnitude ⟨E, hE, hm⟩] at this
  exact hnz this

/-- A stake at zero is still on the sheet: zero is a value, absence is not. -/
theorem zero_stake_on_sheet (x : F.Thing) : WholeSheet F ⟨x, F.zero⟩ := trivial

/-! ### 5a. Meaning: the reflexive stake (What Meaning Is §1; vF)

A stake is a dependency. The file has had the holder of a stake since vA and
has never said what a stake depends ON, because nothing in §§0–4 needed it.
Meaning needs it. `D s x` says the stake `s` rides on the thing `x`: if `x`
goes differently, `s`'s next step does. `D` is a PARAMETER, like the
carriers — the file does not say what depends on what in the world; that is
correspondence work.

What rides on `x` is then a sheet, `Meaning D x`. The paper's proposal is that
this is what "meaning," in the sense of mattering, names. Three things the
type makes visible at once. It takes no `Position`: mattering is a fact about
the dependency graph, the same from everywhere, like the second hinge. Every
stake on it is held (`meaning_held`), the same `rfl` as `all_held`: nobody
confers it. And it is a sheet, not a magnitude: "how much you matter" is not
a number here, because nothing is. -/

variable (D : Stake F → F.Thing → Prop)

/-- What rides on `x`. -/
def Meaning (x : F.Thing) : Sheet F := fun s => D s x

/-- Everything that rides on anything is held, at size, in the context. -/
theorem meaning_held (x : F.Thing) (s : Stake F) (_ : Meaning F D x s) : Held F s := rfl

/-- SELF-ABNEGATION IS PARTIALITY'S MIRROR (To a Mind §4; What Meaning Is §1).
    A stake that rides on the reader, equal to another in view, hand open on
    the other and closed on one's own: partial. The roles of
    `discount_is_partial` with the discount pointed inward. -/
theorem self_zero_is_partial (v : Vantage F) (s t : Stake F)
    (_hs : Meaning F D (F.self v.pos) s)
    (_hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (_htv : InView F v.read t)
    (_ht : OpenHandAt F v.read t)
    (m : F.M) (hadm : Admits F v.read s m) (hz : v.read.wt s m ≠ m) :
    Partial F v :=
  closed_hand_is_partial F v s m hsv hadm hz

/-- Reading oneself at nothing, all the way to exclusion, is a correspondence
    failure — not a modesty. -/
theorem self_excluded_not_correspondent (v : Vantage F) (s : Stake F)
    (_hs : Meaning F D (F.self v.pos) s) (h : Excludes F v s) :
    ¬ Correspondent F v.read :=
  excludes_not_correspondent F v s h

/-- DIMNESS ABOUT ONESELF IS A LIMIT. Not seeing what rides on you is not
    zeroing it. The paper's two kinds of meaninglessness are these two
    theorems: the one above is the hand; this one is the candle. -/
theorem own_unseen_not_excluded (v : Vantage F) (s : Stake F)
    (_hs : Meaning F D (F.self v.pos) s) (h : Unseen F v.read s) :
    ¬ Excludes F v s :=
  unseen_not_excluded F v s h

/-- A bond: each has a stake riding on the other (No Exemption: "two
    dependency structures whose next steps run through each other"). -/
def Bond (x y : F.Thing) : Prop :=
  (∃ s : Stake F, s.holder = y ∧ Meaning F D x s) ∧
  (∃ s : Stake F, s.holder = x ∧ Meaning F D y s)

/-- MEANING AND PURPOSE ARE ONE EDGE. A bond reads the same from either end. -/
theorem bond_symm (x y : F.Thing) (h : Bond F D x y) : Bond F D y x := ⟨h.2, h.1⟩

/-! Remark: being seen. The route out of the dim case is §4d's: a second
`Reader` at another position, `LovingToward` a stake on `Meaning D x`, is
`Seen` for that stake with no new definition. The file adds nothing here
because nothing is needed; the paper's claim that loneliness and
meaninglessness are one fact is the observation that `invariance_test` needs
a second position and `Meaning D x` can be read from one. -/

/-! ### 5b. Purpose: the other end (What Meaning Is §2; vF)

Position does two legitimate jobs — view and reach — and the file has typed
only the first (`InView`, estimate ≠ none). Reach is what a position can ACT
on, and it is a second parameter, `Reach p s`. Purpose is the sheet of stakes
in reach. Two things to check, both of which the paper asserts: restricting
to reach changes no size (it is a filter on the sheet, not a weighting), and
a stake out of reach is not thereby excluded (exclusion is something the
hand does to a stake in view; reach is not the hand). In the second theorem
the reach hypothesis is unused in the proof, exactly as the estimates were
unused in `uncertainty_not_partial`: reach does not enter partiality at all.
Priority among the stakes in reach — the tilt, vocation — is not here,
because there is no order on `M`; that is field. -/

variable (Reach : F.Position → Stake F → Prop)

/-- The stakes a position can act on. -/
def Purpose (p : F.Position) : Sheet F := fun s => Reach p s

/-- A FILTER, NOT A WEIGHTING. Every stake in reach is at its size. -/
theorem purpose_sizes_unchanged (p : F.Position) (s : Stake F) (_ : Purpose F Reach p s) :
    WhatLoveIsOf F s = s.magnitude := rfl

/-- Out of reach is not excluded. Honest estimate, open hand: no exclusion,
    whether or not the stake is in reach. -/
theorem out_of_reach_not_excluded (v : Vantage F) (s : Stake F)
    (_hr : ¬ Reach v.pos s)
    (ho : OpenHandAt F v.read s) (hh : HonestAt F v.read s) :
    ¬ Excludes F v s :=
  fun he => excludes_closes_hand F v s he hh ho

/-- Sole reach: this position is the only one that can act on the stake. The
    paper's "grows when you are the only one who can act." Definable; what
    follows from it for action is field. -/
def SoleReach (p : F.Position) (s : Stake F) : Prop :=
  Reach p s ∧ ∀ q : F.Position, Reach q s → q = p

/-! ## 6. The four-cell table -/

structure Cell where
  fromSomewhere : Bool
  exempts       : Bool
deriving DecidableEq, Repr

def Cell.admissible (c : Cell) : Bool := c.fromSomewhere && !c.exempts

def allCells : List Cell :=
  [⟨true, true⟩, ⟨true, false⟩, ⟨false, true⟩, ⟨false, false⟩]

theorem one_surviving_cell :
    (allCells.filter Cell.admissible) = [⟨true, false⟩] := by decide

theorem nowhere_cells_inadmissible :
    Cell.admissible ⟨false, true⟩ = false ∧ Cell.admissible ⟨false, false⟩ = false := by
  decide

/-! ## 7. The position-invariance test (World Enough and Time §3)

Hold the sheet fixed; move the observer. Two readers, each sharp on the same
stake, at different sizes: they cannot both be honest. Nothing on the sheet
moved; only the observer did. Constructive; no axioms. -/

theorem invariance_test {p q : F.Position} (r : Reading F p) (r' : Reading F q)
    (s : Stake F) (m m' : F.M) (hm : m ≠ m')
    (hs : SharpAt F r s m) (hs' : SharpAt F r' s m') :
    ¬ (Honest F r ∧ Honest F r') := by
  intro ⟨hr, hr'⟩
  obtain ⟨E, hE, hiff⟩ := hs
  obtain ⟨E', hE', hiff'⟩ := hs'
  have h1 : m = s.magnitude := ((hiff s.magnitude).1 (hr s E hE)).symm
  have h2 : m' = s.magnitude := ((hiff' s.magnitude).1 (hr' s E' hE')).symm
  exact hm (h1.trans h2.symm)

/-- "One sheet, many positions": all fully correspondent readings agree,
    from every position, on what every stake admits. -/
theorem correspondent_readings_agree {p q : F.Position} (r : Reading F p) (r' : Reading F q)
    (hr : Correspondent F r) (hr' : Correspondent F r') :
    ∀ s m, Admits F r s m ↔ Admits F r' s m := by
  intro s m
  obtain ⟨E, hE, hiff⟩ := hr.1 s
  obtain ⟨E', hE', hiff'⟩ := hr'.1 s
  constructor
  · intro ⟨X, hX, hXm⟩
    rw [hE] at hX
    have := Option.some.inj hX; subst this
    exact ⟨E', hE', (hiff' m).2 ((hiff m).1 hXm)⟩
  · intro ⟨X, hX, hXm⟩
    rw [hE'] at hX
    have := Option.some.inj hX; subst this
    exact ⟨E, hE, (hiff m).2 ((hiff' m).1 hXm)⟩

/-! ## 8. The acting rule: carry the loss -/

def Nets (v : Vantage F) (s : Stake F) : Prop := Excludes F v s

theorem netting_not_perfect (v : Vantage F) (s : Stake F) (h : Nets F v s) : ¬ PerfectLove F v :=
  fun hp => excludes_not_correspondent F v s h hp.2

/-! ## 9. The two kinds of wrong (World Enough and Time §1; The Candle §8)

A dim candle is a limit; a cupped hand is a fault. `LimitOnly` is a vantage
that is not fully correspondent and not partial: it sees less, or less
sharply, and bends nothing. "They did not see me." `Partial` is "they counted
me less." -/

def LimitOnly (v : Vantage F) : Prop :=
  IsVantage F v ∧ ¬ Correspondent F v.read ∧ OpenHand F v.read

theorem limit_is_loving (v : Vantage F) (h : LimitOnly F v) : Loving F v ∧ ¬ PerfectLove F v :=
  ⟨⟨h.1, h.2.2⟩, fun hp => h.2.1 hp.2⟩

/-- Not a vantage at all: a reading that sees no real stake truly. -/
def NoVantage (v : Vantage F) : Prop := ¬ IsVantage F v

theorem no_vantage_not_loving (v : Vantage F) (h : NoVantage F v) : ¬ Loving F v :=
  fun hl => h hl.1

/-! ## 10. The dark box: what love is of, without the knowing -/

/-- Every perfectly loving vantage, from any position, is sharp at exactly
    `WhatLoveIsOf` on every stake and weights it to itself. -/
theorem perfect_reads_what_love_is_of (v : Vantage F) (h : PerfectLove F v) :
    ∀ s, SharpAt F v.read s (WhatLoveIsOf F s) ∧ v.read.wt s (WhatLoveIsOf F s) = WhatLoveIsOf F s :=
  fun s => ⟨h.2.1 s, by
    obtain ⟨E, hE, hiff⟩ := h.2.1 s
    exact h.2.2 s _ ⟨E, hE, (hiff _).2 rfl⟩⟩

theorem held_without_holder (_ : ∀ _ : F.Position, False) :
    ∀ s : Stake F, WhatLoveIsOf F s = s.magnitude := fun _ => rfl

theorem no_positions_no_vantage (h : ∀ _ : F.Position, False) : ∀ _ : Vantage F, False :=
  fun v => h v.pos

/-! ## 11. Inventory: where content enters -/

#print axioms no_outside
#print axioms unique_no_outside
#print axioms self_is_not_totality
#print axioms partial_not_correspondent
#print axioms partial_toward_self_is_partial
#print axioms open_hand_not_partial
#print axioms uncertainty_not_partial
#print axioms discount_is_partial
#print axioms correspondent_is_vantage
#print axioms correspondent_loving
#print axioms correspondent_perfect
#print axioms open_hand_loving
#print axioms loving_toward_of_loving
#print axioms unseen_not_loved_toward
#print axioms excludes_requires_view
#print axioms unseen_not_excluded
#print axioms excludes_closes_hand
#print axioms excludes_not_correspondent
#print axioms limit_is_loving
#print axioms no_vantage_not_loving
#print axioms one_surviving_cell
#print axioms invariance_test
#print axioms correspondent_readings_agree
#print axioms netting_not_perfect
#print axioms held_without_holder
#print axioms no_positions_no_vantage
#print axioms all_held
#print axioms felt_seen
#print axioms no_total_self
#print axioms felt_not_partial
#print axioms own_seen_is_felt
#print axioms leans_is_partial
#print axioms partial_toward_self_is_leaning
#print axioms discount_for_reason_is_partial
#print axioms discount_by_scale_is_partial
#print axioms meaning_held
#print axioms self_zero_is_partial
#print axioms self_excluded_not_correspondent
#print axioms own_unseen_not_excluded
#print axioms bond_symm
#print axioms purpose_sizes_unchanged
#print axioms out_of_reach_not_excluded
#print axioms well_filed_honest
#print axioms dishonest_is_misfiled
#print axioms unfiled_well_filed
#print axioms leans_is_bell_as_size

/-! ## 11a. The 10-27 run — time in `Position`; the inquiry's own stake; the
stopping point; wielding across an edge; `Bounded`

At John's rulings of 10-27-26 (*The Stopping Point* vC §9 item 7; *A Mind at
the Top* vB §11; *Nothing Was Dialed* vC §8). Four questions, each answered
with the types already here. No new carrier, no new axiom.

1. TIME AS A COMPONENT OF `Position`. `Position` is already an arbitrary
   type, so a time coordinate is a function out of it (a `Clock`). The
   question was whether anything about *when* can enter `Partial` except
   through the hand. It cannot, and the reason is prior to clocks:
   `Partial` is a predicate on `v.read` alone, so two vantages with the same
   estimates and weightings are partial or not together whatever their
   positions, and therefore whatever their times. The lateness discount is
   already `discount_for_reason_is_partial` with `P := Later`.

2. THE INQUIRY'S OWN STAKE. A dependency on how long a reading takes is a
   `Stake` like any other — holder, magnitude — so it is `Held` by `rfl` and
   on the `WholeSheet` by `trivial`. Nothing is added to get it there.

3. THE STOPPING POINT, AND ONE WALL IN TWO DIRECTIONS. Over-thinking is
   excluding the inquiry's own stake (treating further thought as free);
   under-thinking is excluding a stake in view by stopping. Both are
   `Excludes`, so both are `excludes_not_correspondent`. The *limit* side of
   stopping — a stake the reader never had in view — is `unseen_not_excluded`:
   dimness, not the hand. The comparison that sets the stopping point (what
   further inquiry could change, against the stake on the delay) needs an
   order on `M`, which this file deliberately lacks (Report §3.2); it is
   stated as a definition parametric in a declared order, and no theorem
   rests on it. That is the same honest status as choice-under-conflict,
   and it is what the prose says: the form, not the number.

4. WIELDING ACROSS AN EDGE (the lemma of *A Mind at the Top* §6). To wield
   from a context on a thing is to have the thing outside the context: an
   edge. Totality has no outside, so nothing is wielded from it; a self
   (a context with an outside) has something to wield on. `Sets` has the
   same shape. And `Bounded` is just `HasOutside` under its other name, so
   Totality is unbounded by the same theorem that makes it Totality — with
   no statement, either way, about any cardinality of `M` or `Thing`. -/

/-- A clock: any assignment of times to positions. -/
structure Clock where
  T  : Type
  time : F.Position → T

/-- PARTIALITY DEPENDS ONLY ON THE READING. Two vantages with the same
estimates and weightings are partial together, whatever their positions. -/
theorem partial_depends_only_on_reading (p q : F.Position)
    (est : Stake F → Option (Estimate F)) (wt : Stake F → F.M → F.M) :
    Partial F ⟨p, ⟨est, wt⟩⟩ ↔ Partial F ⟨q, ⟨est, wt⟩⟩ := Iff.rfl

/-- TIME NEVER ENTERS `Partial`. A corollary for a clock: readings at two
different times are partial together. Only the hand decides. -/
theorem time_never_enters_partial (c : Clock F) (p q : F.Position)
    (_ : c.time p ≠ c.time q)
    (est : Stake F → Option (Estimate F)) (wt : Stake F → F.M → F.M) :
    Partial F ⟨p, ⟨est, wt⟩⟩ ↔ Partial F ⟨q, ⟨est, wt⟩⟩ :=
  partial_depends_only_on_reading F p q est wt

/-- Lateness as a predicate on stakes, however a clock assigns it. -/
def Later (Lt : Stake F → Prop) : Stake F → Prop := Lt

/-- THE LATENESS DISCOUNT IS PARTIAL, for any way of marking stakes as later.
An instance of `discount_for_reason_is_partial`; the clock does no work. -/
theorem lateness_discount_is_partial (Lt : Stake F → Prop) (v : Vantage F)
    (s t : Stake F) (heq : s.magnitude = t.magnitude)
    (hs : InView F v.read s) (ht : InView F v.read t)
    (_hl : Later F Lt t) (_hn : ¬ Later F Lt s)
    (m : F.M) (has : Admits F v.read s m) (hat : Admits F v.read t m)
    (hdisc : v.read.wt t m ≠ v.read.wt s m) : Partial F v :=
  equal_sizes_partial F v s t heq hs ht m has hat (fun h => hdisc h.symm)

/-- THE INQUIRY'S OWN STAKE: whatever rides on how long the reading takes,
held by whoever it rides on, at its size. An ordinary `Stake`. -/
def InquiryStake (holder : F.Thing) (cost : F.M) : Stake F := ⟨holder, cost⟩

/-- It is held, at size, with no one needed — by the same `rfl` as everything. -/
theorem inquiry_stake_held (h : F.Thing) (c : F.M) : Held F (InquiryStake F h c) := rfl

/-- It is on the sheet by being real; nothing puts it there. -/
theorem inquiry_stake_on_sheet (h : F.Thing) (c : F.M) :
    WholeSheet F (InquiryStake F h c) := trivial

/-- OVER-THINKING: the inquiry's own stake, in view and nonzero, weighted to
nothing — further thought treated as free. -/
def Overthinks (v : Vantage F) (i : Stake F) : Prop := Excludes F v i

/-- UNDER-THINKING: a stake in view, nonzero, weighted to nothing by the stop. -/
def Underthinks (v : Vantage F) (s : Stake F) : Prop := Excludes F v s

/-- ONE WALL, TWO DIRECTIONS. Both are the one predicate. -/
theorem one_wall_two_directions (v : Vantage F) (s : Stake F) :
    Overthinks F v s ↔ Underthinks F v s := Iff.rfl

/-- Over-thinking is a correspondence failure. -/
theorem overthinking_not_correspondent (v : Vantage F) (i : Stake F)
    (h : Overthinks F v i) : ¬ Correspondent F v.read :=
  excludes_not_correspondent F v i h

/-- Under-thinking is a correspondence failure. -/
theorem underthinking_not_correspondent (v : Vantage F) (s : Stake F)
    (h : Underthinks F v s) : ¬ Correspondent F v.read :=
  excludes_not_correspondent F v s h

/-- THE LIMIT SIDE OF STOPPING. A stake the stop left unseen is not excluded
by the stop: dimness is a limit; the hand is the fault. -/
theorem stop_with_unseen_not_underthinking (v : Vantage F) (s : Stake F)
    (h : Unseen F v.read s) : ¬ Underthinks F v s :=
  unseen_not_excluded F v s h

/-- THE STOPPING CONDITION'S FORM, under a declared order on `M` (a wall:
this file has no order, Report §3.2). `gain` is what further inquiry could
still change in the reading, at size; `cost` is the stake on the delay.
Closure is warranted when the gain does not exceed the cost. No theorem
rests on this definition; it records the form the prose gives, and that
the number is not supplied. -/
def WarrantedClosure (le : F.M → F.M → Prop) (gain cost : F.M) : Prop := le gain cost

/-- TO WIELD IS A RELATION ACROSS AN EDGE: from a context, on a thing outside it. -/
def WieldsFrom (C : Context F) (x y : F.Thing) : Prop := C x ∧ ¬ C y

/-- NOTHING IS WIELDED FROM THE WHOLE. Totality has no outside, so there is
nothing outside it to wield on. The lemma of *A Mind at the Top* §6, typed. -/
theorem totality_wields_nothing (x y : F.Thing) : ¬ WieldsFrom F (Totality F) x y :=
  fun h => h.2 trivial

/-- A SELF HAS SOMETHING TO WIELD ON. A context with an outside has a thing
outside it; any member of the self stands across that edge from it. -/
theorem self_can_wield (C : Context F) (hs : IsSelf F C) (x : F.Thing) (hx : C x) :
    ∃ y, WieldsFrom F C x y := by
  obtain ⟨y, hy⟩ := hs
  exact ⟨y, hx, hy⟩

/-- SETTING has the same shape as wielding: a setter outside what is set. -/
def SetsFrom (C : Context F) (x y : F.Thing) : Prop := WieldsFrom F C x y

/-- NOTHING WAS DIALED FROM THE WHOLE. -/
theorem totality_sets_nothing (x y : F.Thing) : ¬ SetsFrom F (Totality F) x y :=
  totality_wields_nothing F x y

/-- BOUNDED is having an outside, under its other name. Not a cardinality. -/
def Bounded (C : Context F) : Prop := HasOutside F C

/-- GOD IS UNBOUNDED, PROVED — by the theorem that makes Totality Totality.
Nothing is said, either way, about the size of `Thing` or `M`. -/
theorem totality_unbounded : ¬ Bounded F (Totality F) :=
  totality_has_no_outside F

/-- A self is bounded. -/
theorem self_bounded (C : Context F) (h : IsSelf F C) : Bounded F C := h

#print axioms partial_depends_only_on_reading
#print axioms time_never_enters_partial
#print axioms lateness_discount_is_partial
#print axioms inquiry_stake_held
#print axioms inquiry_stake_on_sheet
#print axioms one_wall_two_directions
#print axioms overthinking_not_correspondent
#print axioms underthinking_not_correspondent
#print axioms stop_with_unseen_not_underthinking
#print axioms totality_wields_nothing
#print axioms self_can_wield
#print axioms totality_sets_nothing
#print axioms totality_unbounded
#print axioms self_bounded

/-! ### 11b. vI — the hand on what is considered; partiality as the closed hand

At John's rulings of 10-27-26 night: "zero no one isn't right and never was.
it's... correspondence. that's all it is... ever." and, on whether the open
hand is a disposition over all sizes or the operation on the sizes considered,
"how could a stake 'turn out to be' different from the reader's appraisal?"
Three changes of definition (`OpenHandAt` on admitted sizes; `PartialAt` as
the closed hand in view; `Partial` as the hand not open somewhere in view;
`Loving` stated positively) and these theorems. The equal-sizes form,
exclusion, the discounts and leaning are now sufficient tests. One classical
theorem, flagged: `not_partial_loving`, the subtraction read backwards. -/

#print axioms closed_hand_is_partial
#print axioms equal_sizes_partial
#print axioms uniform_discount_is_partial
#print axioms excludes_is_partial
#print axioms loving_toward_not_partial_at
#print axioms not_partial_loving

/-! ## 12. A concrete frame

Three things, three magnitudes (0, 1, 2), three positions. The reader stands
at position 0. New in vD: the bacterium (sees one stake only, truly — loving);
the dim reader (sees a stake only within a range — honest, not partial); the
discounter (same estimate, closed hand on the stranger — partial); and the
check that the unseen stake is neither excluded nor loved-toward. -/

abbrev Toy : Frame :=
  { Thing := Fin 3, M := Fin 3, zero := 0, Position := Fin 3, self := id }

def toyStakes : List (Stake Toy) := [⟨0, 1⟩, ⟨1, 1⟩, ⟨1, 2⟩, ⟨2, 2⟩, ⟨2, 0⟩]

/-- Sharp estimate at one size. -/
def sharp (m : Fin 3) : Estimate Toy := fun x => decide (x = m)
/-- Wide estimate: 1 or 2. -/
def wide12 : Estimate Toy := fun x => decide (x = 1) || decide (x = 2)
def idw : Stake Toy → Fin 3 → Fin 3 := fun _ m => m

/-- A: the sun. Everything in view, sharp, open hand. -/
def readA : Reading Toy 0 := ⟨fun s => some (sharp s.magnitude), idw⟩
/-- B: the bacterium. Only its own stake in view, sharp; open hand. -/
def readB : Reading Toy 0 := ⟨fun s => if s.holder = 0 then some (sharp s.magnitude) else none, idw⟩
/-- D: the dim reader. Own stake sharp; thing 2's size-2 stake only within 1..2; open hand. -/
def readD : Reading Toy 0 :=
  ⟨fun s => if s.holder = 2 ∧ s.magnitude = 2 then some wide12 else some (sharp s.magnitude), idw⟩
/-- N: the discounter. Same estimates as A; weights thing 2's size-2 stake down to 1. -/
def readN : Reading Toy 0 :=
  ⟨fun s => some (sharp s.magnitude), fun s m => if s.holder = 2 ∧ m = 2 then 1 else m⟩
/-- X: the excluder. Sees thing 1's stakes and weights them to zero. -/
def readX : Reading Toy 0 :=
  ⟨fun s => some (sharp s.magnitude), fun s m => if s.holder = 1 then 0 else m⟩

def inViewOn (r : Reading Toy 0) (s : Stake Toy) : Bool := decide (r.est s ≠ none)

def honestOn (r : Reading Toy 0) (l : List (Stake Toy)) : Bool :=
  l.all fun s => match r.est s with
    | none => true
    | some E => E s.magnitude

/-- vI: the Boolean mirror of `Partial` — some in-view stake, some admitted size,
    hand not identity there. (vD's mirror was the equal-sizes test.) -/
def partialOn (r : Reading Toy 0) (l : List (Stake Toy)) : Bool :=
  l.any fun s => match r.est s with
    | none => false
    | some E => [0, 1, 2].any fun m : Fin 3 => E m && decide (r.wt s m ≠ m)

def isVantageOn (r : Reading Toy 0) (l : List (Stake Toy)) : Bool :=
  l.any fun s => decide (s.magnitude ≠ 0) &&
    (match r.est s with
      | none => false
      | some E => ([0, 1, 2].all fun x : Fin 3 => decide ((E x = true) ↔ x = s.magnitude))) &&
    ([0, 1, 2].all fun m : Fin 3 => decide (r.wt s m = m))

def excludesOn (r : Reading Toy 0) (s : Stake Toy) : Bool :=
  decide (s.magnitude ≠ 0) &&
    (match r.est s with
      | none => false
      | some E => [0, 1, 2].all fun m : Fin 3 => !(E m) || decide (r.wt s m = 0))

-- A: the sun. Honest, a vantage, not partial.
example : honestOn readA toyStakes = true := by decide
example : isVantageOn readA toyStakes = true := by decide
example : partialOn readA toyStakes = false := by decide

-- B: the bacterium. Sees one stake. Honest, a vantage, NOT partial — loving at the
-- thinnest resolution. Under vC it was partial toward everything it did not see.
example : inViewOn readB ⟨1, 1⟩ = false := by decide
example : honestOn readB toyStakes = true := by decide
example : isVantageOn readB toyStakes = true := by decide
example : partialOn readB toyStakes = false := by decide
-- The unseen stake is not excluded by B.
example : excludesOn readB ⟨1, 1⟩ = false := by decide

-- D: the dim reader. Sees the stranger's stake only within a range. Honest, a vantage,
-- not partial: uncertainty is a limit, not a fault (the future at its expected size).
example : honestOn readD toyStakes = true := by decide
example : isVantageOn readD toyStakes = true := by decide
example : partialOn readD toyStakes = false := by decide

-- N: the discounter. Same view as the sun; closed hand on the stranger. Partial.
example : honestOn readN toyStakes = true := by decide
example : partialOn readN toyStakes = true := by decide

-- X: the excluder. Sees thing 1 and zeroes it. Excludes; partial; honest in estimate.
example : excludesOn readX ⟨1, 2⟩ = true := by decide
example : partialOn readX toyStakes = true := by decide
example : honestOn readX toyStakes = true := by decide

/-- Z (vI): the size-class excluder — an outside reader's case, 10-27 night.
    Sharp everywhere; hand open on every size-1 stake; every size-2 stake
    zeroed. Symmetric across equals, so vD's `Partial` could not see it, and
    under vD it was `Loving`. -/
def readZ : Reading Toy 0 :=
  ⟨fun s => some (sharp s.magnitude), fun s m => if s.magnitude = 1 then m else 0⟩

-- Z meets the floor, is honest in estimate, excludes the stranger's stake — and under vI
-- is partial and therefore not loving. The vD mirror (equal-sizes test) would have said no.
example : isVantageOn readZ toyStakes = true := by decide
example : honestOn readZ toyStakes = true := by decide
example : excludesOn readZ ⟨2, 2⟩ = true := by decide
example : partialOn readZ toyStakes = true := by decide
theorem readZ_partial : Partial Toy ⟨0, readZ⟩ :=
  closed_hand_is_partial Toy ⟨0, readZ⟩ ⟨2, 2⟩ 2 (fun h => by cases h) ⟨sharp 2, rfl, by decide⟩ (by decide)
theorem readZ_not_loving : ¬ Loving Toy ⟨0, readZ⟩ := fun hl => readZ_partial hl.2
-- The vD equal-sizes test, run on Z, finds nothing: the test is sufficient, not equivalent.
def equalSizesOn (r : Reading Toy 0) (l : List (Stake Toy)) : Bool :=
  l.any fun s => l.any fun t =>
    decide (s.magnitude = t.magnitude) && inViewOn r s && inViewOn r t &&
    ([0, 1, 2].any fun m : Fin 3 => decide (r.wt s m ≠ r.wt t m))
example : equalSizesOn readZ toyStakes = false := by decide

/-! vE toy: a reader at position 0 whose connected self is {0, 1} — thing 1
(the friend) is a constituent; thing 2 (the stranger) is not. -/

def selfCtx01 : Context Toy := fun x => x = 0 ∨ x = 1

theorem selfCtx01_is_self : IsSelf Toy selfCtx01 := ⟨2, by unfold selfCtx01; decide⟩

def readerA : Reader Toy := ⟨⟨0, readA⟩, selfCtx01, selfCtx01_is_self, Or.inl rfl⟩
def readerN : Reader Toy := ⟨⟨0, readN⟩, selfCtx01, selfCtx01_is_self, Or.inl rfl⟩

def inSelfOn (_r : Reader Toy) (s : Stake Toy) : Bool := decide (s.holder = 0 ∨ s.holder = 1)

/-- vI mirror of `LovingToward`: in view, honest, hand open on the admitted sizes. -/
def lovingTowardOn (r : Reading Toy 0) (_l : List (Stake Toy)) (s : Stake Toy) : Bool :=
  inViewOn r s &&
  (match r.est s with | none => false | some E => E s.magnitude) &&
  (match r.est s with
    | none => false
    | some E => [0, 1, 2].all fun m : Fin 3 => !(E m) || decide (r.wt s m = m))

def feltOn (r : Reader Toy) (rd : Reading Toy 0) (l : List (Stake Toy)) (s : Stake Toy) : Bool :=
  lovingTowardOn rd l s && inSelfOn r s

def leansOn (r : Reader Toy) (rd : Reading Toy 0) (l : List (Stake Toy)) : Bool :=
  l.any fun s => l.any fun t =>
    decide (s.magnitude = t.magnitude) && inSelfOn r s && !(inSelfOn r t) &&
    inViewOn rd s && inViewOn rd t &&
    ([0, 1, 2].any fun m : Fin 3 => decide (rd.wt s m ≠ rd.wt t m))

-- The sun, as a reader with a self: the friend's stake is seen AND felt;
-- the stranger's equal stake is seen and NOT felt; and the reader is not partial
-- toward either — feeling for the constituent is reach, not weight.
example : lovingTowardOn readA toyStakes ⟨1, 2⟩ = true := by decide
example : feltOn readerA readA toyStakes ⟨1, 2⟩ = true := by decide
example : lovingTowardOn readA toyStakes ⟨2, 2⟩ = true := by decide
example : feltOn readerA readA toyStakes ⟨2, 2⟩ = false := by decide
example : leansOn readerA readA toyStakes = false := by decide

-- The discounter: the hand follows the bell — leans along the self boundary. Partial.
example : leansOn readerN readN toyStakes = true := by decide
example : partialOn readN toyStakes = true := by decide

/-! vF toy. S: the self-abnegator. Sees everything sharply, as the sun does,
and weights its own stakes to zero. Honest in estimate; excludes its own
stake; partial — the discount pointed inward. Under the toy dependency `toyD`
(a stake rides on its own holder, and thing 1's stakes also ride on thing 0),
thing 0's meaning sheet contains its own stake and the friend's; the
self-abnegator zeroes the first and is open on the second, so it is partial on
its own meaning sheet. -/

def readS : Reading Toy 0 :=
  ⟨fun s => some (sharp s.magnitude), fun s m => if s.holder = 0 then 0 else m⟩

def toyD : Stake Toy → Fin 3 → Prop := fun s x => s.holder = x ∨ (s.holder = 1 ∧ x = 0)

-- S is honest, excludes its own stake, and is partial.
example : honestOn readS toyStakes = true := by decide
example : excludesOn readS ⟨0, 1⟩ = true := by decide
example : partialOn readS toyStakes = true := by decide

-- Thing 0's own stake and the friend's stake both ride on thing 0; the stranger's does not.
example : Meaning Toy toyD 0 ⟨0, 1⟩ := Or.inl rfl
example : Meaning Toy toyD 0 ⟨1, 1⟩ := Or.inr ⟨rfl, rfl⟩
example : ¬ Meaning Toy toyD 0 ⟨2, 2⟩ := by
  intro h; rcases h with h | ⟨h, _⟩ <;> cases h

-- The self-abnegator is partial by the reflexive theorem, with the friend's equal stake as witness.
example : Partial Toy ⟨0, readS⟩ :=
  self_zero_is_partial Toy toyD ⟨0, readS⟩ ⟨0, 1⟩ ⟨1, 1⟩ (Or.inl rfl) rfl
    (fun h => by cases h) (fun h => by cases h) (fun m _ => rfl) 1 ⟨sharp 1, rfl, by decide⟩ (by decide)

-- The bacterium does not see the friend's stake, which rides on it: a limit, not exclusion.
example : ¬ Excludes Toy ⟨0, readB⟩ ⟨1, 1⟩ :=
  own_unseen_not_excluded Toy toyD ⟨0, readB⟩ ⟨1, 1⟩ (Or.inr ⟨rfl, rfl⟩) rfl

-- The sun, with a reach that covers only thing 0 and thing 1: the stranger's stake is out
-- of reach and not excluded.
def toyReach : Fin 3 → Stake Toy → Prop := fun _ s => s.holder = 0 ∨ s.holder = 1

example : ¬ Excludes Toy ⟨0, readA⟩ ⟨2, 2⟩ :=
  out_of_reach_not_excluded Toy toyReach ⟨0, readA⟩ ⟨2, 2⟩
    (by intro h; rcases h with h | h <;> cases h) (fun m _ => rfl)
    (by intro E hE; cases hE; decide)

-- Under toyD the friend's stake rides on thing 0 but none of thing 0's stakes ride on the
-- friend: one direction only, so no bond. Under toyD2 (every stake rides on every OTHER
-- thing) thing 0 and thing 1 are bonded, and the bond reads the same from either end.
example : ∃ s : Stake Toy, s.holder = 1 ∧ Meaning Toy toyD 0 s := ⟨⟨1, 1⟩, rfl, Or.inr ⟨rfl, rfl⟩⟩

def toyD2 : Stake Toy → Fin 3 → Prop := fun s x => s.holder ≠ x

theorem bond01 : Bond Toy toyD2 0 1 :=
  ⟨⟨⟨1, 1⟩, rfl, fun h => by cases h⟩, ⟨⟨0, 1⟩, rfl, fun h => by cases h⟩⟩
example : Bond Toy toyD2 1 0 := bond_symm Toy toyD2 0 1 bond01

/-! vG toy: the mis-filer. One account, true of its source — thing 0's size-1 stake,
sharp at 1 — filed to the stranger's size-2 stake. The account is true; the reading
it induces is dishonest at the stranger's stake; and the theorem says why. -/

def acct01 : Account Toy := ⟨⟨0, 1⟩, sharp 1⟩

theorem acct01_true : TrueOfSource Toy acct01 := rfl

/-- Files the one true account to the wrong stake. -/
def fileM : Filing Toy 0 :=
  ⟨fun s => if s.holder = 2 ∧ s.magnitude = 2 then some acct01 else none⟩

theorem fileM_misfiled : MisfiledAt Toy fileM ⟨2, 2⟩ :=
  ⟨acct01, rfl, fun h => by cases h⟩

-- The induced reading is dishonest at the stranger's stake: it admits 1, the true size is 2.
theorem fileM_dishonest : ¬ HonestAt Toy (Filing.toReading Toy fileM idw) ⟨2, 2⟩ := by
  intro h
  have := h (sharp 1) rfl
  exact absurd this (by decide)

-- And at every other stake the filing is empty, hence well filed.
example : WellFiledAt Toy fileM ⟨0, 1⟩ := unfiled_well_filed Toy fileM ⟨0, 1⟩ rfl

/-! Note on X. The excluder's ESTIMATE is honest — he sees thing 1's stakes at their
size — and his WEIGHTING zeroes them. That is exactly what the prose means by
"read," not "misread": exclusion is not a failure to see; it is what the hand
does with what was seen. The factoring makes the ruling visible. -/

/-! ## 12a. The stake run — vJ (11-3-26)

At John's "ok - let's do the lean run on stakes": the run owed by *What a
Stake Is Made Of* (10.29.26) vC §9. That paper proposed that the one declared
definition — a stake is a dependency — decomposes into things the file
already has. The HOLDER is anything that FILES: holds a state as of
something, so that its next step is guided by the state and the state can
fail to fit. The STAKE is an EDGE in the context: a dependency of a filer's
next step on something, there whether or not any reader sees it. Its SIZE is
the REGION of the context that hangs on the edge: what depends on it, read by
following the dependencies. §9 asked for six investigations and said none
was a new result of the file. They are taken in order below.

NOTHING ABOVE IS ALTERED. `Stake` stays holder and magnitude; every theorem
above holds as it did. The run adds types beside `Stake` and checks what can
be said with them. The file still has no order on `M` (Report §3.2): the
region representation is run in its own section and then as a frame, so the
base `M` stays bare. What each step settles and what it does not is said at
the step. The honest summary is at the end of the section. -/

/-! ### (1) The filing line: a `Filer` -/

/-- A filer: a thing that holds a state AS OF something, with a next step
    read off the state. `S` are the states it can hold; `W` the ways the thing
    it is about can be; `fits` says when a state is right about a way; `next`
    reads the step off the state. The thermostat is one (below). A rock is
    not, because nothing it holds can be wrong (`IsAccount`). `Step` may be
    the filer's own next state: a contemplator's next step is its next
    thought, and nothing outward need happen (vK, after Grok's case). `act`
    is what a step does — to the state held and to the thing (vL): a step
    that does nothing is not a step. The thing's own action on the state (a
    strip warming with the room) is the world's doing and is not in `act`. -/
structure Filer where
  holder : F.Thing
  about  : F.Thing
  S      : Type
  W      : Type
  Step   : Type
  held   : S
  fits   : S → W → Prop
  next   : S → Step
  act    : Step → S → W → S × W

/-- The state is an ACCOUNT: it can fit, and it can fail to fit. A state that
    fits every way, or none, is not about anything. -/
def Filer.IsAccount (f : Filer F) : Prop :=
  (∃ s w, f.fits s w) ∧ (∃ s w, ¬ f.fits s w)

/-- The next step is GUIDED by the state: some other state would give a
    different step. This is the dependency of the next step on what is held. -/
def Filer.Guided (f : Filer F) : Prop := ∃ s, f.next s ≠ f.next f.held

/-- The account a state gives: its fit profile — what it says about the thing. -/
def Filer.account (f : Filer F) (s : f.S) : f.W → Prop := f.fits s

/-- READ OFF THE ACCOUNT (vK; the sixth narrowing). The next step is read off
    what the state says about the thing, not off some other feature of the
    state: two states that say the same thing do the same thing. Without this
    clause a thing can pass `IsAccount` with one part of its state and
    `Guided` with another, the two never touching — GPT's hinged sign, below. -/
def Filer.ReadOff (f : Filer F) : Prop :=
  ∀ s s', (∀ w, f.fits s w ↔ f.fits s' w) → f.next s = f.next s'

/-- What the step read off `s` does, taken with the thing in way `w`. -/
def Filer.effect (f : Filer F) (s : f.S) (w : f.W) : f.S × f.W := f.act (f.next s) s w

/-- ENGAGED (vL; the direction run). The step connects the state with the
    thing: either what it does to the thing depends on what is held, or what
    comes to be held depends on the thing. A state the thing shapes and that
    shapes nothing done to the thing — the hot rock's temperature — is a link
    in a causal chain, not a state held AS OF the thing. The first weak point
    declared at 11-3 (`about` as a field) is narrowed here, not closed: the
    file now checks that the declared aboutness is backed by a step that
    meets the thing; it still does not check what a state is of in the world. -/
def Filer.Engaged (f : Filer F) : Prop :=
  (∃ s s' w, (Filer.effect F f s w).2 ≠ (Filer.effect F f s' w).2) ∨
  (∃ s w w', (Filer.effect F f s w).1 ≠ (Filer.effect F f s w').1)

/-- FILES: holds a state as of something, able to be wrong about it, guided by
    it, guided THROUGH what it says, and engaged with the thing by what it
    does. The floor of thinking (*Nothing Added* §6) and the holder line of
    *What a Stake Is Made Of* §5, as one predicate. vJ had the first two
    clauses; vK added the third; vL adds the fourth. -/
def Filer.Files (f : Filer F) : Prop :=
  Filer.IsAccount F f ∧ Filer.Guided F f ∧ Filer.ReadOff F f ∧ Filer.Engaged F f

/-- When the fit relation is injective in the state — the state IS the claim —
    `ReadOff` is automatic: same profile, same state, same step. -/
theorem readOff_of_fits_eq (f : Filer F)
    (hinj : ∀ s s', (∀ w, f.fits s w ↔ f.fits s' w) → s = s') : Filer.ReadOff F f :=
  fun s s' h => by have e := hinj s s' h; subst e; rfl

/-! ### (2) The stake as an edge: the dependency in the type -/

/-- An edge: a dependency of `holder`'s next step on `on`, at a size. The
    size is a field (the second hinge, as in `Stake`) and so is what it rides
    on: neither takes a `Position`. §5a's `D` was a parameter standing beside
    the stake; here it is read off the edges (`EdgeD`). -/
structure Edge where
  holder    : F.Thing
  on        : F.Thing
  magnitude : F.M

/-- Every edge is a stake: forget what it rides on. -/
def Edge.toStake (e : Edge F) : Stake F := ⟨e.holder, e.magnitude⟩

/-- The dependency relation a set of edges induces: `s` rides on `x` when
    some edge in the set is `s` riding on `x`. This is §5a's `D`, derived
    rather than supplied. -/
def EdgeD (E : Edge F → Prop) : Stake F → F.Thing → Prop :=
  fun s x => ∃ e, E e ∧ Edge.toStake F e = s ∧ e.on = x

/-- HELD BEFORE SEEN. An edge is held, at size, by the same `rfl` as everything. -/
theorem edge_held (e : Edge F) : Held F (Edge.toStake F e) := rfl

/-- On the sheet by being real. -/
theorem edge_on_sheet (e : Edge F) : WholeSheet F (Edge.toStake F e) := trivial

/-- THE ASTEROID NO ONE HAS SEEN. An edge no reader has in view is held at its
    size all the same. The account is how an edge enters a view, not what
    makes it an edge. -/
theorem unseen_edge_held (v : Vantage F) (e : Edge F)
    (_ : Unseen F v.read (Edge.toStake F e)) : Held F (Edge.toStake F e) := rfl

/-- An edge rides on what it rides on: it is on `Meaning` under the derived
    `D`. §5a's sheet of what matters, with no parameter left to supply. -/
theorem edge_rides (E : Edge F → Prop) (e : Edge F) (hE : E e) :
    Meaning F (EdgeD F E) e.on (Edge.toStake F e) := ⟨e, hE, rfl, rfl⟩

/-- A filer's edge: the dependency of its next step on what it is about, at a
    size. The size is not computed here — the base frame's `M` has nothing to
    compute it in. (3) gives `M` structure, as an experiment. -/
def Filer.edge (f : Filer F) (m : F.M) : Edge F := ⟨f.holder, f.about, m⟩

theorem filer_edge_held (f : Filer F) (m : F.M) :
    Held F (Edge.toStake F (Filer.edge F f m)) := rfl

/-- The thermostat (*What a Stake Is Made Of* §5a). States cold / warm, held
    as of the room, which can be cold / warm; the strip fits when it matches;
    the next step is heat when cold, idle when warm. It files — "and CT says
    so without flinching." -/
inductive Temp | cold | warm
  deriving DecidableEq

inductive Act | heat | idle
  deriving DecidableEq

/-- Heating a room makes it warm. -/
def Temp.heated : Temp → Temp
  | _ => .warm

def thermostat : Filer Toy :=
  { holder := 0, about := 1, S := Temp, W := Temp, Step := Act,
    held := .cold,
    fits := fun s w => s = w,
    next := fun s => match s with | .cold => .heat | .warm => .idle,
    act := fun a s w => match a with | .heat => (s, w.heated) | .idle => (s, w) }

/-- The thermostat is engaged: what it does to the room depends on its strip. -/
theorem thermostat_engaged : Filer.Engaged Toy thermostat :=
  Or.inl ⟨.cold, .warm, .cold, show Temp.warm ≠ Temp.cold from by decide⟩

theorem thermostat_files : Filer.Files Toy thermostat :=
  ⟨⟨⟨.cold, .cold, rfl⟩, ⟨.cold, .warm, show Temp.cold ≠ Temp.warm from by decide⟩⟩,
   ⟨.warm, show Act.idle ≠ Act.heat from by decide⟩,
   readOff_of_fits_eq Toy thermostat (fun s s' h => ((h s).1 rfl : s' = s).symm),
   thermostat_engaged⟩

/-- A rock: one state, fits everything. Not an account, so it does not file,
    whatever its next step. -/
def rock : Filer Toy :=
  { holder := 2, about := 1, S := Unit, W := Temp, Step := Unit,
    held := (), fits := fun _ _ => True, next := fun _ => (),
    act := fun _ s w => (s, w) }

theorem rock_not_account : ¬ Filer.IsAccount Toy rock :=
  fun h => h.2.elim (fun _ h' => h'.elim (fun _ hh => hh trivial))

theorem rock_not_files : ¬ Filer.Files Toy rock :=
  fun h => rock_not_account h.1

/-! #### The outside round (11-4-26; vK)

`Files` at vJ was handed blind to three model sessions with one instruction:
break it in either direction, with a case built as a `Filer` and compiled
(*CT in Lean - Counterexample Brief - the filing line (11.04.26)*). The cases
are kept here as the author sent them, with the disposition each received. -/

/-- GROK, "too wide": a coin-operated vending machine. Holds a credit state as
    of the coins inserted; the credit can match or fail to match; whether it
    dispenses depends on the credit. It files, at vJ and at vK. Disposition:
    the thermostat kind — CT draws the floor of thinking below the ordinary
    word on purpose, and says so; not a counterexample to the claim, a
    counterexample to the brief's wording of it. -/
inductive Credit | none | enough
  deriving DecidableEq

inductive Dispense | no | yes
  deriving DecidableEq

def vending : Filer Toy :=
  { holder := 0, about := 1, S := Credit, W := Credit, Step := Dispense,
    held := .none,
    fits := fun s w => s = w,
    next := fun s => match s with | .none => .no | .enough => .yes,
    act := fun d s w => match d with | .no => (s, w) | .yes => (.none, .none) }

/-- Engaged: dispensing takes the coins, and whether it dispenses depends on
    the credit. -/
theorem vending_engaged : Filer.Engaged Toy vending :=
  Or.inl ⟨.enough, .none, .enough, show Credit.none ≠ Credit.enough from by decide⟩

theorem vending_files : Filer.Files Toy vending :=
  ⟨⟨⟨.none, .none, rfl⟩, ⟨.none, .enough, show Credit.none ≠ Credit.enough from by decide⟩⟩,
   ⟨.enough, show Dispense.yes ≠ Dispense.no from by decide⟩,
   readOff_of_fits_eq Toy vending (fun s s' h => ((h s).1 rfl : s' = s).symm),
   vending_engaged⟩

/-- GROK, "too narrow": a person in pure contemplation, holding a thought as of
    a mathematical claim, whose next step is invariably the same. As built it
    does not file — its held thought changes nothing, not even its next
    thought. Disposition: not a counterexample; a snapshot is not thinking.
    The reader's own sentence says "no next action," and the next step of a
    contemplator is the next thought: see `contemplator'`. -/
inductive Thought | correct | incorrect
  deriving DecidableEq

inductive Contemplation | continue
  deriving DecidableEq

def contemplator : Filer Toy :=
  { holder := 0, about := 2, S := Thought, W := Thought, Step := Contemplation,
    held := .correct,
    fits := fun s w => s = w,
    next := fun _ => .continue,
    act := fun _ s w => (s, w) }

theorem contemplator_not_guided : ¬ Filer.Guided Toy contemplator :=
  fun ⟨s, h⟩ => by cases s <;> simp [contemplator] at h

theorem contemplator_not_files : ¬ Filer.Files Toy contemplator :=
  fun h => contemplator_not_guided h.2.1

/-- The same contemplator with the next step read as the next THOUGHT: holding
    the claim as correct, the person presses on; holding it as incorrect, looks
    again. Nothing outward happens either way. It files. -/
inductive Next | pressOn | lookAgain
  deriving DecidableEq

def contemplator' : Filer Toy :=
  { holder := 0, about := 2, S := Thought, W := Thought, Step := Next,
    held := .correct,
    fits := fun s w => s = w,
    next := fun s => match s with | .correct => .pressOn | .incorrect => .lookAgain,
    act := fun n s w => match n with | .pressOn => (s, w) | .lookAgain => (w, w) }

/-- Engaged the other way round: looking again, what the person comes to hold
    depends on the claim. Nothing is done to the claim. -/
theorem contemplator'_engaged : Filer.Engaged Toy contemplator' :=
  Or.inr ⟨.incorrect, .correct, .incorrect, show Thought.correct ≠ Thought.incorrect from by decide⟩

theorem contemplator'_files : Filer.Files Toy contemplator' :=
  ⟨⟨⟨.correct, .correct, rfl⟩, ⟨.correct, .incorrect, show Thought.correct ≠ Thought.incorrect from by decide⟩⟩,
   ⟨.incorrect, show Next.lookAgain ≠ Next.pressOn from by decide⟩,
   readOff_of_fits_eq Toy contemplator' (fun s s' h => ((h s).1 rfl : s' = s).symm),
   contemplator'_engaged⟩

/-- VERITY GPT, "too wide" — THE SIXTH NARROWING. A hinged sign with a latch.
    The first state component is the printed temperature claim; the second is
    the latch. The claim can be right or wrong about the room; whether the
    sign stays or falls depends on the latch; the two never touch. At vJ it
    filed. A sign does not think. -/
inductive SignLatch | engaged | released
  deriving DecidableEq

inductive SignStep | stays | falls
  deriving DecidableEq

def hingedSign : Filer Toy :=
  { holder := 0
    about := 1
    S := Temp × SignLatch
    W := Temp
    Step := SignStep
    held := (.cold, .engaged)
    fits := fun s w => s.1 = w
    next := fun s =>
      match s.2 with
      | .engaged => .stays
      | .released => .falls
    act := fun _ s w => (s, w) }

/-- The sign passes vJ's two clauses. (The vJ `Files`, restated here so the
    narrowing can be seen.) -/
theorem hingedSign_files_vJ : Filer.IsAccount Toy hingedSign ∧ Filer.Guided Toy hingedSign :=
  ⟨⟨⟨(.cold, .engaged), .cold, rfl⟩,
      ⟨(.cold, .engaged), .warm,
        show Temp.cold ≠ Temp.warm from by decide⟩⟩,
    ⟨(.cold, .released),
      show SignStep.falls ≠ SignStep.stays from by decide⟩⟩

/-- GPT's second theorem, as sent: changing only the latch preserves fit in
    every world but changes the next step. -/
theorem hingedSign_same_fit_different_step :
    (∀ w, hingedSign.fits (.cold, .engaged) w ↔
          hingedSign.fits (.cold, .released) w) ∧
    hingedSign.next (.cold, .engaged) ≠
      hingedSign.next (.cold, .released) :=
  ⟨fun _ => Iff.rfl,
    show SignStep.stays ≠ SignStep.falls from by decide⟩

/-- THE SIGN DOES NOT FILE at vK: its author's second theorem is the witness. -/
theorem hingedSign_not_readOff : ¬ Filer.ReadOff Toy hingedSign :=
  fun h => hingedSign_same_fit_different_step.2
    (h (.cold, .engaged) (.cold, .released) hingedSign_same_fit_different_step.1)

theorem hingedSign_not_files : ¬ Filer.Files Toy hingedSign :=
  fun h => hingedSign_not_readOff h.2.2.1

/-! #### The direction run (11-4-26; vL): the hot rock -/

/-- THE HOT ROCK (Verity's case, after the round; the first declared weak
    point). Its state is its own temperature and whether it has cracked; its
    temperature tracks the room, which is the room's doing and not a step of
    the rock's; its step is to crack when warm. The crack is in the state so
    that "the rock does something" is granted. `about` is declared as the
    room, and nothing in vK's three clauses could say otherwise. -/
inductive Fate | intact | cracked
  deriving DecidableEq

def hotRock : Filer Toy :=
  { holder := 2, about := 1, S := Temp × Bool, W := Temp, Step := Fate,
    held := (.cold, false),
    fits := fun s w => s.1 = w,
    next := fun s => match s.1 with | .cold => .intact | .warm => .cracked,
    act := fun f s w => match f with | .intact => (s, w) | .cracked => ((s.1, true), w) }

/-- THE ROCK PASSES vK: an account, guided, read off. -/
theorem hotRock_files_vK :
    Filer.IsAccount Toy hotRock ∧ Filer.Guided Toy hotRock ∧ Filer.ReadOff Toy hotRock :=
  ⟨⟨⟨(.cold, false), .cold, rfl⟩,
    ⟨(.cold, false), .warm, show Temp.cold ≠ Temp.warm from by decide⟩⟩,
   ⟨(.warm, false), show Fate.cracked ≠ Fate.intact from by decide⟩,
   fun s s' h => by
     have e : s.1 = s'.1 := ((h s.1).1 rfl : s'.1 = s.1).symm
     show (match s.1 with | .cold => Fate.intact | .warm => Fate.cracked) =
          (match s'.1 with | .cold => Fate.intact | .warm => Fate.cracked)
     rw [e]⟩

/-- Whatever the rock's step, the room is untouched. -/
theorem hotRock_room_untouched (f : Fate) (s : Temp × Bool) (w : Temp) :
    (hotRock.act f s w).2 = w := by
  cases f <;> rfl

/-- Whatever the rock's step, what it comes to hold does not depend on the room. -/
theorem hotRock_state_blind (f : Fate) (s : Temp × Bool) (w w' : Temp) :
    (hotRock.act f s w).1 = (hotRock.act f s w').1 := by
  cases f <;> rfl

/-- THE ROCK IS NOT ENGAGED: nothing its step does connects what it holds with
    the room. The thermostat, the vending machine and the contemplator are. -/
theorem hotRock_not_engaged : ¬ Filer.Engaged Toy hotRock :=
  fun h => h.elim
    (fun ⟨s, s', w, hne⟩ => hne
      ((hotRock_room_untouched _ s w).trans (hotRock_room_untouched _ s' w).symm))
    (fun ⟨s, w, w', hne⟩ => hne (hotRock_state_blind _ s w w'))

/-- THE ROCK DOES NOT FILE at vL. -/
theorem hotRock_not_files : ¬ Filer.Files Toy hotRock :=
  fun h => hotRock_not_engaged h.2.2.2

/-! ### (3) The region: what hangs on the edge, as a set of steps — an experiment

*What a Stake Is Made Of* §§5–6: the size of a stake is the region of the
context that hangs on the edge — what depends on it, and how things go
differently if the thing is not as held. §9 asks whether `Set Step` can
represent that, with the steps and the dependency relation stated, and what
the representation keeps and drops. `Step` is a type of steps; `Dep a b` says
step `b` depends on step `a`. The region of a step is what is DOWNSTREAM of
it under `Dep`: reached by following the dependencies, not collected by hand.

Run in its own section with its own carriers, then as a frame, so the base
development's `M` stays a bare type. -/

section Region
variable (Step : Type) (Dep : Step → Step → Prop)

/-- A region: a set of steps. -/
def Region : Type := Step → Prop

/-- Nothing hangs here. -/
def Region.empty : Region Step := fun _ => False

/-- Downstream of `a`: reached from `a` by following one or more dependencies. -/
inductive Downstream (a : Step) : Step → Prop
  | step {b : Step} : Dep a b → Downstream a b
  | tail {b c : Step} : Downstream a b → Dep b c → Downstream a c

/-- The region that hangs on a step: everything downstream of it. -/
def hangsOn (a : Step) : Region Step := fun b => Downstream Step Dep a b

/-- FOLLOWING, NOT COLLECTING. A region is closed under the dependencies:
    whatever depends on something in it is in it. -/
theorem hangsOn_closed (a b c : Step) (hb : hangsOn Step Dep a b) (hbc : Dep b c) :
    hangsOn Step Dep a c := Downstream.tail hb hbc

/-- Inclusion of regions. -/
def Region.sub (A B : Region Step) : Prop := ∀ x, A x → B x

/-- Inclusion is a partial order on regions: reflexive, transitive,
    antisymmetric. A mathematical fact about the chosen sets, and that is all
    it is (the paper's §12b). -/
theorem sub_refl (A : Region Step) : Region.sub Step A A := fun _ h => h

theorem sub_trans (A B C : Region Step)
    (h1 : Region.sub Step A B) (h2 : Region.sub Step B C) : Region.sub Step A C :=
  fun x hx => h2 x (h1 x hx)

theorem sub_antisymm (A B : Region Step)
    (h1 : Region.sub Step A B) (h2 : Region.sub Step B A) : A = B := by
  funext x
  exact propext ⟨h1 x, h2 x⟩

/-- INCLUSION WHERE IT HOLDS. If `b` hangs on `a`, then what hangs on `b`
    hangs on `a`: a sub-dependency's region lies inside the region it rides
    in. This is the one place inclusion arises FROM the dependencies rather
    than being imposed on them. -/
theorem hangsOn_sub_of_mem (a b : Step) (hb : hangsOn Step Dep a b) :
    Region.sub Step (hangsOn Step Dep b) (hangsOn Step Dep a) := by
  intro c hc
  induction hc with
  | step h => exact Downstream.tail hb h
  | tail _ h ih => exact Downstream.tail ih h

/-- An effect profile: how differently each step goes. Its SUPPORT is the
    region it determines. -/
def support (w : Step → Nat) : Region Step := fun x => w x ≠ 0

/-- WHAT THE REPRESENTATION DROPS. A region keeps WHICH steps go differently
    and drops HOW differently: two profiles with the same support give the
    same region and are not the same profile. "Counting, not quantity" is
    exactly this loss, and the paper owns it. -/
theorem region_forgets_degree (x : Step) :
    ∃ w₁ w₂ : Step → Nat, support Step w₁ = support Step w₂ ∧ w₁ ≠ w₂ := by
  refine ⟨fun _ => 1, fun _ => 2, ?_, ?_⟩
  · funext y
    exact propext ⟨fun _ => Nat.succ_ne_zero 1, fun _ => Nat.succ_ne_zero 0⟩
  · intro h
    exact absurd (congrFun h x) (by decide)

/-- Two ways to read a nested pair, both consistent with the inclusion. -/
def firstTheSmaller (A B : Region Step) : Prop := Region.sub Step A B
def firstTheLarger (A B : Region Step) : Prop := Region.sub Step B A

/-- INCLUSION UNDERDETERMINES CHOICE. On any nested pair the inclusion fact is
    consistent with putting the smaller region first and with putting the
    larger first. A theorem about nested regions is not a theorem that
    "dominated stakes lose"; which comes first needs its own grounds, and
    they are not in the order. -/
theorem inclusion_underdetermines (A B : Region Step) (h : Region.sub Step A B) :
    firstTheSmaller Step A B ∧ firstTheLarger Step B A := ⟨h, h⟩

/-- `M := Region Step`, `zero := Region.empty`: the base development with the
    region as magnitude. Every theorem above holds here, since every one is
    parametric in `F`. What becomes stateable is the stopping condition's form
    with inclusion as the declared order; nothing is derived from it, and
    which `le` is right is not the file's to say. -/
def regionFrame (Thing Position : Type) (self : Position → Thing) : Frame :=
  { Thing := Thing, M := Region Step, zero := Region.empty Step,
    Position := Position, self := self }

example (Thing Position : Type) (self : Position → Thing) (gain cost : Region Step) : Prop :=
  WarrantedClosure (regionFrame Step Thing Position self) (Region.sub Step) gain cost

/-- POSITION STILL DOES NOT CHANGE MAGNITUDE. An edge's region is a field; the
    same `rfl` as `all_held`, in the region frame. The second hinge survives
    giving `M` structure. -/
theorem region_held (Thing Position : Type) (self : Position → Thing)
    (e : Edge (regionFrame Step Thing Position self)) :
    Held (regionFrame Step Thing Position self) (Edge.toStake _ e) := rfl

end Region

/-- A two-step world, to show the order is partial and not total. -/
inductive Two | a | b
  deriving DecidableEq

def onlyA : Region Two := fun x => x = .a
def onlyB : Region Two := fun x => x = .b

/-- NOT A TOTAL ORDER. Two regions neither of which includes the other.
    Inclusion cannot be a universal comparison rule because it does not
    compare everything. -/
theorem incomparable_regions : ¬ Region.sub Two onlyA onlyB ∧ ¬ Region.sub Two onlyB onlyA :=
  ⟨fun h => Two.noConfusion (h Two.a rfl : Two.a = Two.b),
   fun h => Two.noConfusion (h Two.b rfl : Two.b = Two.a)⟩

/-! ### (4) Direction at the floor (*What a Stake Is Made Of* §7) -/

/-- A direction: for each thing, the steps its own filing moves it toward. A
    fact about the thing's dynamics; it takes no `Position`. -/
def Direction (Step : Type) : Type := F.Thing → Step → Prop

/-- Runs against a holder's direction — "bad for" the holder, represented as
    the complement of what it moves toward. Position-free by type, like the
    second hinge: the sign is the holder's, not a reader's. -/
def RunsAgainst {Step : Type} (dir : Direction F Step) (x : F.Thing) (st : Step) : Prop :=
  ¬ dir x st

/-- A PREFERENCE IS A STAKE. What a thing wants is a dependency of its own,
    held at size, on the sheet by being real — like the inquiry's stake. -/
def PreferenceStake (holder : F.Thing) (m : F.M) : Stake F := ⟨holder, m⟩

theorem preference_held (h : F.Thing) (m : F.M) : Held F (PreferenceStake F h m) := rfl

theorem preference_on_sheet (h : F.Thing) (m : F.M) :
    WholeSheet F (PreferenceStake F h m) := trivial

/-- The reason a reader might give: this stake crosses my direction. `stepOf`
    says which step a stake bears on; `me` is the reader. -/
def Crosses {Step : Type} (dir : Direction F Step) (me : F.Thing)
    (stepOf : Stake F → Step) (s : Stake F) : Prop :=
  RunsAgainst F dir me (stepOf s)

/-- DIRECTION AS A WEIGHT IS PARTIALITY. A reader that discounts a stake
    because it crosses the reader's own direction, while reading an equal
    stake that does not cross it at size, is partial: an instance of
    `discount_for_reason_is_partial` with the reason "against my direction".
    The direction is in the hypotheses and nowhere in the proof — which is
    the separation §7 asked for: the sign enters at the floor, as the
    holder's own stakes, and never as a multiplier on anyone else's. -/
theorem direction_as_weight_is_partial {Step : Type} (dir : Direction F Step)
    (stepOf : Stake F → Step) (v : Vantage F) (s t : Stake F)
    (hs_with : ¬ Crosses F dir (F.self v.pos) stepOf s)
    (ht_against : Crosses F dir (F.self v.pos) stepOf t)
    (hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (hs : OpenHandAt F v.read s)
    (m : F.M) (hadm : Admits F v.read t m) (hdisc : v.read.wt t m ≠ m) :
    Partial F v :=
  discount_for_reason_is_partial F (Crosses F dir (F.self v.pos) stepOf) v s t
    hs_with ht_against hm hsv htv hs m hadm hdisc

/-! ### (5) Comparison is not selection: a type of acts -/

/-- An act: a move on a stake in reach (Report §6, "a type of actions").
    Nothing about the hand is in it. -/
structure ActOn (p : F.Position) where
  target  : Stake F
  inReach : Reach p target

/-- ACTING WITHIN REACH IS NOT PARTIALITY ON ITS OWN. Partiality is a fact
    about the reading; an act adds nothing to it. A vantage with the hand
    open stays not partial whatever it acts on. -/
theorem act_not_partial (v : Vantage F) (_a : ActOn F Reach v.pos)
    (ho : OpenHand F v.read) : ¬ Partial F v :=
  open_hand_not_partial F v ho

/-- AND AN ACT DOES NOT CHANGE A SIZE. The target of an act is at its size,
    like every stake: `rfl`. -/
theorem act_target_held (p : F.Position) (a : ActOn F Reach p) : Held F a.target := rfl

/-! ### (6) The model against the argument — what the run settles

Checked. (1) The filing line types; the thermostat files and the rock does
not. (2) `Stake` is recoverable from `Edge` by forgetting what the edge rides
on; §5a's `D` is derived from a set of edges rather than supplied; an edge is
held, on the sheet, and held when unseen, each by `rfl` or `trivial`. (3)
Inclusion of regions is a partial order; it arises from the dependencies
exactly where a sub-dependency rides inside another (`hangsOn_sub_of_mem`); it
is not total (`incomparable_regions`); it drops degree
(`region_forgets_degree`); it does not pick a direction of choice
(`inclusion_underdetermines`); and with `M := Region Step` every theorem in the
file still holds and the second hinge still holds (`region_held`). (4) A
preference is a stake; reading another's stake down because it crosses my
direction is partiality, by the one discount theorem. (5) An act on a stake
in reach is typeable and adds nothing to partiality or to size.

NOT settled, and not claimed. That a region IS the size of a stake: the file
can represent the claim and check what follows from the representation; it
cannot check the identification. That every holder of a stake is a filer:
`Stake` does not carry its filer, and the run does not make it. That
`Filer.Files` is the right floor: it is a definition, and it is the one the
critic should now read, together with `hangsOn`. So the one declared
definition did not become a theorem. What changed is where the definition
sits: `Stake` can now be built from an account of filing and dependency
instead of standing alone, and the pieces it is built from are each checkable
for what they say. Definitions remain everywhere, as the paper's §8 said;
there is one fewer that stands alone.

(7) The outside round, 11-4 (vK). `Files` was read by critics who did not
write it. One of the two declared weak points held up as declared: the hinged
sign passed vJ's clauses with its account in one part of its state and its
guidance in another, and the clause that closes it — read off the account —
is now the third conjunct of `Files`. The other declared weak point stood
open at vK: `about` is a field, so a system whose one variable both tracks a
thing and drives its dynamics passes `ReadOff` too. The wording question was
John's, not the file's, and he ruled it the same day: thinking is
contextualizing, the floor is where contextualizing begins, the vending
machine thinks one notch, and where the ordinary word places the thermostat
is not CT's concern ("i love the phrease thinking is contextualizing.  i
don't care about where the thermostat falls.").

(8) The direction run, 11-4 (vL). The hot rock was built against vK and
passed (`hotRock_files_vK`). The intended clause — misfit runs against what
the holder moves toward — was tried first in a finite search over every
possible target for each toy (the script is kept with the run note), and it
cannot separate the rock from the thermostat: a dynamics that settles can be
handed its settling set as its target, and then the rock "moves toward"
cracking-when-warm as the thermostat moves toward the set point. What does
separate them is whether the step connects the state with the thing at all.
`act` is what a step does; `Engaged` is the fourth clause; the thermostat,
the vending machine and the contemplator pass it by their own steps, and the
rock fails it by two `rfl`-by-cases lemmas. Direction survives as what an
engaged step does, not as the test. What is still declared, and said so:
`fits` and `about`. A thermostat with a stuck strip files, badly, because its
step still meets the room by its strip; the file now checks that a declared
aboutness is backed by a step that meets the thing, and still cannot check
what a state is of in the world. -/

#print axioms edge_held
#print axioms edge_on_sheet
#print axioms unseen_edge_held
#print axioms edge_rides
#print axioms filer_edge_held
#print axioms thermostat_files
#print axioms rock_not_account
#print axioms rock_not_files
#print axioms hangsOn_closed
#print axioms sub_refl
#print axioms sub_trans
#print axioms sub_antisymm
#print axioms hangsOn_sub_of_mem
#print axioms region_forgets_degree
#print axioms inclusion_underdetermines
#print axioms region_held
#print axioms incomparable_regions
#print axioms preference_held
#print axioms preference_on_sheet
#print axioms direction_as_weight_is_partial
#print axioms act_not_partial
#print axioms act_target_held
#print axioms readOff_of_fits_eq
#print axioms vending_files
#print axioms contemplator_not_files
#print axioms contemplator'_files
#print axioms hingedSign_files_vJ
#print axioms hingedSign_same_fit_different_step
#print axioms hingedSign_not_files
#print axioms thermostat_engaged
#print axioms vending_engaged
#print axioms contemplator'_engaged
#print axioms hotRock_files_vK
#print axioms hotRock_not_engaged
#print axioms hotRock_not_files

/-! ## 12b. The weighting as a filing — vM (11-4-26)

At John's "again, aren't we saying: if you stop thinking...you're no longer
doing ethics." The weighting clause (ruled 10-20): a weighting is a claim
about the stake weighted, and its reason has to be about the dependencies.
Link 5 put the first half in the type — `wt` returns an `M`. The inversion
(ruled 10-29) says why it is a claim: a thinking step is a filing, a state
held as of something, and a reader's hand on a stake is such a state. This
section takes a reader's hand on one stake as a `Filer` and checks what the
filing line says about it. The clause is then not a second ruling beside
the inversion; it is the inversion applied to a weighting, with the dilemma
that closes the lab result following in two theorems. -/

/-- THE HAND AS A FILER. A reader's weighting of a stake, taken as a state
    held as of that stake. The state is the size the hand reports; the ways
    the stake can be are its sizes; the state fits when the report is the
    size; the next step is to act on the reported size. `act` — what acting
    on a size does to the stake's holder — is reach, which the base frame
    does not have, and is a parameter. -/
def handOf (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M) : Filer F :=
  { holder := F.self v.pos, about := s.holder,
    S := F.M, W := F.M, Step := F.M,
    held := v.read.wt s s.magnitude,
    fits := fun r m => r = m,
    next := fun r => r,
    act := act }

/-- A WEIGHTING IS A CLAIM ABOUT THE STAKE (link 5, as a theorem rather than
    a remark on the type): the hand is an account — it can fit the stake's
    size and it can fail to. Needs two sizes to tell apart, and nothing else. -/
theorem hand_is_account (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M)
    (m₁ m₂ : F.M) (hne : m₁ ≠ m₂) : Filer.IsAccount F (handOf F v s act) :=
  ⟨⟨m₁, m₁, rfl⟩, ⟨m₁, m₂, hne⟩⟩

/-- The step is guided by the hand: another report would give another step. -/
theorem hand_is_guided (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M)
    (m : F.M) (hne : m ≠ v.read.wt s s.magnitude) : Filer.Guided F (handOf F v s act) :=
  ⟨m, hne⟩

/-- The step is read off what the hand says: the report IS the claim. -/
theorem hand_is_readOff (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M) :
    Filer.ReadOff F (handOf F v s act) :=
  readOff_of_fits_eq F (handOf F v s act) (fun r r' h => ((h r).1 rfl : r' = r).symm)

/-- A READING FILES when its acting is real: the three clauses the base frame
    can check, and engagement as the hypothesis reach supplies. -/
theorem hand_files (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M)
    (m₁ m₂ : F.M) (hne : m₁ ≠ m₂) (m : F.M) (hm : m ≠ v.read.wt s s.magnitude)
    (heng : Filer.Engaged F (handOf F v s act)) : Filer.Files F (handOf F v s act) :=
  ⟨hand_is_account F v s act m₁ m₂ hne, hand_is_guided F v s act m hm,
   hand_is_readOff F v s act, heng⟩

/-- THE OPEN HAND IS THE FITTING STATE. If the estimate admits the stake's
    size and the hand is open there, the held state fits the stake's way. -/
theorem open_hand_fits (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M)
    (hadm : Admits F v.read s s.magnitude) (ho : OpenHandAt F v.read s) :
    (handOf F v s act).fits (handOf F v s act).held s.magnitude :=
  ho s.magnitude hadm

/-- PARTIALITY IS A MISFIT. A closed hand on an admitted size is a state that
    fails to fit the stake at that size: the wrong is a wrong claim, not a
    broken rule. "Partiality is false, not forbidden," as a filing fact. -/
theorem closed_hand_misfits (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M)
    (m : F.M) (_hadm : Admits F v.read s m) (hcl : v.read.wt s m ≠ m) :
    ¬ (handOf F v s act).fits (v.read.wt s m) m :=
  hcl

/-- THE FIRST HORN. A reason that tracks size — the same for any two stakes
    of one size — never yields a discount: there are no two equal stakes with
    the reason on one and not the other. So "a correct reading of a smaller
    stake" is the only thing such a reason can be. `discount_for_reason_is_partial`
    is the second horn: a reason that does yield one is partiality. There is
    no third thing, and the two theorems between them are the dilemma. -/
theorem size_reason_no_discount (P : Stake F → Prop)
    (hP : ∀ s t : Stake F, s.magnitude = t.magnitude → (P s ↔ P t)) :
    ¬ ∃ s t : Stake F, s.magnitude = t.magnitude ∧ ¬ P s ∧ P t :=
  fun ⟨s, t, hm, hns, hpt⟩ => hns ((hP s t hm).2 hpt)

/-- THE SUBTRACTION TEST, FOR ANY FILER. A state that fits every way the thing
    can be is not an account of the thing: there is nothing it could be wrong
    about, so nothing it is right about. (The rock's failure, stated once for
    all.) -/
theorem always_fits_not_account (f : Filer F) (h : ∀ s w, f.fits s w) :
    ¬ Filer.IsAccount F f :=
  fun ha => ha.2.elim (fun s hs => hs.elim (fun w hw => hw (h s w)))

/-- A hand that cannot be wrong: the same reader, the same stake, with every
    report counted as fitting every size. -/
def blindHand (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M) : Filer F :=
  { handOf F v s act with fits := fun _ _ => True }

/-- THE SUBTRACTION TEST, FOR THE HAND (vN). A weighting that cannot be wrong
    about the stake is not a claim about it. Take away the hand's being about
    the stake — its being able to fit or fail to fit the stake's size — and
    what remains is a number with nothing it is a number of. This is the test
    the inversion is checked by, written for the one case the ethics rests on:
    a weighting is a filing because a weighting that was not one would not be
    a weighting. -/
theorem blind_hand_not_account (v : Vantage F) (s : Stake F) (act : F.M → F.M → F.M → F.M × F.M) :
    ¬ Filer.IsAccount F (blindHand F v s act) :=
  always_fits_not_account F (blindHand F v s act) (fun _ _ => trivial)

/-- Acting on a size, in the toy, with nothing to act on: the parameter at its
    emptiest, so that the toy facts below are about the hand and not the reach. -/
def noAct : Fin 3 → Fin 3 → Fin 3 → Fin 3 × Fin 3 := fun _ st w => (st, w)

/-- The discounter's hand on the stranger's size-2 stake reports 1 at 2: a misfit. -/
theorem discounter_hand_misfits :
    ¬ (handOf Toy ⟨0, readN⟩ ⟨2, 2⟩ noAct).fits (handOf Toy ⟨0, readN⟩ ⟨2, 2⟩ noAct).held (2 : Fin 3) :=
  show readN.wt ⟨2, 2⟩ 2 ≠ 2 from by decide

/-- The sun's hand on the same stake reports 2 at 2: it fits. -/
theorem sun_hand_fits :
    (handOf Toy ⟨0, readA⟩ ⟨2, 2⟩ noAct).fits (handOf Toy ⟨0, readA⟩ ⟨2, 2⟩ noAct).held (2 : Fin 3) :=
  rfl

#print axioms hand_is_account
#print axioms hand_is_guided
#print axioms hand_is_readOff
#print axioms hand_files
#print axioms open_hand_fits
#print axioms closed_hand_misfits
#print axioms size_reason_no_discount
#print axioms always_fits_not_account
#print axioms blind_hand_not_account
#print axioms discounter_hand_misfits
#print axioms sun_hand_fits

/-! ## 12c. "About the dependencies," in the region frame — vO (11-5-26)

The weighting clause (ruled 10-20): a weighting is a claim about the stake
weighted, and its reason has to be about the dependencies. §12b put the first
half in the type and took "about the dependencies" as "tracks size," the base
frame's only handle on the dependencies. The run note said the restatement in
the region frame was owed. This is it. In the region frame a stake's
magnitude is `hangsOn Dep a`, the set of steps downstream of the edge's step;
"a function of the magnitude" and "a function of what hangs on the edge" are
then one predicate, and the clause's phrase can be said where it means what
it says. -/

/-- ABOUT THE DEPENDENCIES. A reason on stakes is about the dependencies when
    its verdict is a function of the stake's size and of nothing else — not
    of the holder, not of the reader's position, not of the hour. In the base
    frame the size is a bare `M`; in the region frame it is the region hanging
    on the edge, and this definition reads literally. -/
def AboutTheDependencies (P : Stake F → Prop) : Prop :=
  ∃ Q : F.M → Prop, ∀ s, P s ↔ Q s.magnitude

/-- A reason about the dependencies tracks size: two stakes of one size get
    one verdict. §12b's hypothesis, derived from the definition. -/
theorem about_deps_tracks_size (P : Stake F → Prop) (h : AboutTheDependencies F P) :
    ∀ s t : Stake F, s.magnitude = t.magnitude → (P s ↔ P t) :=
  fun s t hm => h.elim fun Q hQ =>
    ⟨fun hs => (hQ t).2 (Eq.mp (congrArg Q hm) ((hQ s).1 hs)),
     fun ht => (hQ s).2 (Eq.mpr (congrArg Q hm) ((hQ t).1 ht))⟩

/-- THE FIRST HORN, RESTATED. A reason about the dependencies never yields a
    discount: there are no two equal stakes with the reason on one and not the
    other. So such a reason can only be a correct reading of a smaller stake. -/
theorem about_deps_no_discount (P : Stake F → Prop) (h : AboutTheDependencies F P) :
    ¬ ∃ s t : Stake F, s.magnitude = t.magnitude ∧ ¬ P s ∧ P t :=
  size_reason_no_discount F P (about_deps_tracks_size F P h)

/-- THE DILEMMA, AS ONE THEOREM — "no third thing." Take any reason and any
    discount it yields: two stakes of one size, the reason on one and not the
    other, the hand open on the one without it and closed on the one with it.
    Then the reason is NOT about the dependencies, AND the reader is partial.
    The two horns are the two conjuncts. What the statement excludes is the
    third thing — a reason that yields a discount and is about the
    dependencies — and it excludes it for every reason at once. -/
theorem discount_dilemma (P : Stake F → Prop) (v : Vantage F) (s t : Stake F)
    (hnot : ¬ P s) (hyes : P t) (hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (hs : OpenHandAt F v.read s)
    (m : F.M) (hadm : Admits F v.read t m) (hdisc : v.read.wt t m ≠ m) :
    ¬ AboutTheDependencies F P ∧ Partial F v :=
  ⟨fun h => about_deps_no_discount F P h ⟨s, t, hm, hnot, hyes⟩,
   discount_for_reason_is_partial F P v s t hnot hyes hm hsv htv hs m hadm hdisc⟩

section RegionReason
variable (Step : Type) (Dep : Step → Step → Prop)
variable (Thing Position : Type) (self : Position → Thing)

/-- A reason stated on regions — on what hangs on an edge — lifted to the
    stakes of the region frame, whose magnitudes are regions. -/
def ofRegion (Q : Region Step → Prop) :
    Stake (regionFrame Step Thing Position self) → Prop :=
  fun s => Q s.magnitude

/-- IN THE REGION FRAME THE CLAUSE READS LITERALLY. A reason that is a
    function of what hangs on the edge is about the dependencies. -/
theorem ofRegion_about_deps (Q : Region Step → Prop) :
    AboutTheDependencies (regionFrame Step Thing Position self)
      (ofRegion Step Thing Position self Q) :=
  ⟨Q, fun _ => Iff.rfl⟩

/-- THE RESTATEMENT OWED. In the frame where size is the region, a reason that
    is a function of what hangs on the edge never yields a discount. "Tracks
    size" (§12b) and "about the dependencies" (the clause) are one hypothesis
    here. -/
theorem region_reason_no_discount (Q : Region Step → Prop) :
    ¬ ∃ s t : Stake (regionFrame Step Thing Position self),
      s.magnitude = t.magnitude ∧
      ¬ ofRegion Step Thing Position self Q s ∧ ofRegion Step Thing Position self Q t :=
  about_deps_no_discount (regionFrame Step Thing Position self)
    (ofRegion Step Thing Position self Q) (ofRegion_about_deps Step Thing Position self Q)

/-- An edge built from a step: its magnitude is what hangs on that step. -/
def edgeOf (holder about : Thing) (a : Step) : Edge (regionFrame Step Thing Position self) :=
  ⟨holder, about, hangsOn Step Dep a⟩

/-- ON SUCH AN EDGE, A REASON ABOUT THE DEPENDENCIES IS `Q (hangsOn Dep a)` —
    a function of what hangs on the edge, by `rfl`. This is the sentence the
    run note owed, as a definitional equality. -/
theorem ofRegion_edge (Q : Region Step → Prop) (holder about : Thing) (a : Step) :
    ofRegion Step Thing Position self Q
      (Edge.toStake _ (edgeOf Step Dep Thing Position self holder about a))
      = Q (hangsOn Step Dep a) := rfl

/-- A reason about WHO holds the edge. -/
def holderReason (me : Thing) : Stake (regionFrame Step Thing Position self) → Prop :=
  fun s => s.holder = me

/-- NOT ABOUT THE DEPENDENCIES. As soon as two holders can share a region, a
    reason that reads the holder is not a function of the region: the same
    dependencies, two verdicts. "Mine" is such a reason (link 7). -/
theorem holder_reason_not_about_deps (me other : Thing) (hne : me ≠ other) (R : Region Step) :
    ¬ AboutTheDependencies (regionFrame Step Thing Position self)
        (holderReason Step Thing Position self me) :=
  fun h =>
    hne ((about_deps_tracks_size _ _ h ⟨me, R⟩ ⟨other, R⟩ rfl).1 rfl).symm

end RegionReason

/-- The two-step world as a region frame: two things, each its own position. -/
def twoFrame : Frame := regionFrame Two Two Two id

/-- In the toy: "the edge reaches step b" is about the dependencies; "the holder
    is a" is not — the stakes ⟨a, onlyB⟩ and ⟨b, onlyB⟩ share a region. -/
theorem toy_reach_about_deps :
    AboutTheDependencies twoFrame (ofRegion Two Two Two id (fun R => R Two.b)) :=
  ofRegion_about_deps Two Two Two id _

theorem toy_holder_not_about_deps :
    ¬ AboutTheDependencies twoFrame (holderReason Two Two Two id Two.a) :=
  holder_reason_not_about_deps Two Two Two id Two.a Two.b (fun h => Two.noConfusion h) onlyB

#print axioms about_deps_tracks_size
#print axioms about_deps_no_discount
#print axioms discount_dilemma
#print axioms ofRegion_about_deps
#print axioms region_reason_no_discount
#print axioms ofRegion_edge
#print axioms holder_reason_not_about_deps
#print axioms toy_reach_about_deps
#print axioms toy_holder_not_about_deps

/-! ## 13. What this rests on, in the world

Three things, and nothing else.

1. `no_outside` — a tautology.
2. The reader. Every `Reading` carries a `Position`; the reader who checks
   this file is performing that.
3. `Stake` — a dependency. The second hinge is a field of `Stake` because an
   observer is not a relatum of a dependency.

vD adds no fourth thing. vE adds none either: a self as a context with an
outside was already in §0, and §4b only names which stakes a reader's own
readings land on. vF adds none: `D` (what rides on what) and `Reach` (what a
position can act on) are parameters of the development like the carriers,
not axioms — the file says nothing about which dependencies or which reaches
obtain, and the theorems hold for all of them. Meaning and purpose are the
stake definition read from its two ends. vG adds none: an `Account` is an
estimate with its source made explicit, and a `Filing` is the pairing the
vD type had taken for granted. `TrueOfSource` is link 6 — the account is
made of what reached the part — stated as a hypothesis rather than proved,
because the file cannot see what reached anyone. Under it, every failure of
an estimate is a failure of filing: the answers were true; the question was
wrong. vI adds none: it changes which hands count as open (the ones that
report the sizes considered) and which readers count as partial (any whose
hand is not open somewhere in view), and both are definitions already here,
narrowed to what the prose said. The factoring of a reading into estimate and
weighting is not a premise; it is the type saying what the prose said —
that reach and accuracy are one kind of term and the hand is another. What
remains empirical is resolution: which stakes are in view, how sharply. That
is correspondence work, not foundation. vJ adds none: `Filer`, `Edge`,
`Region`, `Direction` and `ActOn` are types beside `Stake`, not claims about
the world; the dependency relation `Dep`, the direction `dir` and the reach
are parameters, as `D` and `Reach` were. What the run shows is that `Stake`
is recoverable from them and that every theorem holds with the region as
magnitude. The one definition with weight has not become a theorem; it has
become `Filer.Files` and `hangsOn`, in the open. vK adds none: it narrows
`Files` by one clause toward the word, at an outside reader's compiled case,
as vI narrowed `Partial`; nothing was added to do it, and what the clause says
— two states that say the same thing do the same thing — is what "read off
the state" meant all along. vL adds one field to `Filer` and nothing to
`Frame`: `act`, what a step does, which a filer always had and the type had
not written down; the fourth clause, engaged, is read off it. What the run
could not do is also recorded there: it could not make "what the holder moves
toward" a test, and it says why. vM adds none: `handOf` is a reader's hand
seen as a `Filer`, with no new carrier and `act` a parameter as `Reach` is;
what it shows is that the weighting clause is what the filing line already
says about a hand, so the lab result rests on the inversion and the stake
definition, not on a third ruling. vN adds none: the subtraction test, which
the file has carried since the rock, is written for the hand; the inversion
it checks remains a ruling, and the file says so. vO adds none:
`AboutTheDependencies` is a predicate on reasons and `ofRegion` a lift, with
no new carrier; what it shows is that the clause's "about the dependencies"
and §12b's "tracks size" are one hypothesis in the frame where size is the
region, and that the dilemma is one theorem. The loss it inherits is §12a
(3)'s, declared there: the region keeps which steps go differently and drops
how much.

The word "God" does not occur in this file. -/

end CT
