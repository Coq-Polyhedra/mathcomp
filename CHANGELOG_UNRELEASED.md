# Changelog (unreleased)

To avoid having old PRs put changes into the wrong section of the CHANGELOG,
new entries now go to the present file as discussed
[here](https://github.com/math-comp/math-comp/wiki/Agenda-of-the-April-23rd-2019-meeting-9h30-to-12h30#avoiding-issues-with-changelog).

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]

### Added

- in `bigop.v`, added lemma `sumnB`.

- in `seq.v`,
  + new higher-order predicate `pairwise r xs` which asserts that the relation
    `r` holds for any i-th and j-th element of `xs` such that i < j.
  + new lemmas `allrel_mask(l|r)`, `allrel_filter(l|r)`, `sub(_in)_allrel`,
    `pairwise_cons`, `pairwise_cat`, `pairwise_rcons`, `pairwise2`,
    `pairwise_mask`, `pairwise_filter`, `pairwiseP`, `pairwise_all2rel`,
    `sub(_in)_pairwise`, `eq(_in)_pairwise`, `pairwise_map`, `subseq_pairwise`,
    `uniq_pairwise`, `pairwise_uniq`, and `pairwise_eq`.

- in `path.v`, new lemmas: `sorted_pairwise(_in)`, `path_pairwise(_in)`,
  `cycle_all2rel(_in)`, `pairwise_sort`, and `sort_pairwise_stable`.

- in `interval.v`, new lemmas: `ge_pinfty`, `le_ninfty`, `gt_pinfty`, `lt_ninfty`.
- in `order.v`,
  + the following new structures of ordered types:
    * `(b|t|tb)POrderType`: `porderType` with a top and/or a bottom,
    * `meetSemilatticeType`: meet semilattices,
    * `(b|t|tb)MeetSemilatticeType`:
      `meetSemilatticeType` with a top and/or a bottom,
    * `joinSemilatticeType`: join semilattices,
    * `(b|t|tb)JoinSemilatticeType`:
      `joinSemilatticeType` with a top and/or a bottom,
	* `tLatticeType`: `latticeType` with a top,
	* `tDistrLatticeType`: `distrLatticeType` with a top,
	* `(b|t|tb)OrderType`: `orderType` with a top and/or a bottom,
	* `fin(B|T|TB)POrderType`: `finPOrderType` with a top and/or a bottom,
	* `fin(B)MeetSemilatticeType`:
      finite meet semilattices with/without a bottom,
	* `fin(T)JoinSemilatticeType`:
      finite join semilattices with/without a top, and
	* possibly empty finite lattice structures which involve renamings of
      existing structures (cf Changed and Renamed sections).
  + new factories `meetSemilatticeMixin`, `joinSemilatticeMixin`,
    `totalMeetSemilatticeMixin`, and `totalJoinSemilatticeMixin`.
  + new "big pack" notations `LatticeOfPOrder`, `OrderOfMeetSemilattice`,
    `OrderOfJoinSemilattice`, and `LatticeOfChoiceType`.

### Changed

- In `ssralg.v` and `ssrint.v`, the nullary ring notations `-%R`, `+%R`, `*%R`,
  `*:%R`, and `*~%R` are now declared in `fun_scope`.

- across the library, the deprecation mechanism to use has been changed from the
  `deprecate` notation to the `deprecated` attribute (cf. Removed section).
- in `order.v`,
  + For an ordered type instance `T`, the class record of `T^d^d` is now
    convertible with that of `T` except for complemented lattice structures.
    To make duals definitionally involutive as such, the mixins of `porderType`
    and `distrLatticeType` (whose duals are themselves) are redefined to include
    some dual axioms (e.g., antisymmetry of `<=^d`), and the mixins of
    `tPOrderType` and `joinSemilatticeType` (whose duals are `bPOrderType` and
    `meetSemilatticeType` respectively) are defined as duals of the mixins of
    the dual structures. Provided factories hide these internal details of
    mixins. Caveat: duals of structures are not definitionally involutive yet,
    since structure records cannot be primitive for technical reasons and
    `dual_display` is opaque.
  + The `latticeType` structure has been redefined as the join of
    `meetSemilatticeType` and `joinSemilatticeType` that have no extra mixin.
    To declare a canonical `latticeType` instance of type `T`, one has to
    declare canonical semilattice type instances of `T` first, and then use
    `[latticeType of T]` to compute their join.
  + The `meetJoinMixin` factory has been redefined not to require the
    distributivity. One that requires distributivity has been renamed to
    `distrMeetJoinMixin` (cf Renamed section).
  + The finite lattice structures `finLatticeType`, `finDistrLatticeType`, and
    `finOrderType` (excluding `finCDistrLatticeType`) are now allowed to be
    empty. The original (nonempty) finite lattice structures (including
    `finCDistrLatticeType`) are renamed to have prefix `TB` (cf Added and
    Renamed sections).

### Renamed

- in `path.v`,
  + `sub_(path|cycle|sorted)_in` -> `sub_in_(path|cycle|sorted)`
  + `eq_(path|cycle)_in` -> `eq_in_(path|cycle)`

- in `order.v`,
  + the following structures have been renamed (cf Added and Changed sections):
    * `finLatticeType` -> `finTBLatticeType`
    * `finDistrLatticeType` -> `finTBDistrLatticeType`
    * `finCDistrLatticeType` -> `finCTBDistrLatticeType`
    * `finOrderType` -> `finTBOrderType`
  + the following factories have been renamed (cf Changed section):
    * `latticeMixin` -> `latticePOrderMixin`
    * `meetJoinMixin` -> `distrMeetJoinMixin`

### Removed

- in `ssreflect.v`, the `deprecate` notation has been deprecated. Use the
  `deprecated` attribute instead (cf. Changed section).

- in `seq.v`, `iota_add` has been deprecated. Use `iotaD` instead.

- in `ssrnat.v` and `ssrnum.v`, deprecation aliases and the `mc_1_10`
  compatibility modules introduced in MathComp 1.11+beta1 have been removed.

- in `seq.v`, remove the following deprecation aliases introduced in MathComp
  1.9.0: `perm_eq_rev`, `perm_eq_flatten`, `perm_eq_all`, `perm_eq_small`,
  `perm_eq_nilP`, `perm_eq_consP`, `leq_size_perm`, `uniq_perm_eq`,
  `perm_eq_iotaP`, and `perm_undup_count`.

### Infrastructure

### Misc
