#include <clc/clc.h>

_CLC_OVERLOAD _CLC_DEF float3 cross(float3 p0, float3 p1) {
  return (float3)(p0.y*p1.z - p0.z*p1.y, p0.z*p1.x - p0.x*p1.z,
                  p0.x*p1.y - p0.y*p1.x);
}

_CLC_OVERLOAD _CLC_DEF float4 cross(float4 p0, float4 p1) {
  return (float4)(p0.y*p1.z - p0.z*p1.y, p0.z*p1.x - p0.x*p1.z,
                  p0.x*p1.y - p0.y*p1.x, 0.f);
}
