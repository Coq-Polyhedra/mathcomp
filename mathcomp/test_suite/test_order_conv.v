From mathcomp Require Import all_ssreflect.
Import Order.Theory.

Section dual_of_dual.

Let eq_dual_dual_porderType
    (disp : unit) (T' : Type) (c : Order.POrder.class_of T') :=
  let T := Order.POrder.Pack disp c in erefl T : T = [porderType of T^d^d].

Let eq_dual_dual_latticeType
    (disp : unit) (T' : Type) (c : Order.Lattice.class_of T') :=
  let T := Order.Lattice.Pack disp c in erefl T : T = [latticeType of T^d^d].

Let eq_dual_dual_tbLatticeType
    (disp : unit) (T' : Type) (c : Order.TBLattice.class_of T') :=
  let T := Order.TBLattice.Pack disp c in
  erefl T : T = [tbLatticeType of T^d^d].

Let eq_dual_dual_distrLatticeType
    (disp : unit) (T' : Type) (c : Order.DistrLattice.class_of T') :=
  let T := Order.DistrLattice.Pack disp c in
  erefl T : T = [distrLatticeType of T^d^d].

Let eq_dual_dual_tbDistrLatticeType
    (disp : unit) (T' : Type) (c : Order.TBDistrLattice.class_of T') :=
  let T := Order.TBDistrLattice.Pack disp c in
  erefl T : T = [tbDistrLatticeType of T^d^d].

Let eq_dual_dual_orderType
    (disp : unit) (T' : Type) (c : Order.Total.class_of T') :=
  let T := Order.Total.Pack disp c in erefl T : T = [orderType of T^d^d].

Let eq_dual_dual_finPOrderType
    (disp : unit) (T' : Type) (c : Order.FinPOrder.class_of T') :=
  let T := Order.FinPOrder.Pack disp c in
  erefl T : T = [finPOrderType of T^d^d].

Let eq_dual_dual_finLatticeType
    (disp : unit) (T' : Type) (c : Order.FinLattice.class_of T') :=
  let T := Order.FinLattice.Pack disp c in
  erefl T : T = [finLatticeType of T^d^d].

Let eq_dual_dual_finDistrLatticeType
    (disp : unit) (T' : Type) (c : Order.FinDistrLattice.class_of T') :=
  let T := Order.FinDistrLattice.Pack disp c in
  erefl T : T = [finDistrLatticeType of T^d^d].

Let eq_dual_dual_finOrderType
    (disp : unit) (T' : Type) (c : Order.FinTotal.class_of T') :=
  let T := Order.FinTotal.Pack disp c in erefl T : T = [finOrderType of T^d^d].

End dual_of_dual.
