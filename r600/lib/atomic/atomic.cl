#include <clc/clc.h>

#define ATOMIC_FUNC_TYPE(SIGN, TYPE, FUNCTION, CL_ADDRSPACE, LLVM_ADDRSPACE) \
_CLC_OVERLOAD _CLC_DEF SIGN TYPE FUNCTION (volatile CL_ADDRSPACE SIGN TYPE *p, SIGN TYPE val) { \
	return (SIGN TYPE)__clc_##FUNCTION##_addr##LLVM_ADDRSPACE((volatile CL_ADDRSPACE signed TYPE*)p, (signed TYPE)val); \
}

#define ATOMIC_FUNC_SIGN(TYPE, FUNCTION, CL_ADDRSPACE, LLVM_ADDRSPACE) \
	_CLC_DECL signed TYPE __clc_##FUNCTION##_addr##LLVM_ADDRSPACE(volatile CL_ADDRSPACE signed TYPE*, signed TYPE); \
	ATOMIC_FUNC_TYPE(signed, TYPE, FUNCTION, CL_ADDRSPACE, LLVM_ADDRSPACE) \
	ATOMIC_FUNC_TYPE(unsigned, TYPE, FUNCTION, CL_ADDRSPACE, LLVM_ADDRSPACE)

#define ATOMIC_FUNC_ADDRSPACE(TYPE, FUNCTION) \
	ATOMIC_FUNC_SIGN(TYPE, FUNCTION, global, 1) \
	ATOMIC_FUNC_SIGN(TYPE, FUNCTION, local, 3)

#define ATOMIC_FUNC(FUNCTION) \
	ATOMIC_FUNC_ADDRSPACE(int, FUNCTION)

ATOMIC_FUNC(atomic_add)
ATOMIC_FUNC(atomic_and)
ATOMIC_FUNC(atomic_sub)
