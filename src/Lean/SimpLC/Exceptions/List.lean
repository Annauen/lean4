/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
prelude
import Init.Data.List
import Lean.SimpLC.Exceptions.Root

open List

simp_lc allow List.map_const List.map_flatten -- too hard?

simp_lc allow List.findIdx?_start_succ List.findIdx?_cons -- Would require `Option.map_ite` as a `@[simp]` lemma; not impossible.
simp_lc allow List.drop_tail List.drop_one -- Would require an infinite chain of lemmas to resolve!
simp_lc allow List.findSome?_replicate_of_pos List.findSome?_replicate_of_isSome -- split in the discharger would get us there

-- These would all be okay, except that `simp_all` is unwilling to make a copy of a hypothesis which is being used.
simp_lc allow List.getElem?_eq_getElem List.getElem?_enum
simp_lc allow List.getElem?_map List.getElem?_eq_getElem
simp_lc allow List.getElem?_modify_eq List.getElem?_eq_getElem
simp_lc allow List.getElem?_mapIdx List.getElem?_eq_getElem
simp_lc allow List.getElem?_eq_getElem List.getElem?_modifyHead_zero

simp_lc allow List.drop_one List.drop_left' -- `h : l₁.length = 1 ⊢ (l₁ ++ l₂).tail = l₂`

-- These would be resolved by a `ring` tactic, but are beyond `simp +arith`.
simp_lc allow List.foldl_cons List.foldl_add_const
simp_lc allow List.foldr_cons List.foldr_add_const
simp_lc allow List.foldr_append List.foldr_add_const
simp_lc allow List.foldl_append List.foldl_add_const

/-- This would require an infinite chain of lemmas. -/
example {a : α} {l₁ l₂ : List α} : ¬ a :: (l₁ ++ l₂) <+ l₁ := by
  intro h
  replace h := h.length_le
  simp at h
  omega
simp_lc allow List.Sublist.cons List.append_right_sublist_self

/-- This would require an infinite chain of lemmas. -/
example {a : α} {l₁ l₂ : List α} : ¬ l₁ ++ (a :: l₂) <+ l₂ := by
  intro h
  replace h := h.length_le
  simp at h
  omega
simp_lc allow List.append_left_sublist_self List.Sublist.cons

/- The four can't be easily handled by `simp` without introducing infinite chains of lemmas,
but would be nice to have good automation for! -/
simp_lc allow List.cons_sublist_cons List.Sublist.cons
simp_lc allow List.append_left_sublist_self List.sublist_append_of_sublist_left
simp_lc allow List.append_left_sublist_self List.sublist_append_of_sublist_right
simp_lc allow List.append_right_sublist_self List.sublist_append_of_sublist_right
simp_lc allow List.append_sublist_append_left List.sublist_append_of_sublist_right
simp_lc allow List.append_sublist_append_right List.sublist_append_of_sublist_left

-- This one works, just not by `simp_all` because it is unwilling to make a copy of `h₂`.
example {p : α → Prop} {f : (a : α) → p a → β} {l : List α} {h₁ : ∀ (a : α), a ∈ l → p a}
    {n : Nat} {h₂ : n < (List.pmap f l h₁).length} :
    some (f (l[n]'(by simpa using h₂)) (h₁ _ (getElem_mem _))) =
      Option.pmap f l[n]? (fun a h => h₁ a (mem_of_getElem? h)) := by
  simp at h₂
  simp [h₂]

simp_lc allow List.getElem?_eq_getElem List.getElem?_pmap
-- As above, `simp_all` is unwilling to make a copy of a hypothesis.
simp_lc allow List.getElem?_eq_getElem List.getElem?_attach
simp_lc allow List.getElem?_eq_getElem List.getElem?_attachWith
simp_lc allow List.getElem?_eq_getElem List.getElem?_mapFinIdx

-- These are helpful for `simp` to discharge side conditions, but generate too many false positives.
simp_lc ignore List.head_mem
simp_lc ignore List.getLast_mem
simp_lc ignore List.getElem_mem

-- These higher order simp lemmas cause many confluence problems. Reconsider?
simp_lc ignore List.filterMap_subtype
simp_lc ignore List.map_subtype
simp_lc ignore List.flatMap_subtype
simp_lc ignore List.foldl_subtype
simp_lc ignore List.foldr_subtype
simp_lc ignore List.mapFinIdx_eq_mapIdx

-- TODO move to library.
@[simp] theorem List.modifyHead_dropLast {l : List α} :
    l.dropLast.modifyHead f = (l.modifyHead f).dropLast := by
  rcases l with _|⟨a, l⟩
  · simp
  · rcases l with _|⟨b, l⟩ <;> simp

/-
The actual checks happen in `tests/lean/000_simplc.lean`.
This commented out command remains here for convenience while debugging.
-/
-- #guard_msgs (drop info) in
-- simp_lc check in List BEq _root_
