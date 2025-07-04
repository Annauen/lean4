// Lean compiler output
// Module: Std.Tactic.BVDecide.LRAT.Internal.PosFin
// Imports: Init.NotationExtra Init.Data.Hashable
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
uint64_t lean_uint64_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin___redArg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___lam__0___boxed(lean_object*);
lean_object* l_Nat_reprFast(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin___lam__0(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___lam__0___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin___redArg___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint64_t l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___lam__0(lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___lam__0(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin(lean_object*);
LEAN_EXPORT uint8_t l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin(lean_object*);
LEAN_EXPORT uint8_t l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin___redArg(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_nat_dec_eq(x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin___redArg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin___redArg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqPosFin(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___lam__0(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___lam__0___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___lam__0___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___lam__0(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Std_Tactic_BVDecide_LRAT_Internal_instCoeOutPosFinNat(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint64_t l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___lam__0(lean_object* x_1) {
_start:
{
uint64_t x_2; 
x_2 = lean_uint64_of_nat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___lam__0___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___lam__0___boxed(lean_object* x_1) {
_start:
{
uint64_t x_2; lean_object* x_3; 
x_2 = l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___lam__0(x_1);
lean_dec(x_1);
x_3 = lean_box_uint64(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Std_Tactic_BVDecide_LRAT_Internal_instHashablePosFin(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin___lam__0(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Nat_reprFast(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin___lam__0), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Std_Tactic_BVDecide_LRAT_Internal_instToStringPosFin(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init_NotationExtra(uint8_t builtin, lean_object*);
lean_object* initialize_Init_Data_Hashable(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Std_Tactic_BVDecide_LRAT_Internal_PosFin(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init_NotationExtra(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init_Data_Hashable(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
