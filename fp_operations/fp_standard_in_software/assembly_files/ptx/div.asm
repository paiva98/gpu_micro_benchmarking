
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = cuda
host = linux
compile_size = 64bit

Fatbin ptx code:
================
arch = sm_70
code version = [6,1]
producer = cuda
host = linux
compile_size = 64bit
compressed
ptxasOptions = 








.version 6.1
.target sm_70
.address_size 64



.visible .entry _Z8char_divPcS_S_(
.param .u64 _Z8char_divPcS_S__param_0,
.param .u64 _Z8char_divPcS_S__param_1,
.param .u64 _Z8char_divPcS_S__param_2
)
{
.reg .b32 %r<4>;
.reg .b64 %rd<7>;


ld.param.u64 %rd1, [_Z8char_divPcS_S__param_0];
ld.param.u64 %rd2, [_Z8char_divPcS_S__param_1];
ld.param.u64 %rd3, [_Z8char_divPcS_S__param_2];
cvta.to.global.u64 %rd4, %rd3;
cvta.to.global.u64 %rd5, %rd2;
cvta.to.global.u64 %rd6, %rd1;
ld.global.s8 %r1, [%rd6];
ld.global.s8 %r2, [%rd5];
div.s32 %r3, %r1, %r2;
st.global.u8 [%rd4], %r3;
ret;
}


.visible .entry _Z7int_divPiS_S_(
.param .u64 _Z7int_divPiS_S__param_0,
.param .u64 _Z7int_divPiS_S__param_1,
.param .u64 _Z7int_divPiS_S__param_2
)
{
.reg .b32 %r<4>;
.reg .b64 %rd<7>;


ld.param.u64 %rd1, [_Z7int_divPiS_S__param_0];
ld.param.u64 %rd2, [_Z7int_divPiS_S__param_1];
ld.param.u64 %rd3, [_Z7int_divPiS_S__param_2];
cvta.to.global.u64 %rd4, %rd3;
cvta.to.global.u64 %rd5, %rd2;
cvta.to.global.u64 %rd6, %rd1;
ld.global.u32 %r1, [%rd6];
ld.global.u32 %r2, [%rd5];
div.s32 %r3, %r1, %r2;
st.global.u32 [%rd4], %r3;
ret;
}


.visible .entry _Z9float_divPfS_S_(
.param .u64 _Z9float_divPfS_S__param_0,
.param .u64 _Z9float_divPfS_S__param_1,
.param .u64 _Z9float_divPfS_S__param_2
)
{
.reg .f32 %f<4>;
.reg .b64 %rd<7>;


ld.param.u64 %rd1, [_Z9float_divPfS_S__param_0];
ld.param.u64 %rd2, [_Z9float_divPfS_S__param_1];
ld.param.u64 %rd3, [_Z9float_divPfS_S__param_2];
cvta.to.global.u64 %rd4, %rd3;
cvta.to.global.u64 %rd5, %rd2;
cvta.to.global.u64 %rd6, %rd1;
ld.global.f32 %f1, [%rd6];
ld.global.f32 %f2, [%rd5];
div.rn.f32 %f3, %f1, %f2;
st.global.f32 [%rd4], %f3;
ret;
}


.visible .entry _Z10double_divPdS_S_(
.param .u64 _Z10double_divPdS_S__param_0,
.param .u64 _Z10double_divPdS_S__param_1,
.param .u64 _Z10double_divPdS_S__param_2
)
{
.reg .f64 %fd<4>;
.reg .b64 %rd<7>;


ld.param.u64 %rd1, [_Z10double_divPdS_S__param_0];
ld.param.u64 %rd2, [_Z10double_divPdS_S__param_1];
ld.param.u64 %rd3, [_Z10double_divPdS_S__param_2];
cvta.to.global.u64 %rd4, %rd3;
cvta.to.global.u64 %rd5, %rd2;
cvta.to.global.u64 %rd6, %rd1;
ld.global.f64 %fd1, [%rd6];
ld.global.f64 %fd2, [%rd5];
div.rn.f64 %fd3, %fd1, %fd2;
st.global.f64 [%rd4], %fd3;
ret;
}


