#undef isunordered

#define __CLC_FUNCTION isunordered
#define __CLC_BODY <clc/relational/binary_decl.inc>

#include <clc/relational/floatn.inc>

#undef __CLC_BODY
#undef __CLC_FUNCTION
