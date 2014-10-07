/*
 * Copyright (c) 2014 Advanced Micro Devices, Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#include "math64.h"

//   Algorithm:
//
//   Based on:
//   Ping-Tak Peter Tang
//   "Table-driven implementation of the logarithm function in IEEE
//   floating-point arithmetic"
//   ACM Transactions on Mathematical Software (TOMS)
//   Volume 16, Issue 4 (December 1990)
//
//
//   x very close to 1.0 is handled differently, for x everywhere else
//   a brief explanation is given below
//
//   x = (2^m)*A
//   x = (2^m)*(G+g) with (1 <= G < 2) and (g <= 2^(-8))
//   x = (2^m)*2*(G/2+g/2)
//   x = (2^m)*2*(F+f) with (0.5 <= F < 1) and (f <= 2^(-9))
//
//   Y = (2^(-1))*(2^(-m))*(2^m)*A
//   Now, range of Y is: 0.5 <= Y < 1
//
//   F = 0x80 + (first 7 mantissa bits) + (8th mantissa bit)
//   Now, range of F is: 128 <= F <= 256 
//   F = F / 256 
//   Now, range of F is: 0.5 <= F <= 1
//
//   f = -(Y-F), with (f <= 2^(-9))
//
//   log(x) = m*log(2) + log(2) + log(F-f)
//   log(x) = m*log(2) + log(2) + log(F) + log(1-(f/F))
//   log(x) = m*log(2) + log(2*F) + log(1-r)
//
//   r = (f/F), with (r <= 2^(-8))
//   r = f*(1/F) with (1/F) precomputed to avoid division
//
//   log(x) = m*log(2) + log(G) - poly
//
//   log(G) is precomputed
//   poly = (r + (r^2)/2 + (r^3)/3 + (r^4)/4) + (r^5)/5))
//
//   log(2) and log(G) need to be maintained in extra precision
//   to avoid losing precision in the calculations
//
//
//   For x close to 1.0, we employ the following technique to
//   ensure faster convergence.
//
//   log(x) = log((1+s)/(1-s)) = 2*s + (2/3)*s^3 + (2/5)*s^5 + (2/7)*s^7
//   x = ((1+s)/(1-s)) 
//   x = 1 + r
//   s = r/(2+r)

__attribute__((overloadable)) double
#if defined(COMPILING_LOG2)
log2(double x)
#elif defined(COMPILING_LOG10)
log10(double x)
#else
log(double x)
#endif
{
    USE_TABLE(double2, p_tbl, LN_TBL);

#ifndef COMPILING_LOG2
    // log2_lead and log2_tail sum to an extra-precise version of ln(2)
    const double log2_lead = 6.93147122859954833984e-01; /* 0x3fe62e42e0000000 */
    const double log2_tail = 5.76999904754328540596e-08; /* 0x3e6efa39ef35793c */
#endif

#if defined(COMPILING_LOG10)
    // log10e_lead and log10e_tail sum to an extra-precision version of log10(e) (19 bits in lead)
    const double log10e_lead = 4.34293746948242187500e-01;  /* 0x3fdbcb7800000000 */
    const double log10e_tail = 7.3495500964015109100644e-7; /* 0x3ea8a93728719535 */
#elif defined(COMPILING_LOG2)
    // log2e_lead and log2e_tail sum to an extra-precision version of log2(e) (19 bits in lead)
    const double log2e_lead = 1.44269180297851562500E+00; /* 0x3FF7154400000000 */
    const double log2e_tail = 3.23791044778235969970E-06; /* 0x3ECB295C17F0BBBE */
#endif

    // log_thresh1 = 9.39412117004394531250e-1 = 0x3fee0faa00000000
    // log_thresh2 = 1.06449508666992187500 = 0x3ff1082c00000000 
    const double log_thresh1 = 0x1.e0faap-1;
    const double log_thresh2 = 0x1.1082cp+0;

    int is_near = x >= log_thresh1 & x <= log_thresh2;

    // Near 1 code
    double r = x - 1.0;
    double u = r / (2.0 + r);
    double correction = r * u;
    u = u + u;
    double v = u * u;
    double r1 = r;

    const double ca_1 = 8.33333333333317923934e-02; /* 0x3fb55555555554e6 */
    const double ca_2 = 1.25000000037717509602e-02; /* 0x3f89999999bac6d4 */
    const double ca_3 = 2.23213998791944806202e-03; /* 0x3f62492307f1519f */
    const double ca_4 = 4.34887777707614552256e-04; /* 0x3f3c8034c85dfff0 */

    double r2 = fma(u*v, fma(v, fma(v, fma(v, ca_4, ca_3), ca_2), ca_1), -correction);

#if defined(COMPILING_LOG10)
    r = r1;
    r1 = as_double(as_ulong(r1) & 0xffffffff00000000);
    r2 = r2 + (r - r1);
    double ret_near = fma(log10e_lead, r1, fma(log10e_lead, r2, fma(log10e_tail, r1, log10e_tail * r2)));
#elif defined(COMPILING_LOG2)
    r = r1;
    r1 = as_double(as_ulong(r1) & 0xffffffff00000000);
    r2 = r2 + (r - r1);
    double ret_near = fma(log2e_lead, r1, fma(log2e_lead, r2, fma(log2e_tail, r1, log2e_tail*r2)));
#else
    double ret_near = r1 + r2;
#endif

    // This is the far from 1 code

    // Deal with subnormal
    ulong ux = as_ulong(x);
    ulong uxs = as_ulong(as_double(0x03d0000000000000UL | ux) - 0x1.0p-962);
    int c = ux < IMPBIT_DP64;
    ux = c ? uxs : ux;
    int expadjust = c ? 60 : 0;

    int xexp = ((as_int2(ux).hi >> 20) & 0x7ff) - EXPBIAS_DP64 - expadjust;
    double f = as_double(HALFEXPBITS_DP64 | (ux & MANTBITS_DP64));
    int index = as_int2(ux).hi >> 13;
    index = ((0x80 | (index & 0x7e)) >> 1) + (index & 0x1);

    double2 tv = p_tbl[index - 64];
    double z1 = tv.s0;
    double q = tv.s1;

    double f1 = index * 0x1.0p-7;
    double f2 = f - f1;
    u = f2 / fma(f2, 0.5, f1);
    v = u * u;

    const double cb_1 = 8.33333333333333593622e-02; /* 0x3fb5555555555557 */
    const double cb_2 = 1.24999999978138668903e-02; /* 0x3f89999999865ede */
    const double cb_3 = 2.23219810758559851206e-03; /* 0x3f6249423bd94741 */

    double poly = v * fma(v, fma(v, cb_3, cb_2), cb_1);
    double z2 = q + fma(u, poly, u);

    double dxexp = (double)xexp;
#if defined (COMPILING_LOG10)
    // Add xexp * log(2) to z1,z2 to get log(x)
    r1 = fma(dxexp, log2_lead, z1);
    r2 = fma(dxexp, log2_tail, z2);
    double ret_far = fma(log10e_lead, r1, fma(log10e_lead, r2, fma(log10e_tail, r1, log10e_tail*r2)));
#elif defined(COMPILING_LOG2)
    r1 = fma(log2e_lead, z1, dxexp);
    r2 = fma(log2e_lead, z2, fma(log2e_tail, z1, log2e_tail*z2));
    double ret_far = r1 + r2;
#else
    r1 = fma(dxexp, log2_lead, z1);
    r2 = fma(dxexp, log2_tail, z2);
    double ret_far = r1 + r2;
#endif

    double ret = is_near ? ret_near : ret_far;

    ret = isinf(x) ? as_double(PINFBITPATT_DP64) : ret;
    ret = isnan(x) | x < 0.0 ? as_double(QNANBITPATT_DP64) : ret;
    ret = x == 0.0 ? as_double(NINFBITPATT_DP64) : ret;
    return ret;
}

