/-!
# CT — the lab half, in Lean 4 (core only, no Mathlib) — vH

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
finding. vA, vB, vC and vD have each found one.

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

/-- The hand is open at a stake: the weighting is the identity there. -/
def OpenHandAt {p : F.Position} (r : Reading F p) (s : Stake F) : Prop :=
  ∀ m, r.wt s m = m

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
than its size (ruled 10-13 night). In vD this is a fact about the WEIGHTING
alone: two stakes of equal magnitude, both in view, whose candidate sizes the
reader treats differently. The estimate does not enter. A reader who sees one
stake sharply and an equal one dimly, honestly, is not partial; a reader who
sees nothing of a stake is not partial toward it. Those were the two things
vC could not say. -/

def Partial (v : Vantage F) : Prop :=
  ∃ s t : Stake F,
    s.magnitude = t.magnitude ∧
    InView F v.read s ∧ InView F v.read t ∧
    ∃ m : F.M, v.read.wt s m ≠ v.read.wt t m

/-- Partiality at a particular stake: some equal stake in view is weighted
    differently from it. -/
def PartialAt (v : Vantage F) (s : Stake F) : Prop :=
  InView F v.read s ∧
  ∃ t : Stake F, t.magnitude = s.magnitude ∧ InView F v.read t ∧
    ∃ m : F.M, v.read.wt s m ≠ v.read.wt t m

theorem partial_at_is_partial (v : Vantage F) (s : Stake F) (h : PartialAt F v s) : Partial F v := by
  obtain ⟨hs, t, hm, ht, m, hne⟩ := h
  exact ⟨s, t, hm.symm, hs, ht, m, hne⟩

/-- The vC form — my own stake vs. another's — is a special case. -/
def PartialTowardSelf (v : Vantage F) : Prop :=
  ∃ s t : Stake F,
    s.magnitude = t.magnitude ∧
    s.holder = F.self v.pos ∧ t.holder ≠ F.self v.pos ∧
    InView F v.read s ∧ InView F v.read t ∧
    ∃ m : F.M, v.read.wt s m ≠ v.read.wt t m

theorem partial_toward_self_is_partial (v : Vantage F) (h : PartialTowardSelf F v) : Partial F v := by
  obtain ⟨s, t, hm, _, _, hs, ht, m, hne⟩ := h
  exact ⟨s, t, hm, hs, ht, m, hne⟩

/-- An open hand is never partial. Partiality is in the weighting and
    nowhere else. -/
theorem open_hand_not_partial (v : Vantage F) (h : OpenHand F v.read) : ¬ Partial F v := by
  intro ⟨s, t, _, _, _, m, hne⟩
  apply hne
  rw [h s m, h t m]

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
    ¬ PartialAt F v s ∧ ¬ PartialAt F v t := by
  -- The estimates (sharp on s, merely honest and wide on t) do not enter the
  -- proof at all: that is the point. Partiality is a fact about the hand.
  have hp : ¬ Partial F v := open_hand_not_partial F v ho
  constructor
  · intro h; exact hp (partial_at_is_partial F v s h)
  · intro h; exact hp (partial_at_is_partial F v t h)

/-- A discount for lateness is partiality. Two equal stakes in view; the
    hand open on one and closed on the other at some size: partial. -/
theorem discount_is_partial (v : Vantage F) (s t : Stake F)
    (hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (hs : OpenHandAt F v.read s)
    (m : F.M) (hdisc : v.read.wt t m ≠ m) :
    Partial F v := by
  refine ⟨s, t, hm, hsv, htv, m, ?_⟩
  rw [hs m]
  exact fun h => hdisc h.symm

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
    (m : F.M) (hdisc : v.read.wt t m ≠ m) :
    Partial F v :=
  discount_is_partial F v s t hm hsv htv hs m hdisc

/-- The scale discount. `Far` is whatever frame the reader holds a stake
    against — the cosmos, the century, the crowd. Reading the far stake lower
    than an equal near one is partiality; the frame does not enter. -/
theorem discount_by_scale_is_partial (Far : Stake F → Prop) (v : Vantage F) (s t : Stake F)
    (hnear : ¬ Far s) (hfar : Far t)
    (hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (hs : OpenHandAt F v.read s)
    (m : F.M) (hdisc : v.read.wt t m ≠ m) :
    Partial F v :=
  discount_for_reason_is_partial F Far v s t hnear hfar hm hsv htv hs m hdisc

/-! ## 4. Love

love = vantage − partiality. A vantage is loving when it is a vantage (it
sees at least one real stake truly) and its hand is open across everything
it sees — whatever its reach, whatever its sharpness. Perfect love is the
limit: loving and fully correspondent. Nothing here mentions feeling. -/

def Loving (v : Vantage F) : Prop := IsVantage F v ∧ ¬ Partial F v

def PerfectLove (v : Vantage F) : Prop := Loving F v ∧ Correspondent F v.read

theorem correspondent_loving (v : Vantage F) (h : Correspondent F v.read)
    (hs : ∃ s : Stake F, s.magnitude ≠ F.zero) : Loving F v :=
  ⟨correspondent_is_vantage F v h hs, fun hp => partial_not_correspondent F v hp h⟩

theorem correspondent_perfect (v : Vantage F) (h : Correspondent F v.read)
    (hs : ∃ s : Stake F, s.magnitude ≠ F.zero) : PerfectLove F v :=
  ⟨correspondent_loving F v h hs, h⟩

theorem loving_not_partial (v : Vantage F) (h : Loving F v) : ¬ Partial F v := h.2

/-- THE GRANDMOTHER, THE BACTERIUM, THE CANDLE. A reader with an open hand
    that sees at least one real stake truly is loving — however few stakes it
    sees and however dimly it sees the rest. Nothing about reach or sharpness
    appears in the hypotheses. Dimness is a limit; it is never the fault. -/
theorem open_hand_loving (v : Vantage F) (hv : IsVantage F v) (ho : OpenHand F v.read) :
    Loving F v :=
  ⟨hv, open_hand_not_partial F v ho⟩

/-! ### 4a. Loving toward one

The per-stake form the prose uses constantly ("this reader loves this one")
and vC could not type. A vantage is loving toward `s` when it sees `s`
truly — in view, honest, hand open there — and no equal stake in view is
weighted differently from it. -/

def LovingToward (v : Vantage F) (s : Stake F) : Prop :=
  InView F v.read s ∧ HonestAt F v.read s ∧ OpenHandAt F v.read s ∧ ¬ PartialAt F v s

/-- A loving vantage is loving toward every stake it sees honestly with an
    open hand. -/
theorem loving_toward_of_loving (v : Vantage F) (h : Loving F v) (s : Stake F)
    (hsv : InView F v.read s) (hh : HonestAt F v.read s) (ho : OpenHandAt F v.read s) :
    LovingToward F v s :=
  ⟨hsv, hh, ho, fun hp => h.2 (partial_at_is_partial F v s hp)⟩

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
    ¬ PartialAt F r.v s := h.1.2.2.2

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
    ∃ m : F.M, r.v.read.wt s m ≠ r.v.read.wt t m

theorem leans_is_partial (r : Reader F) (h : LeansToward F r) : Partial F r.v := by
  obtain ⟨s, t, hm, _, _, hs, ht, m, hne⟩ := h
  exact ⟨s, t, hm, hs, ht, m, hne⟩

/-- THE BELL FILED AS SIZE (vG). `LeansToward` is the filing error in the hand.
    The bell — `r.selfCtx s.holder` — is a true account of constituency. Leaning is
    the weighting varying with the bell at fixed size: a true answer to "is this
    mine?" filed as an answer to "how large is it?". Stated as an equivalence so
    that no reading of `LeansToward` can mean anything else. -/
def BellAsSize (r : Reader F) : Prop :=
  ∃ s t : Stake F, s.magnitude = t.magnitude ∧
    (r.selfCtx s.holder ∧ ¬ r.selfCtx t.holder) ∧
    InView F r.v.read s ∧ InView F r.v.read t ∧
    ∃ m : F.M, r.v.read.wt s m ≠ r.v.read.wt t m

theorem leans_is_bell_as_size (r : Reader F) : LeansToward F r ↔ BellAsSize F r := by
  constructor
  · intro ⟨s, t, hm, hs, ht, hsv, htv, m, hne⟩
    exact ⟨s, t, hm, ⟨hs, ht⟩, hsv, htv, m, hne⟩
  · intro ⟨s, t, hm, ⟨hs, ht⟩, hsv, htv, m, hne⟩
    exact ⟨s, t, hm, hs, ht, hsv, htv, m, hne⟩

/-- "Mine only" is leaning with the self shrunk to the one at the position:
    if the reader's self-context is exactly {self}, partiality toward self is
    leaning toward the self-context. -/
theorem partial_toward_self_is_leaning (r : Reader F)
    (hexact : ∀ x, r.selfCtx x ↔ x = F.self r.v.pos)
    (h : PartialTowardSelf F r.v) : LeansToward F r := by
  obtain ⟨s, t, hm, hs_self, ht_self, hs, ht, m, hne⟩ := h
  refine ⟨s, t, hm, (hexact _).2 hs_self, ?_, hs, ht, m, hne⟩
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
  have := hz s.magnitude (hh E hE)
  rw [ho] at this
  exact this

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
  rw [hc.2 s s.magnitude] at this
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
    (hm : s.magnitude = t.magnitude)
    (hsv : InView F v.read s) (htv : InView F v.read t)
    (ht : OpenHandAt F v.read t)
    (m : F.M) (hz : v.read.wt s m ≠ m) :
    Partial F v := by
  refine ⟨s, t, hm, hsv, htv, m, ?_⟩
  rw [ht m]
  exact hz

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
  IsVantage F v ∧ ¬ Correspondent F v.read ∧ ¬ Partial F v

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
  fun s => ⟨h.2.1 s, h.2.2 s _⟩

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
    (m : F.M) (hdisc : v.read.wt t m ≠ v.read.wt s m) : Partial F v :=
  ⟨s, t, heq, hs, ht, m, fun h => hdisc h.symm⟩

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

def partialOn (r : Reading Toy 0) (l : List (Stake Toy)) : Bool :=
  l.any fun s => l.any fun t =>
    decide (s.magnitude = t.magnitude) && inViewOn r s && inViewOn r t &&
    ([0, 1, 2].any fun m : Fin 3 => decide (r.wt s m ≠ r.wt t m))

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

/-! vE toy: a reader at position 0 whose connected self is {0, 1} — thing 1
(the friend) is a constituent; thing 2 (the stranger) is not. -/

def selfCtx01 : Context Toy := fun x => x = 0 ∨ x = 1

theorem selfCtx01_is_self : IsSelf Toy selfCtx01 := ⟨2, by unfold selfCtx01; decide⟩

def readerA : Reader Toy := ⟨⟨0, readA⟩, selfCtx01, selfCtx01_is_self, Or.inl rfl⟩
def readerN : Reader Toy := ⟨⟨0, readN⟩, selfCtx01, selfCtx01_is_self, Or.inl rfl⟩

def inSelfOn (_r : Reader Toy) (s : Stake Toy) : Bool := decide (s.holder = 0 ∨ s.holder = 1)

def lovingTowardOn (r : Reading Toy 0) (l : List (Stake Toy)) (s : Stake Toy) : Bool :=
  inViewOn r s &&
  (match r.est s with | none => false | some E => E s.magnitude) &&
  ([0, 1, 2].all fun m : Fin 3 => decide (r.wt s m = m)) &&
  !(l.any fun t => decide (t.magnitude = s.magnitude) && inViewOn r t &&
      ([0, 1, 2].any fun m : Fin 3 => decide (r.wt s m ≠ r.wt t m)))

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
    (fun h => by cases h) (fun h => by cases h) (fun m => by rfl) 1 (by decide)

-- The bacterium does not see the friend's stake, which rides on it: a limit, not exclusion.
example : ¬ Excludes Toy ⟨0, readB⟩ ⟨1, 1⟩ :=
  own_unseen_not_excluded Toy toyD ⟨0, readB⟩ ⟨1, 1⟩ (Or.inr ⟨rfl, rfl⟩) rfl

-- The sun, with a reach that covers only thing 0 and thing 1: the stranger's stake is out
-- of reach and not excluded.
def toyReach : Fin 3 → Stake Toy → Prop := fun _ s => s.holder = 0 ∨ s.holder = 1

example : ¬ Excludes Toy ⟨0, readA⟩ ⟨2, 2⟩ :=
  out_of_reach_not_excluded Toy toyReach ⟨0, readA⟩ ⟨2, 2⟩
    (by intro h; rcases h with h | h <;> cases h) (fun m => rfl)
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
wrong. The factoring of a reading into estimate and
weighting is not a premise; it is the type saying what the prose said —
that reach and accuracy are one kind of term and the hand is another. What
remains empirical is resolution: which stakes are in view, how sharply. That
is correspondence work, not foundation.

The word "God" does not occur in this file. -/

end CT

