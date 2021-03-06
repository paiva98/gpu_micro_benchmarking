
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = cuda
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z10double_subPdS_S_
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ;         /* 0x000000fffffff389 */
                                                                        /* 0x000fe200000e00ff */
        /*0010*/                   MOV R1, c[0x0][0x28];                /* 0x00000a0000017a02 */
                                                                        /* 0x000fd00000000f00 */
        /*0020*/                   MOV R2, c[0x0][0x160];               /* 0x0000580000027a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0030*/                   IMAD.U32 R3, RZ, RZ, c[0x0][0x164];  /* 0x00005900ff037624 */
                                                                        /* 0x000fe200078e00ff */
        /*0040*/                   MOV R4, c[0x0][0x168];               /* 0x00005a0000047a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0050*/                   IMAD.U32 R5, RZ, RZ, c[0x0][0x16c];  /* 0x00005b00ff057624 */
                                                                        /* 0x000fcc00078e00ff */
        /*0060*/                   LDG.E.64.SYS R2, [R2];               /* 0x0000000002027381 */
                                                                        /* 0x000e2800001eeb00 */
        /*0070*/                   LDG.E.64.SYS R4, [R4];               /* 0x0000000004047381 */
                                                                        /* 0x000e2200001eeb00 */
        /*0080*/                   MOV R8, c[0x0][0x170];               /* 0x00005c0000087a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0090*/                   IMAD.U32 R9, RZ, RZ, c[0x0][0x174];  /* 0x00005d00ff097624 */
                                                                        /* 0x000fe200078e00ff */
        /*00a0*/                   DADD R6, R2, -R4;                    /* 0x0000000002067229 */
                                                                        /* 0x001e120000000804 */
        /*00b0*/                   STG.E.64.SYS [R8], R6;               /* 0x0000000608007386 */
                                                                        /* 0x0011e2000010eb00 */
        /*00c0*/                   EXIT;                                /* 0x000000000000794d */
                                                                        /* 0x000fea0003800000 */
        /*00d0*/                   BRA 0xd0;                            /* 0xfffffff000007947 */
                                                                        /* 0x000fc0000383ffff */
        /*00e0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
        /*00f0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
		...............................


		Function : _Z9float_subPfS_S_
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ;         /* 0x000000fffffff389 */
                                                                        /* 0x000fe200000e00ff */
        /*0010*/                   MOV R1, c[0x0][0x28];                /* 0x00000a0000017a02 */
                                                                        /* 0x000fd00000000f00 */
        /*0020*/                   MOV R2, c[0x0][0x160];               /* 0x0000580000027a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0030*/                   IMAD.U32 R3, RZ, RZ, c[0x0][0x164];  /* 0x00005900ff037624 */
                                                                        /* 0x000fe200078e00ff */
        /*0040*/                   MOV R4, c[0x0][0x168];               /* 0x00005a0000047a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0050*/                   IMAD.U32 R5, RZ, RZ, c[0x0][0x16c];  /* 0x00005b00ff057624 */
                                                                        /* 0x000fcc00078e00ff */
        /*0060*/                   LDG.E.SYS R2, [R2];                  /* 0x0000000002027381 */
                                                                        /* 0x000e2800001ee900 */
        /*0070*/                   LDG.E.SYS R4, [R4];                  /* 0x0000000004047381 */
                                                                        /* 0x000e2200001ee900 */
        /*0080*/                   MOV R6, c[0x0][0x170];               /* 0x00005c0000067a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0090*/                   IMAD.U32 R7, RZ, RZ, c[0x0][0x174];  /* 0x00005d00ff077624 */
                                                                        /* 0x000fe400078e00ff */
        /*00a0*/                   FADD R0, R2, -R4;                    /* 0x8000000402007221 */
                                                                        /* 0x001fd00000000000 */
        /*00b0*/                   STG.E.SYS [R6], R0;                  /* 0x0000000006007386 */
                                                                        /* 0x0001e2000010e900 */
        /*00c0*/                   EXIT;                                /* 0x000000000000794d */
                                                                        /* 0x000fea0003800000 */
        /*00d0*/                   BRA 0xd0;                            /* 0xfffffff000007947 */
                                                                        /* 0x000fc0000383ffff */
        /*00e0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
        /*00f0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
		.............................


		Function : _Z7int_subPiS_S_
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ;         /* 0x000000fffffff389 */
                                                                        /* 0x000fe200000e00ff */
        /*0010*/                   IMAD.U32 R1, RZ, RZ, c[0x0][0x28];   /* 0x00000a00ff017624 */
                                                                        /* 0x000fd000078e00ff */
        /*0020*/                   IMAD.U32 R2, RZ, RZ, c[0x0][0x160];  /* 0x00005800ff027624 */
                                                                        /* 0x000fe200078e00ff */
        /*0030*/                   MOV R3, c[0x0][0x164];               /* 0x0000590000037a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0040*/                   IMAD.U32 R4, RZ, RZ, c[0x0][0x168];  /* 0x00005a00ff047624 */
                                                                        /* 0x000fe200078e00ff */
        /*0050*/                   MOV R5, c[0x0][0x16c];               /* 0x00005b0000057a02 */
                                                                        /* 0x000fcc0000000f00 */
        /*0060*/                   LDG.E.SYS R2, [R2];                  /* 0x0000000002027381 */
                                                                        /* 0x000e2800001ee900 */
        /*0070*/                   LDG.E.SYS R4, [R4];                  /* 0x0000000004047381 */
                                                                        /* 0x000e2200001ee900 */
        /*0080*/                   IMAD.U32 R6, RZ, RZ, c[0x0][0x170];  /* 0x00005c00ff067624 */
                                                                        /* 0x000fe200078e00ff */
        /*0090*/                   MOV R7, c[0x0][0x174];               /* 0x00005d0000077a02 */
                                                                        /* 0x000fe40000000f00 */
        /*00a0*/                   IADD3 R0, R2, -R4, RZ;               /* 0x8000000402007210 */
                                                                        /* 0x001fd00007ffe0ff */
        /*00b0*/                   STG.E.SYS [R6], R0;                  /* 0x0000000006007386 */
                                                                        /* 0x0001e2000010e900 */
        /*00c0*/                   EXIT;                                /* 0x000000000000794d */
                                                                        /* 0x000fea0003800000 */
        /*00d0*/                   BRA 0xd0;                            /* 0xfffffff000007947 */
                                                                        /* 0x000fc0000383ffff */
        /*00e0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
        /*00f0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
		...........................


		Function : _Z8char_subPcS_S_
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ;         /* 0x000000fffffff389 */
                                                                        /* 0x000fe200000e00ff */
        /*0010*/                   IMAD.U32 R1, RZ, RZ, c[0x0][0x28];   /* 0x00000a00ff017624 */
                                                                        /* 0x000fd000078e00ff */
        /*0020*/                   IMAD.U32 R2, RZ, RZ, c[0x0][0x160];  /* 0x00005800ff027624 */
                                                                        /* 0x000fe200078e00ff */
        /*0030*/                   MOV R3, c[0x0][0x164];               /* 0x0000590000037a02 */
                                                                        /* 0x000fe20000000f00 */
        /*0040*/                   IMAD.U32 R4, RZ, RZ, c[0x0][0x168];  /* 0x00005a00ff047624 */
                                                                        /* 0x000fe200078e00ff */
        /*0050*/                   MOV R5, c[0x0][0x16c];               /* 0x00005b0000057a02 */
                                                                        /* 0x000fcc0000000f00 */
        /*0060*/                   LDG.E.U8.SYS R2, [R2];               /* 0x0000000002027381 */
                                                                        /* 0x000e2800001ee100 */
        /*0070*/                   LDG.E.U8.SYS R4, [R4];               /* 0x0000000004047381 */
                                                                        /* 0x000e2200001ee100 */
        /*0080*/                   IMAD.U32 R6, RZ, RZ, c[0x0][0x170];  /* 0x00005c00ff067624 */
                                                                        /* 0x000fe200078e00ff */
        /*0090*/                   MOV R7, c[0x0][0x174];               /* 0x00005d0000077a02 */
                                                                        /* 0x000fe40000000f00 */
        /*00a0*/                   IADD3 R0, R2, -R4, RZ;               /* 0x8000000402007210 */
                                                                        /* 0x001fd00007ffe0ff */
        /*00b0*/                   STG.E.U8.SYS [R6], R0;               /* 0x0000000006007386 */
                                                                        /* 0x0001e2000010e100 */
        /*00c0*/                   EXIT;                                /* 0x000000000000794d */
                                                                        /* 0x000fea0003800000 */
        /*00d0*/                   BRA 0xd0;                            /* 0xfffffff000007947 */
                                                                        /* 0x000fc0000383ffff */
        /*00e0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
        /*00f0*/                   NOP;                                 /* 0x0000000000007918 */
                                                                        /* 0x000fc00000000000 */
		............................



Fatbin ptx code:
================
arch = sm_70
code version = [6,1]
producer = cuda
host = linux
compile_size = 64bit
compressed
ptxasOptions = 
