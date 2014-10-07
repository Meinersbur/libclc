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

__attribute__((overloadable)) double
hypot(double x, double y)
{
    ulong ux = as_ulong(x) & ~SIGNBIT_DP64;
    int xexp = ux >> EXPSHIFTBITS_DP64;
    x = as_double(ux);

    ulong uy = as_ulong(y) & ~SIGNBIT_DP64;
    int yexp = uy >> EXPSHIFTBITS_DP64;
    y = as_double(uy);

    int c = xexp > EXPBIAS_DP64 + 500 | yexp > EXPBIAS_DP64 + 500;
    double preadjust = c ? 0x1.0p-600 : 1.0;
    double postadjust = c ? 0x1.0p+600 : 1.0;

    c = xexp < EXPBIAS_DP64 - 500 | yexp < EXPBIAS_DP64 - 500;
    preadjust = c ? 0x1.0p+600 : preadjust;
    postadjust = c ? 0x1.0p-600 : postadjust;

    double ax = x * preadjust;
    double ay = y * preadjust;

    // The post adjust may overflow, but this can't be avoided in any case
    double r = sqrt(fma(ax, ax, ay*ay)) * postadjust;

    // If the difference in exponents between x and y is large
    double s = x + y;
    c = abs(xexp - yexp) > MANTLENGTH_DP64 + 1;
    r = c ? s : r;

    // Check for NaN
    //c = x != x | y != y;
    c = isnan(x) | isnan(y);
    r = c ? as_double(QNANBITPATT_DP64) : r;

    // If either is Inf, we must return Inf
    c = x == as_double(PINFBITPATT_DP64) | y == as_double(PINFBITPATT_DP64);
    r = c ? as_double(PINFBITPATT_DP64) : r;

    return r;
}

