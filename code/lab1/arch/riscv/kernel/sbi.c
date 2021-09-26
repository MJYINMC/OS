#include "types.h"
#include "sbi.h"
// struct sbiret {
// 	long error;
// 	long value;
// };

struct sbiret sbi_ecall(uint64 arg0,
			            uint64 arg1, uint64 arg2,
			            uint64 arg3, uint64 arg4,
			            uint64 arg5, int fid, int ext) 
{
	struct sbiret ret;
	/* in putchar, 
	a0: ext a1: fid a2:arg0,....
	*/
    __asm__ volatile (
	// 	"ld a7, %[ext]\n"
	// 	"ld a6, %[fid]\n"
	// 	"ld a0, %[arg0]\n"
	// 	"ld a1, %[arg1]\n"
	// 	"ld a2, %[arg2]\n"
	// 	"ld a3, %[arg3]\n"
	// 	"ld a4, %[arg4]\n"
	// 	"ld a5, %[arg5]\n"

		"ecall\n"
		"sd a0, %[error]\n"
		"sd a1, %[value]\n"
		: [error] "=m" (ret.error), [value] "=m" (ret.value)
		// : [ext] "m" (ext), [fid] "m" (fid), [arg0] "m" (arg0), [arg1] "m" (arg1), \
		[arg2] "m" (arg2), [arg3] "m" (arg3), [arg4]"m" (arg4), [arg5] "m" (arg5)
    );
	return ret;
}
