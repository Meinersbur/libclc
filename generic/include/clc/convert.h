#define _CLC_CONVERT_DECL(FROM_TYPE, TO_TYPE, SUFFIX) \
  _CLC_OVERLOAD _CLC_DECL TO_TYPE convert_##TO_TYPE##SUFFIX(FROM_TYPE x);

_CLC_CONVERT_DECL(long, char, )
_CLC_CONVERT_DECL(ulong, uchar, )
_CLC_CONVERT_DECL(long, short, )
_CLC_CONVERT_DECL(ulong, ushort, )
_CLC_CONVERT_DECL(long, int, )
_CLC_CONVERT_DECL(ulong, uint, )
_CLC_CONVERT_DECL(long, long, )
_CLC_CONVERT_DECL(ulong, ulong, )
#ifdef cl_khr_fp64
_CLC_CONVERT_DECL(double, float, )
_CLC_CONVERT_DECL(double, double, )
#else
_CLC_CONVERT_DECL(float, float, )
#endif

_CLC_CONVERT_DECL(long, char, _sat)
_CLC_CONVERT_DECL(ulong, uchar, _sat)
_CLC_CONVERT_DECL(long, short, _sat)
_CLC_CONVERT_DECL(ulong, ushort, _sat)
_CLC_CONVERT_DECL(long, int, _sat)
_CLC_CONVERT_DECL(ulong, uint, _sat)
_CLC_CONVERT_DECL(long, long, _sat)
_CLC_CONVERT_DECL(ulong, ulong, _sat)
#ifdef cl_khr_fp64
_CLC_CONVERT_DECL(double, float, _sat)
_CLC_CONVERT_DECL(double, double, _sat)
#else
_CLC_CONVERT_DECL(float, float, _sat)
#endif

#define _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, TO_TYPE, SUFFIX) \
  _CLC_CONVERT_DECL(FROM_TYPE##2, TO_TYPE##2, SUFFIX) \
  _CLC_CONVERT_DECL(FROM_TYPE##3, TO_TYPE##3, SUFFIX) \
  _CLC_CONVERT_DECL(FROM_TYPE##4, TO_TYPE##4, SUFFIX) \
  _CLC_CONVERT_DECL(FROM_TYPE##8, TO_TYPE##8, SUFFIX) \
  _CLC_CONVERT_DECL(FROM_TYPE##16, TO_TYPE##16, SUFFIX)

#define _CLC_VECTOR_CONVERT_FROM1(FROM_TYPE, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, char, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, uchar, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, int, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, uint, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, short, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, ushort, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, long, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, ulong, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, float, SUFFIX)

#ifdef cl_khr_fp64
#define _CLC_VECTOR_CONVERT_FROM(FROM_TYPE, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM1(FROM_TYPE, SUFFIX) \
  _CLC_VECTOR_CONVERT_DECL(FROM_TYPE, double, SUFFIX)
#else
#define _CLC_VECTOR_CONVERT_FROM(FROM_TYPE, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM1(FROM_TYPE, SUFFIX)
#endif

#define _CLC_VECTOR_CONVERT_TO1(SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(char, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(uchar, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(int, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(uint, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(short, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(ushort, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(long, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(ulong, SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(float, SUFFIX)

#ifdef cl_khr_fp64
#define _CLC_VECTOR_CONVERT_TO(SUFFIX) \
  _CLC_VECTOR_CONVERT_TO1(SUFFIX) \
  _CLC_VECTOR_CONVERT_FROM(double, SUFFIX)
#else
#define _CLC_VECTOR_CONVERT_TO(SUFFIX) \
  _CLC_VECTOR_CONVERT_TO1(SUFFIX)
#endif

_CLC_VECTOR_CONVERT_TO()
_CLC_VECTOR_CONVERT_TO(_sat)
