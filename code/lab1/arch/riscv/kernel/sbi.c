#include "types.h"
#include "sbi.h"

struct sbiret sbi_ecall(uint64 arg0,
			            uint64 arg1, uint64 arg2,
			            uint64 arg3, uint64 arg4,
			            uint64 arg5, int fid, int ext)
{
	struct sbiret ret;

    __asm__ volatile (
		"ecall\n"
		: [error] "=r" (ret.error), [value] "=r" (ret.value)
    );
	
    // __asm__ volatile (
	// 	"ld a7, %[ext]\n"
	// 	"ld a6, %[fid]\n"
	// 	"ld a0, %[arg0]\n"
	// 	"ld a1, %[arg1]\n"
	// 	"ld a2, %[arg2]\n"
	// 	"ld a3, %[arg3]\n"
	// 	"ld a4, %[arg4]\n"
	// 	"ld a5, %[arg5]\n"
	// 	"ecall\n"
	// 	"mv %[error], a0\n"
	// 	"mv %[value], a1\n"
	// 	: [error] "=r" (ret.error), [value] "=r" (ret.value)
	// 	: [ext] "m" (ext), [fid] "m" (fid), [arg0] "m" (arg0), [arg1] "m" (arg1), \
	// 	[arg2] "m" (arg2), [arg3] "m" (arg3), [arg4]"m" (arg4), [arg5] "m" (arg5)
	// );

	// __asm__ volatile (
	// "mv a7, %[ext]\n"
	// "mv a6, %[fid]\n"
	// "mv a0, %[arg0]\n"
	// "mv a1, %[arg1]\n"
	// "mv a2, %[arg2]\n"
	// "mv a3, %[arg3]\n"
	// "mv a4, %[arg4]\n"
	// "mv a5, %[arg5]\n"
	// "ecall\n"
	// "mv %[error], a0\n"
	// "mv %[value], a1\n"
	// : [error] "=r" (ret.error), [value] "=r" (ret.value)
	// : [ext] "r" (ext), [fid] "r" (fid), [arg0] "r" (arg0), [arg1] "r" (arg1), \
	// [arg2] "r" (arg2), [arg3] "r" (arg3), [arg4]"r" (arg4), [arg5] "r" (arg5)
	// );

	return ret;
}
