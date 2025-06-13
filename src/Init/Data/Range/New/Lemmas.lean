module

prelude
import all Init.Data.Range.New.Nat
import Init.Data.List.Range

namespace Std.PRange

-- /-- Generalization of `mem_of_mem_range'` used in `forIn'_loop_eq_forIn'_range'` below. -/
-- private theorem mem_of_mem_range'_aux [LE α] {r : PRange ⟨.closed, .closed⟩ α} {a : α}
--     -- (w₁ : (i - r.lower) % r.step = 0)
--     (w₂ : r.lower ≤ i)
--     (h : a ∈ List.polymorphicRange i ((r.upper - i + r.step - 1) / r.step) r.step) : a ∈ r := by
--   obtain ⟨j, h', rfl⟩ := List.mem_range'.1 h
--   refine ⟨by omega, ?_⟩
--   rw [Nat.lt_div_iff_mul_lt r.step_pos, Nat.mul_comm] at h'
--   constructor
--   · omega
--   · rwa [Nat.add_comm, Nat.add_sub_assoc w₂, Nat.mul_add_mod_self_left]

-- theorem mem_of_mem_range' [Succ? α] [LE α] [DecidableLE α] {r : PRange ⟨.closed, .closed⟩ α}
--     [LawfulSucc? α]
--     (h : x ∈ List.polymorphicRange r.lower r.size 1) : x ∈ r := by
--   refine ⟨?_, ?_⟩
--   ·
--   unfold PRange.size at h
--   apply mem_of_mem_range'_aux (by simp) (by simp) h

@[simp] theorem mem_of_mem_toList [Succ? α] [LE α] [DecidableLE α]
    [LawfulLESucc? α] [Monad m]
    (r : PRange ⟨.closed, .closed⟩ α)
    (h : a ∈ r.toList) :
    a ∈ r := by
  refine ⟨?_, ?_⟩
  · sorry -- a is an indirect output
    -- hence, a has been obtained from a chain of `succ?`
    -- hence, a is large enough
  · sorry -- a is an indirect output, hence small enough

-- @[simp] theorem forIn'_eq_forIn'_toList [Succ? α] [LE α] [DecidableLE α]
--     [LawfulLESucc? α] [Monad m]
--     (r : PRange ⟨.closed, .closed⟩ α)
--     (init : β) (f : (a : α) → a ∈ r → β → m (ForInStep β)) :
--     forIn' r init f =
--       forIn' r.toList init (fun a h => f a sorry) := by
--   conv => lhs; simp only [forIn', Range.forIn']
--   simp only [size]
--   rw [forIn'_loop_eq_forIn'_range']

-- private theorem size_eq (r : Std.Range) (h : i < r.stop) :
--     (r.stop - i + r.step - 1) / r.step =
--       (r.stop - (i + r.step) + r.step - 1) / r.step + 1 := by
--   have w := r.step_pos
--   if i + r.step < r.stop then -- Not sure this case split is strictly necessary.
--     rw [Nat.div_eq_iff w, Nat.add_one_mul]
--     have : (r.stop - (i + r.step) + r.step - 1) / r.step * r.step ≤
--         (r.stop - (i + r.step) + r.step - 1) := Nat.div_mul_le_self _ _
--     have : r.stop - (i + r.step) + r.step - 1 - r.step <
--         (r.stop - (i + r.step) + r.step - 1) / r.step * r.step :=
--       Nat.lt_div_mul_self w (by omega)
--     omega
--   else
--     have : (r.stop - i + r.step - 1) / r.step = 1 := by
--       rw [Nat.div_eq_iff w, Nat.one_mul]
--       omega
--     have : (r.stop - (i + r.step) + r.step - 1) / r.step = 0 := by
--       rw [Nat.div_eq_iff] <;> omega
--     omega

-- private theorem forIn'_loop_eq_forIn'_range' [Monad m] (r : Std.Range)
--     (init : β) (f : (a : Nat) → a ∈ r → β → m (ForInStep β)) (i) (w₁) (w₂) :
--     forIn'.loop r f init i w₁ w₂ =
--       forIn' (List.range' i ((r.stop - i + r.step - 1) / r.step) r.step) init
--         fun a h => f a (mem_of_mem_range'_aux w₁ w₂ h) := by
--   have w := r.step_pos
--   rw [forIn'.loop]
--   split <;> rename_i h
--   · simp only [size_eq r h, List.range'_succ, List.forIn'_cons]
--     congr 1
--     funext step
--     split
--     · simp
--     · rw [forIn'_loop_eq_forIn'_range']
--   · have : (r.stop - i + r.step - 1) / r.step = 0 := by
--       rw [Nat.div_eq_iff] <;> omega
--     simp [this]

-- @[simp] theorem forIn'_eq_forIn'_range' [Monad m] (r : Std.Range)
--     (init : β) (f : (a : Nat) → a ∈ r → β → m (ForInStep β)) :
--     forIn' r init f =
--       forIn' (List.range' r.start r.size r.step) init (fun a h => f a (mem_of_mem_range' h)) := by
--   conv => lhs; simp only [forIn', Range.forIn']
--   simp only [size]
--   rw [forIn'_loop_eq_forIn'_range']

-- @[simp] theorem forIn_eq_forIn_range' [Monad m] (r : Std.Range)
--     (init : β) (f : Nat → β → m (ForInStep β)) :
--     forIn r init f = forIn (List.range' r.start r.size r.step) init f := by
--   simp only [forIn, forIn'_eq_forIn'_range']

-- private theorem forM_loop_eq_forM_range' [Monad m] (r : Std.Range) (f : Nat → m PUnit) :
--     forM.loop r f i = forM (List.range' i ((r.stop - i + r.step - 1) / r.step) r.step) f := by
--   have w := r.step_pos
--   rw [forM.loop]
--   split <;> rename_i h
--   · simp [size_eq r h, List.range'_succ, List.forM_cons]
--     congr 1
--     funext
--     rw [forM_loop_eq_forM_range']
--   · have : (r.stop - i + r.step - 1) / r.step = 0 := by
--       rw [Nat.div_eq_iff] <;> omega
--     simp [this]

-- @[simp] theorem forM_eq_forM_range' [Monad m] (r : Std.Range) (f : Nat → m PUnit) :
--     forM r f = forM (List.range' r.start r.size r.step) f := by
--   simp only [forM, Range.forM, forM_loop_eq_forM_range', size]

-- end Std.Range
