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

#include <clc/clc.h>

#include "tables.h"

DECLARE_TABLE(float2, LOGE_TBL, 129) = {
    (float2)(0x0.000000p+0f, 0x0.000000p+0f),
    (float2)(0x1.fe0000p-8f, 0x1.535882p-23f),
    (float2)(0x1.fc0000p-7f, 0x1.5161f8p-20f),
    (float2)(0x1.7b8000p-6f, 0x1.1b07d4p-18f),
    (float2)(0x1.f82000p-6f, 0x1.361cf0p-19f),
    (float2)(0x1.39e000p-5f, 0x1.0f73fcp-18f),
    (float2)(0x1.774000p-5f, 0x1.63d8cap-19f),
    (float2)(0x1.b42000p-5f, 0x1.bae232p-18f),
    (float2)(0x1.f0a000p-5f, 0x1.86008ap-20f),
    (float2)(0x1.164000p-4f, 0x1.36eea2p-16f),
    (float2)(0x1.340000p-4f, 0x1.d7961ap-16f),
    (float2)(0x1.51a000p-4f, 0x1.073f06p-16f),
    (float2)(0x1.6f0000p-4f, 0x1.a515cap-17f),
    (float2)(0x1.8c2000p-4f, 0x1.45d630p-16f),
    (float2)(0x1.a92000p-4f, 0x1.b4e92ap-18f),
    (float2)(0x1.c5e000p-4f, 0x1.523d6ep-18f),
    (float2)(0x1.e26000p-4f, 0x1.076e2ap-16f),
    (float2)(0x1.fec000p-4f, 0x1.2263b6p-17f),
    (float2)(0x1.0d6000p-3f, 0x1.7e7cd0p-15f),
    (float2)(0x1.1b6000p-3f, 0x1.2ad52ep-15f),
    (float2)(0x1.294000p-3f, 0x1.52f81ep-15f),
    (float2)(0x1.370000p-3f, 0x1.fc201ep-15f),
    (float2)(0x1.44c000p-3f, 0x1.2b6ccap-15f),
    (float2)(0x1.526000p-3f, 0x1.cbc742p-16f),
    (float2)(0x1.5fe000p-3f, 0x1.3070a6p-15f),
    (float2)(0x1.6d6000p-3f, 0x1.fce33ap-20f),
    (float2)(0x1.7aa000p-3f, 0x1.890210p-15f),
    (float2)(0x1.87e000p-3f, 0x1.a06520p-15f),
    (float2)(0x1.952000p-3f, 0x1.6a73d0p-17f),
    (float2)(0x1.a22000p-3f, 0x1.bc1fe2p-15f),
    (float2)(0x1.af2000p-3f, 0x1.c94e80p-15f),
    (float2)(0x1.bc2000p-3f, 0x1.0ce85ap-16f),
    (float2)(0x1.c8e000p-3f, 0x1.f7c79ap-15f),
    (float2)(0x1.d5c000p-3f, 0x1.0b5a7cp-18f),
    (float2)(0x1.e26000p-3f, 0x1.076e2ap-15f),
    (float2)(0x1.ef0000p-3f, 0x1.5b97b8p-16f),
    (float2)(0x1.fb8000p-3f, 0x1.186d5ep-15f),
    (float2)(0x1.040000p-2f, 0x1.2ca5a6p-17f),
    (float2)(0x1.0a2000p-2f, 0x1.24e272p-14f),
    (float2)(0x1.104000p-2f, 0x1.8bf9aep-14f),
    (float2)(0x1.166000p-2f, 0x1.5cabaap-14f),
    (float2)(0x1.1c8000p-2f, 0x1.3182d2p-15f),
    (float2)(0x1.228000p-2f, 0x1.41fbcep-14f),
    (float2)(0x1.288000p-2f, 0x1.5a13dep-14f),
    (float2)(0x1.2e8000p-2f, 0x1.c575c2p-15f),
    (float2)(0x1.346000p-2f, 0x1.dd9a98p-14f),
    (float2)(0x1.3a6000p-2f, 0x1.3155a4p-16f),
    (float2)(0x1.404000p-2f, 0x1.843434p-17f),
    (float2)(0x1.460000p-2f, 0x1.8bc21cp-14f),
    (float2)(0x1.4be000p-2f, 0x1.7e55dcp-16f),
    (float2)(0x1.51a000p-2f, 0x1.5b0e5ap-15f),
    (float2)(0x1.576000p-2f, 0x1.dc5d14p-16f),
    (float2)(0x1.5d0000p-2f, 0x1.bdbf58p-14f),
    (float2)(0x1.62c000p-2f, 0x1.05e572p-15f),
    (float2)(0x1.686000p-2f, 0x1.903d36p-15f),
    (float2)(0x1.6e0000p-2f, 0x1.1d5456p-15f),
    (float2)(0x1.738000p-2f, 0x1.d7f6bap-14f),
    (float2)(0x1.792000p-2f, 0x1.4abfbap-15f),
    (float2)(0x1.7ea000p-2f, 0x1.f07704p-15f),
    (float2)(0x1.842000p-2f, 0x1.a3b43cp-15f),
    (float2)(0x1.89a000p-2f, 0x1.9c360ap-17f),
    (float2)(0x1.8f0000p-2f, 0x1.1e8736p-14f),
    (float2)(0x1.946000p-2f, 0x1.941c20p-14f),
    (float2)(0x1.99c000p-2f, 0x1.958116p-14f),
    (float2)(0x1.9f2000p-2f, 0x1.23ecbep-14f),
    (float2)(0x1.a48000p-2f, 0x1.024396p-16f),
    (float2)(0x1.a9c000p-2f, 0x1.d93534p-15f),
    (float2)(0x1.af0000p-2f, 0x1.293246p-14f),
    (float2)(0x1.b44000p-2f, 0x1.eef798p-15f),
    (float2)(0x1.b98000p-2f, 0x1.625a4cp-16f),
    (float2)(0x1.bea000p-2f, 0x1.4d9da6p-14f),
    (float2)(0x1.c3c000p-2f, 0x1.d7a7ccp-14f),
    (float2)(0x1.c8e000p-2f, 0x1.f7c79ap-14f),
    (float2)(0x1.ce0000p-2f, 0x1.af0b84p-14f),
    (float2)(0x1.d32000p-2f, 0x1.fcfc00p-15f),
    (float2)(0x1.d82000p-2f, 0x1.e7258ap-14f),
    (float2)(0x1.dd4000p-2f, 0x1.a81306p-16f),
    (float2)(0x1.e24000p-2f, 0x1.1034f8p-15f),
    (float2)(0x1.e74000p-2f, 0x1.09875ap-16f),
    (float2)(0x1.ec2000p-2f, 0x1.99d246p-14f),
    (float2)(0x1.f12000p-2f, 0x1.1ebf5ep-15f),
    (float2)(0x1.f60000p-2f, 0x1.23fa70p-14f),
    (float2)(0x1.fae000p-2f, 0x1.588f78p-14f),
    (float2)(0x1.ffc000p-2f, 0x1.2e0856p-14f),
    (float2)(0x1.024000p-1f, 0x1.52a5a4p-13f),
    (float2)(0x1.04a000p-1f, 0x1.df9da8p-13f),
    (float2)(0x1.072000p-1f, 0x1.f2e0e6p-16f),
    (float2)(0x1.098000p-1f, 0x1.bd3d5cp-15f),
    (float2)(0x1.0be000p-1f, 0x1.cb9094p-15f),
    (float2)(0x1.0e4000p-1f, 0x1.261746p-15f),
    (float2)(0x1.108000p-1f, 0x1.f39e2cp-13f),
    (float2)(0x1.12e000p-1f, 0x1.719592p-13f),
    (float2)(0x1.154000p-1f, 0x1.87a5e8p-14f),
    (float2)(0x1.178000p-1f, 0x1.eabbd8p-13f),
    (float2)(0x1.19e000p-1f, 0x1.cd68cep-14f),
    (float2)(0x1.1c2000p-1f, 0x1.b81f70p-13f),
    (float2)(0x1.1e8000p-1f, 0x1.7d79c0p-15f),
    (float2)(0x1.20c000p-1f, 0x1.b9a324p-14f),
    (float2)(0x1.230000p-1f, 0x1.30d7bep-13f),
    (float2)(0x1.254000p-1f, 0x1.5bce98p-13f),
    (float2)(0x1.278000p-1f, 0x1.5e1288p-13f),
    (float2)(0x1.29c000p-1f, 0x1.37fec2p-13f),
    (float2)(0x1.2c0000p-1f, 0x1.d3da88p-14f),
    (float2)(0x1.2e4000p-1f, 0x1.d0db90p-15f),
    (float2)(0x1.306000p-1f, 0x1.d7334ep-13f),
    (float2)(0x1.32a000p-1f, 0x1.133912p-13f),
    (float2)(0x1.34e000p-1f, 0x1.44ece6p-16f),
    (float2)(0x1.370000p-1f, 0x1.17b546p-13f),
    (float2)(0x1.392000p-1f, 0x1.e0d356p-13f),
    (float2)(0x1.3b6000p-1f, 0x1.0893fep-14f),
    (float2)(0x1.3d8000p-1f, 0x1.026a70p-13f),
    (float2)(0x1.3fa000p-1f, 0x1.5b84d0p-13f),
    (float2)(0x1.41c000p-1f, 0x1.8fe846p-13f),
    (float2)(0x1.43e000p-1f, 0x1.9fe2f8p-13f),
    (float2)(0x1.460000p-1f, 0x1.8bc21cp-13f),
    (float2)(0x1.482000p-1f, 0x1.53d1eap-13f),
    (float2)(0x1.4a4000p-1f, 0x1.f0bb60p-14f),
    (float2)(0x1.4c6000p-1f, 0x1.e6bf32p-15f),
    (float2)(0x1.4e6000p-1f, 0x1.d811b6p-13f),
    (float2)(0x1.508000p-1f, 0x1.13cc00p-13f),
    (float2)(0x1.52a000p-1f, 0x1.6932dep-16f),
    (float2)(0x1.54a000p-1f, 0x1.246798p-13f),
    (float2)(0x1.56a000p-1f, 0x1.f9d5b2p-13f),
    (float2)(0x1.58c000p-1f, 0x1.5b6b9ap-14f),
    (float2)(0x1.5ac000p-1f, 0x1.404c34p-13f),
    (float2)(0x1.5cc000p-1f, 0x1.b1dc6cp-13f),
    (float2)(0x1.5ee000p-1f, 0x1.54920ap-20f),
    (float2)(0x1.60e000p-1f, 0x1.97a23cp-16f),
    (float2)(0x1.62e000p-1f, 0x1.0bfbe8p-15f),
};

DECLARE_TABLE(float, LOG_INV_TBL, 129) = {
    0x1.000000p+1f,
    0x1.fc07f0p+0f,
    0x1.f81f82p+0f,
    0x1.f4465ap+0f,
    0x1.f07c20p+0f,
    0x1.ecc07cp+0f,
    0x1.e9131ap+0f,
    0x1.e573acp+0f,
    0x1.e1e1e2p+0f,
    0x1.de5d6ep+0f,
    0x1.dae608p+0f,
    0x1.d77b66p+0f,
    0x1.d41d42p+0f,
    0x1.d0cb58p+0f,
    0x1.cd8568p+0f,
    0x1.ca4b30p+0f,
    0x1.c71c72p+0f,
    0x1.c3f8f0p+0f,
    0x1.c0e070p+0f,
    0x1.bdd2b8p+0f,
    0x1.bacf92p+0f,
    0x1.b7d6c4p+0f,
    0x1.b4e81cp+0f,
    0x1.b20364p+0f,
    0x1.af286cp+0f,
    0x1.ac5702p+0f,
    0x1.a98ef6p+0f,
    0x1.a6d01ap+0f,
    0x1.a41a42p+0f,
    0x1.a16d40p+0f,
    0x1.9ec8eap+0f,
    0x1.9c2d14p+0f,
    0x1.99999ap+0f,
    0x1.970e50p+0f,
    0x1.948b10p+0f,
    0x1.920fb4p+0f,
    0x1.8f9c18p+0f,
    0x1.8d3018p+0f,
    0x1.8acb90p+0f,
    0x1.886e60p+0f,
    0x1.861862p+0f,
    0x1.83c978p+0f,
    0x1.818182p+0f,
    0x1.7f4060p+0f,
    0x1.7d05f4p+0f,
    0x1.7ad220p+0f,
    0x1.78a4c8p+0f,
    0x1.767dcep+0f,
    0x1.745d18p+0f,
    0x1.724288p+0f,
    0x1.702e06p+0f,
    0x1.6e1f76p+0f,
    0x1.6c16c2p+0f,
    0x1.6a13cep+0f,
    0x1.681682p+0f,
    0x1.661ec6p+0f,
    0x1.642c86p+0f,
    0x1.623fa8p+0f,
    0x1.605816p+0f,
    0x1.5e75bcp+0f,
    0x1.5c9882p+0f,
    0x1.5ac056p+0f,
    0x1.58ed24p+0f,
    0x1.571ed4p+0f,
    0x1.555556p+0f,
    0x1.539094p+0f,
    0x1.51d07ep+0f,
    0x1.501502p+0f,
    0x1.4e5e0ap+0f,
    0x1.4cab88p+0f,
    0x1.4afd6ap+0f,
    0x1.49539ep+0f,
    0x1.47ae14p+0f,
    0x1.460cbcp+0f,
    0x1.446f86p+0f,
    0x1.42d662p+0f,
    0x1.414142p+0f,
    0x1.3fb014p+0f,
    0x1.3e22ccp+0f,
    0x1.3c995ap+0f,
    0x1.3b13b2p+0f,
    0x1.3991c2p+0f,
    0x1.381382p+0f,
    0x1.3698e0p+0f,
    0x1.3521d0p+0f,
    0x1.33ae46p+0f,
    0x1.323e34p+0f,
    0x1.30d190p+0f,
    0x1.2f684cp+0f,
    0x1.2e025cp+0f,
    0x1.2c9fb4p+0f,
    0x1.2b404ap+0f,
    0x1.29e412p+0f,
    0x1.288b02p+0f,
    0x1.27350cp+0f,
    0x1.25e228p+0f,
    0x1.24924ap+0f,
    0x1.234568p+0f,
    0x1.21fb78p+0f,
    0x1.20b470p+0f,
    0x1.1f7048p+0f,
    0x1.1e2ef4p+0f,
    0x1.1cf06ap+0f,
    0x1.1bb4a4p+0f,
    0x1.1a7b96p+0f,
    0x1.194538p+0f,
    0x1.181182p+0f,
    0x1.16e068p+0f,
    0x1.15b1e6p+0f,
    0x1.1485f0p+0f,
    0x1.135c82p+0f,
    0x1.12358ep+0f,
    0x1.111112p+0f,
    0x1.0fef02p+0f,
    0x1.0ecf56p+0f,
    0x1.0db20ap+0f,
    0x1.0c9714p+0f,
    0x1.0b7e6ep+0f,
    0x1.0a6810p+0f,
    0x1.0953f4p+0f,
    0x1.084210p+0f,
    0x1.073260p+0f,
    0x1.0624dep+0f,
    0x1.051980p+0f,
    0x1.041042p+0f,
    0x1.03091cp+0f,
    0x1.020408p+0f,
    0x1.010102p+0f,
    0x1.000000p+0f,
};


DECLARE_TABLE(uchar, PIBITS_TBL, ) = {
    224, 241, 27, 193, 12, 88, 33, 116, 53, 126, 196, 126, 237, 175,
    169, 75, 74, 41, 222, 231, 28, 244, 236, 197, 151, 175, 31,
    235, 158, 212, 181, 168, 127, 121, 154, 253, 24, 61, 221, 38,
    44, 159, 60, 251, 217, 180, 125, 180, 41, 104, 45, 70, 188,
    188, 63, 96, 22, 120, 255, 95, 226, 127, 236, 160, 228, 247,
    46, 126, 17, 114, 210, 231, 76, 13, 230, 88, 71, 230, 4, 249,
    125, 209, 154, 192, 113, 166, 19, 18, 237, 186, 212, 215, 8,
    162, 251, 156, 166, 196, 114, 172, 119, 248, 115, 72, 70, 39,
    168, 187, 36, 25, 128, 75, 55, 9, 233, 184, 145, 220, 134, 21,
    239, 122, 175, 142, 69, 249, 7, 65, 14, 241, 100, 86, 138, 109,
    3, 119, 211, 212, 71, 95, 157, 240, 167, 84, 16, 57, 185, 13,
    230, 139, 2, 0, 0, 0, 0, 0, 0, 0
};

TABLE_FUNCTION(float2, LOGE_TBL, loge_tbl);
TABLE_FUNCTION(float, LOG_INV_TBL, log_inv_tbl);

uint4 TABLE_MANGLE(pibits_tbl)(size_t idx) {
    return *(__constant uint4 *)(PIBITS_TBL + idx);
}

#ifdef cl_khr_fp64

DECLARE_TABLE(double2, LN_TBL, 65) = {
    (double2)(0x0.0000000000000p+0, 0x0.0000000000000p+0),
    (double2)(0x1.fc0a800000000p-7, 0x1.61f807c79f3dbp-28),
    (double2)(0x1.f829800000000p-6, 0x1.873c1980267c8p-25),
    (double2)(0x1.7745800000000p-5, 0x1.ec65b9f88c69ep-26),
    (double2)(0x1.f0a3000000000p-5, 0x1.8022c54cc2f99p-26),
    (double2)(0x1.341d700000000p-4, 0x1.2c37a3a125330p-25),
    (double2)(0x1.6f0d200000000p-4, 0x1.15cad69737c93p-25),
    (double2)(0x1.a926d00000000p-4, 0x1.d256ab1b285e9p-27),
    (double2)(0x1.e270700000000p-4, 0x1.b8abcb97a7aa2p-26),
    (double2)(0x1.0d77e00000000p-3, 0x1.f34239659a5dcp-25),
    (double2)(0x1.2955280000000p-3, 0x1.e07fd48d30177p-25),
    (double2)(0x1.44d2b00000000p-3, 0x1.b32df4799f4f6p-25),
    (double2)(0x1.5ff3000000000p-3, 0x1.c29e4f4f21cf8p-25),
    (double2)(0x1.7ab8900000000p-3, 0x1.086c848df1b59p-30),
    (double2)(0x1.9525a80000000p-3, 0x1.cf456b4764130p-27),
    (double2)(0x1.af3c900000000p-3, 0x1.3a02ffcb63398p-25),
    (double2)(0x1.c8ff780000000p-3, 0x1.1e6a6886b0976p-25),
    (double2)(0x1.e270700000000p-3, 0x1.b8abcb97a7aa2p-25),
    (double2)(0x1.fb91800000000p-3, 0x1.b578f8aa35552p-25),
    (double2)(0x1.0a324c0000000p-2, 0x1.139c871afb9fcp-25),
    (double2)(0x1.1675c80000000p-2, 0x1.5d5d30701ce64p-25),
    (double2)(0x1.22941c0000000p-2, 0x1.de7bcb2d12142p-25),
    (double2)(0x1.2e8e280000000p-2, 0x1.d708e984e1664p-25),
    (double2)(0x1.3a64c40000000p-2, 0x1.56945e9c72f36p-26),
    (double2)(0x1.4618bc0000000p-2, 0x1.0e2f613e85bdap-29),
    (double2)(0x1.51aad80000000p-2, 0x1.cb7e0b42724f6p-28),
    (double2)(0x1.5d1bd80000000p-2, 0x1.fac04e52846c7p-25),
    (double2)(0x1.686c800000000p-2, 0x1.e9b14aec442bep-26),
    (double2)(0x1.739d7c0000000p-2, 0x1.b5de8034e7126p-25),
    (double2)(0x1.7eaf800000000p-2, 0x1.dc157e1b259d3p-25),
    (double2)(0x1.89a3380000000p-2, 0x1.b05096ad69c62p-28),
    (double2)(0x1.9479400000000p-2, 0x1.c2116faba4cddp-26),
    (double2)(0x1.9f323c0000000p-2, 0x1.65fcc25f95b47p-25),
    (double2)(0x1.a9cec80000000p-2, 0x1.a9a08498d4850p-26),
    (double2)(0x1.b44f740000000p-2, 0x1.de647b1465f77p-25),
    (double2)(0x1.beb4d80000000p-2, 0x1.da71b7bf7861dp-26),
    (double2)(0x1.c8ff7c0000000p-2, 0x1.e6a6886b09760p-28),
    (double2)(0x1.d32fe40000000p-2, 0x1.f0075eab0ef64p-25),
    (double2)(0x1.dd46a00000000p-2, 0x1.3071282fb989bp-28),
    (double2)(0x1.e744240000000p-2, 0x1.0eb43c3f1bed2p-25),
    (double2)(0x1.f128f40000000p-2, 0x1.faf06ecb35c84p-26),
    (double2)(0x1.faf5880000000p-2, 0x1.ef1e63db35f68p-27),
    (double2)(0x1.02552a0000000p-1, 0x1.69743fb1a71a5p-27),
    (double2)(0x1.0723e40000000p-1, 0x1.c1cdf404e5796p-25),
    (double2)(0x1.0be72e0000000p-1, 0x1.094aa0ada625ep-27),
    (double2)(0x1.109f380000000p-1, 0x1.e2d4c96fde3ecp-25),
    (double2)(0x1.154c3c0000000p-1, 0x1.2f4d5e9a98f34p-25),
    (double2)(0x1.19ee6a0000000p-1, 0x1.467c96ecc5cbep-25),
    (double2)(0x1.1e85f40000000p-1, 0x1.e7040d03dec5ap-25),
    (double2)(0x1.23130c0000000p-1, 0x1.7bebf4282de36p-25),
    (double2)(0x1.2795e00000000p-1, 0x1.289b11aeb783fp-25),
    (double2)(0x1.2c0e9e0000000p-1, 0x1.a891d1772f538p-26),
    (double2)(0x1.307d720000000p-1, 0x1.34f10be1fb591p-25),
    (double2)(0x1.34e2880000000p-1, 0x1.d9ce1d316eb93p-25),
    (double2)(0x1.393e0c0000000p-1, 0x1.3562a19a9c442p-25),
    (double2)(0x1.3d90260000000p-1, 0x1.4e2adf548084cp-26),
    (double2)(0x1.41d8fe0000000p-1, 0x1.08ce55cc8c97ap-26),
    (double2)(0x1.4618bc0000000p-1, 0x1.0e2f613e85bdap-28),
    (double2)(0x1.4a4f840000000p-1, 0x1.db03ebb0227bfp-25),
    (double2)(0x1.4e7d800000000p-1, 0x1.1b75bb09cb098p-25),
    (double2)(0x1.52a2d20000000p-1, 0x1.96f16abb9df22p-27),
    (double2)(0x1.56bf9c0000000p-1, 0x1.5b3f399411c62p-25),
    (double2)(0x1.5ad4040000000p-1, 0x1.86b3e59f65355p-26),
    (double2)(0x1.5ee02a0000000p-1, 0x1.2482ceae1ac12p-26),
    (double2)(0x1.62e42e0000000p-1, 0x1.efa39ef35793cp-25),
};

TABLE_FUNCTION(double2, LN_TBL, ln_tbl);


// Arrays atan_jby256_lead and atan_jby256_tail contain
// leading and trailing parts respectively of precomputed
// values of atan(j/256), for j = 16, 17, ..., 256.
// atan_jby256_lead contains the first 21 bits of precision,
// and atan_jby256_tail contains a further 53 bits precision.

DECLARE_TABLE(double2, ATAN_JBY256_TBL, 241) = {
    (double2)(0x1.ff55b00000000p-5, 0x1.6e59fbd38db2cp-26),
    (double2)(0x1.0f99e00000000p-4, 0x1.4e3aa54dedf96p-25),
    (double2)(0x1.1f86d00000000p-4, 0x1.7e105ab1bda88p-25),
    (double2)(0x1.2f71900000000p-4, 0x1.8c5254d013fd0p-27),
    (double2)(0x1.3f59f00000000p-4, 0x1.cf8ab3ad62670p-29),
    (double2)(0x1.4f3fd00000000p-4, 0x1.9dca4bec80468p-26),
    (double2)(0x1.5f23200000000p-4, 0x1.3f4b5ec98a8dap-26),
    (double2)(0x1.6f03b00000000p-4, 0x1.b9d49619d81fep-25),
    (double2)(0x1.7ee1800000000p-4, 0x1.3017887460934p-27),
    (double2)(0x1.8ebc500000000p-4, 0x1.11e3eca0b9944p-26),
    (double2)(0x1.9e94100000000p-4, 0x1.4f3f73c5a332ep-26),
    (double2)(0x1.ae68a00000000p-4, 0x1.c71c8ae0e00a6p-26),
    (double2)(0x1.be39e00000000p-4, 0x1.7cde0f86fbdc7p-25),
    (double2)(0x1.ce07c00000000p-4, 0x1.70f328c889c72p-26),
    (double2)(0x1.ddd2100000000p-4, 0x1.c07ae9b994efep-26),
    (double2)(0x1.ed98c00000000p-4, 0x1.0c8021d7b1698p-27),
    (double2)(0x1.fd5ba00000000p-4, 0x1.35585edb8cb22p-25),
    (double2)(0x1.068d500000000p-3, 0x1.0842567b30e96p-24),
    (double2)(0x1.0e6ad00000000p-3, 0x1.99e811031472ep-24),
    (double2)(0x1.1646500000000p-3, 0x1.041821416bceep-25),
    (double2)(0x1.1e1fa00000000p-3, 0x1.f6086e4dc96f4p-24),
    (double2)(0x1.25f6e00000000p-3, 0x1.71a535c5f1b58p-27),
    (double2)(0x1.2dcbd00000000p-3, 0x1.65f743fe63ca1p-24),
    (double2)(0x1.359e800000000p-3, 0x1.dbd733472d014p-24),
    (double2)(0x1.3d6ee00000000p-3, 0x1.d18cc4d8b0d1dp-24),
    (double2)(0x1.453ce00000000p-3, 0x1.8c12553c8fb29p-24),
    (double2)(0x1.4d08700000000p-3, 0x1.53b49e2e8f991p-24),
    (double2)(0x1.54d1800000000p-3, 0x1.7422ae148c141p-24),
    (double2)(0x1.5c98100000000p-3, 0x1.e3ec269df56a8p-27),
    (double2)(0x1.645bf00000000p-3, 0x1.ff6754e7e0ac9p-24),
    (double2)(0x1.6c1d400000000p-3, 0x1.131267b1b5aadp-24),
    (double2)(0x1.73dbd00000000p-3, 0x1.d14fa403a94bcp-24),
    (double2)(0x1.7b97b00000000p-3, 0x1.2f396c089a3d8p-25),
    (double2)(0x1.8350b00000000p-3, 0x1.c731d78fa95bbp-24),
    (double2)(0x1.8b06e00000000p-3, 0x1.c50f385177399p-24),
    (double2)(0x1.92ba300000000p-3, 0x1.f41409c6f2c20p-25),
    (double2)(0x1.9a6a800000000p-3, 0x1.d2d90c4c39ec0p-24),
    (double2)(0x1.a217e00000000p-3, 0x1.80420696f2106p-25),
    (double2)(0x1.a9c2300000000p-3, 0x1.b40327943a2e8p-27),
    (double2)(0x1.b169600000000p-3, 0x1.5d35e02f3d2a2p-25),
    (double2)(0x1.b90d700000000p-3, 0x1.4a498288117b0p-25),
    (double2)(0x1.c0ae500000000p-3, 0x1.35da119afb324p-25),
    (double2)(0x1.c84bf00000000p-3, 0x1.14e85cdb9a908p-24),
    (double2)(0x1.cfe6500000000p-3, 0x1.38754e5547b9ap-25),
    (double2)(0x1.d77d500000000p-3, 0x1.be40ae6ce3246p-24),
    (double2)(0x1.df11000000000p-3, 0x1.0c993b3bea7e7p-24),
    (double2)(0x1.e6a1400000000p-3, 0x1.1d2dd89ac3359p-24),
    (double2)(0x1.ee2e100000000p-3, 0x1.1476603332c46p-25),
    (double2)(0x1.f5b7500000000p-3, 0x1.f25901bac55b7p-24),
    (double2)(0x1.fd3d100000000p-3, 0x1.f881b7c826e28p-24),
    (double2)(0x1.025fa00000000p-2, 0x1.441996d698d20p-24),
    (double2)(0x1.061ee00000000p-2, 0x1.407ac521ea089p-23),
    (double2)(0x1.09dc500000000p-2, 0x1.2fb0c6c4b1723p-23),
    (double2)(0x1.0d97e00000000p-2, 0x1.ca135966a3e18p-23),
    (double2)(0x1.1151a00000000p-2, 0x1.b1218e4d646e4p-25),
    (double2)(0x1.1509700000000p-2, 0x1.d4e72a350d288p-25),
    (double2)(0x1.18bf500000000p-2, 0x1.4617e2f04c329p-23),
    (double2)(0x1.1c73500000000p-2, 0x1.096ec41e82650p-25),
    (double2)(0x1.2025500000000p-2, 0x1.9f91f25773e6ep-24),
    (double2)(0x1.23d5600000000p-2, 0x1.59c0820f1d674p-25),
    (double2)(0x1.2783700000000p-2, 0x1.02bf7a2df1064p-25),
    (double2)(0x1.2b2f700000000p-2, 0x1.fb36bfc40508fp-23),
    (double2)(0x1.2ed9800000000p-2, 0x1.ea08f3f8dc892p-24),
    (double2)(0x1.3281800000000p-2, 0x1.3ed6254656a0ep-24),
    (double2)(0x1.3627700000000p-2, 0x1.b83f5e5e69c58p-25),
    (double2)(0x1.39cb400000000p-2, 0x1.d6ec2af768592p-23),
    (double2)(0x1.3d6d100000000p-2, 0x1.493889a226f94p-25),
    (double2)(0x1.410cb00000000p-2, 0x1.5ad8fa65279bap-23),
    (double2)(0x1.44aa400000000p-2, 0x1.b615784d45434p-25),
    (double2)(0x1.4845a00000000p-2, 0x1.09a184368f145p-23),
    (double2)(0x1.4bdee00000000p-2, 0x1.61a2439b0d91cp-24),
    (double2)(0x1.4f75f00000000p-2, 0x1.ce1a65e39a978p-24),
    (double2)(0x1.530ad00000000p-2, 0x1.32a39a93b6a66p-23),
    (double2)(0x1.569d800000000p-2, 0x1.1c3699af804e7p-23),
    (double2)(0x1.5a2e000000000p-2, 0x1.75e0f4e44ede8p-26),
    (double2)(0x1.5dbc300000000p-2, 0x1.f77ced1a7a83bp-23),
    (double2)(0x1.6148400000000p-2, 0x1.84e7f0cb1b500p-29),
    (double2)(0x1.64d1f00000000p-2, 0x1.ec6b838b02dfep-23),
    (double2)(0x1.6859700000000p-2, 0x1.3ebf4dfbeda87p-23),
    (double2)(0x1.6bdea00000000p-2, 0x1.9397aed9cb475p-23),
    (double2)(0x1.6f61900000000p-2, 0x1.07937bc239c54p-24),
    (double2)(0x1.72e2200000000p-2, 0x1.aa754553131b6p-23),
    (double2)(0x1.7660700000000p-2, 0x1.4a05d407c45dcp-24),
    (double2)(0x1.79dc600000000p-2, 0x1.132231a206dd0p-23),
    (double2)(0x1.7d56000000000p-2, 0x1.2d8ecfdd69c88p-24),
    (double2)(0x1.80cd400000000p-2, 0x1.a852c74218606p-24),
    (double2)(0x1.8442200000000p-2, 0x1.71bf2baeebb50p-23),
    (double2)(0x1.87b4b00000000p-2, 0x1.83d7db7491820p-27),
    (double2)(0x1.8b24d00000000p-2, 0x1.ca50d92b6da14p-25),
    (double2)(0x1.8e92900000000p-2, 0x1.6f5cde8530298p-26),
    (double2)(0x1.91fde00000000p-2, 0x1.f343198910740p-24),
    (double2)(0x1.9566d00000000p-2, 0x1.0e8d241ccd80ap-24),
    (double2)(0x1.98cd500000000p-2, 0x1.1535ac619e6c8p-24),
    (double2)(0x1.9c31600000000p-2, 0x1.7316041c36cd2p-24),
    (double2)(0x1.9f93000000000p-2, 0x1.985a000637d8ep-24),
    (double2)(0x1.a2f2300000000p-2, 0x1.f2f29858c0a68p-25),
    (double2)(0x1.a64ee00000000p-2, 0x1.879847f96d909p-23),
    (double2)(0x1.a9a9200000000p-2, 0x1.ab3d319e12e42p-23),
    (double2)(0x1.ad00f00000000p-2, 0x1.5088162dfc4c2p-24),
    (double2)(0x1.b056400000000p-2, 0x1.05749a1cd9d8cp-25),
    (double2)(0x1.b3a9100000000p-2, 0x1.da65c6c6b8618p-26),
    (double2)(0x1.b6f9600000000p-2, 0x1.739bf7df1ad64p-25),
    (double2)(0x1.ba47300000000p-2, 0x1.bc31252aa3340p-25),
    (double2)(0x1.bd92800000000p-2, 0x1.e528191ad3aa8p-26),
    (double2)(0x1.c0db400000000p-2, 0x1.929d93df19f18p-23),
    (double2)(0x1.c421900000000p-2, 0x1.ff11eb693a080p-26),
    (double2)(0x1.c765500000000p-2, 0x1.55ae3f145a3a0p-27),
    (double2)(0x1.caa6800000000p-2, 0x1.cbcd8c6c0ca82p-24),
    (double2)(0x1.cde5300000000p-2, 0x1.0cb04d425d304p-24),
    (double2)(0x1.d121500000000p-2, 0x1.9adfcab5be678p-24),
    (double2)(0x1.d45ae00000000p-2, 0x1.93d90c5662508p-23),
    (double2)(0x1.d791f00000000p-2, 0x1.68489bd35ff40p-24),
    (double2)(0x1.dac6700000000p-2, 0x1.586ed3da2b7e0p-28),
    (double2)(0x1.ddf8500000000p-2, 0x1.7604d2e850eeep-23),
    (double2)(0x1.e127b00000000p-2, 0x1.ac1d12bfb53d8p-24),
    (double2)(0x1.e454800000000p-2, 0x1.9b3d468274740p-28),
    (double2)(0x1.e77eb00000000p-2, 0x1.fc5d68d10e53cp-24),
    (double2)(0x1.eaa6500000000p-2, 0x1.8f9e51884becbp-23),
    (double2)(0x1.edcb600000000p-2, 0x1.a87f0869c06d1p-23),
    (double2)(0x1.f0ede00000000p-2, 0x1.31e7279f685fap-23),
    (double2)(0x1.f40dd00000000p-2, 0x1.6a8282f9719b0p-27),
    (double2)(0x1.f72b200000000p-2, 0x1.0d2724a8a44e0p-25),
    (double2)(0x1.fa45d00000000p-2, 0x1.a60524b11ad4ep-23),
    (double2)(0x1.fd5e000000000p-2, 0x1.75fdf832750f0p-26),
    (double2)(0x1.0039c00000000p-1, 0x1.cf06902e4cd36p-23),
    (double2)(0x1.01c3400000000p-1, 0x1.e82422d4f6d10p-25),
    (double2)(0x1.034b700000000p-1, 0x1.24a091063e6c0p-26),
    (double2)(0x1.04d2500000000p-1, 0x1.8a1a172dc6f38p-24),
    (double2)(0x1.0657e00000000p-1, 0x1.29b6619f8a92dp-22),
    (double2)(0x1.07dc300000000p-1, 0x1.9274d9c1b70c8p-24),
    (double2)(0x1.095f300000000p-1, 0x1.0c34b1fbb7930p-26),
    (double2)(0x1.0ae0e00000000p-1, 0x1.639866c20eb50p-25),
    (double2)(0x1.0c61400000000p-1, 0x1.6d6d0f6832e9ep-23),
    (double2)(0x1.0de0500000000p-1, 0x1.af54def99f25ep-22),
    (double2)(0x1.0f5e200000000p-1, 0x1.16cfc52a00262p-22),
    (double2)(0x1.10daa00000000p-1, 0x1.dcc1e83569c32p-23),
    (double2)(0x1.1255d00000000p-1, 0x1.37f7a551ed425p-22),
    (double2)(0x1.13cfb00000000p-1, 0x1.f6360adc98887p-22),
    (double2)(0x1.1548500000000p-1, 0x1.2c6ec8d35a2c1p-22),
    (double2)(0x1.16bfa00000000p-1, 0x1.bd44df84cb036p-23),
    (double2)(0x1.1835a00000000p-1, 0x1.117cf826e310ep-22),
    (double2)(0x1.19aa500000000p-1, 0x1.ca533f332cfc9p-22),
    (double2)(0x1.1b1dc00000000p-1, 0x1.0f208509dbc2ep-22),
    (double2)(0x1.1c8fe00000000p-1, 0x1.cd07d93c945dep-23),
    (double2)(0x1.1e00b00000000p-1, 0x1.57bdfd67e6d72p-22),
    (double2)(0x1.1f70400000000p-1, 0x1.aab89c516c658p-24),
    (double2)(0x1.20de800000000p-1, 0x1.3e823b1a1b8a0p-25),
    (double2)(0x1.224b700000000p-1, 0x1.307464a9d6d3cp-23),
    (double2)(0x1.23b7100000000p-1, 0x1.c5993cd438843p-22),
    (double2)(0x1.2521700000000p-1, 0x1.ba2fca02ab554p-22),
    (double2)(0x1.268a900000000p-1, 0x1.01a5b6983a268p-23),
    (double2)(0x1.27f2600000000p-1, 0x1.273d1b350efc8p-25),
    (double2)(0x1.2958e00000000p-1, 0x1.64c238c37b0c6p-23),
    (double2)(0x1.2abe200000000p-1, 0x1.aded07370a300p-25),
    (double2)(0x1.2c22100000000p-1, 0x1.78091197eb47ep-23),
    (double2)(0x1.2d84c00000000p-1, 0x1.4b0f245e0dabcp-24),
    (double2)(0x1.2ee6200000000p-1, 0x1.080d9794e2eafp-22),
    (double2)(0x1.3046400000000p-1, 0x1.d4ec242b60c76p-23),
    (double2)(0x1.31a5200000000p-1, 0x1.221d2f940caa0p-27),
    (double2)(0x1.3302b00000000p-1, 0x1.cdbc42b2bba5cp-24),
    (double2)(0x1.345f000000000p-1, 0x1.cce37bb440840p-25),
    (double2)(0x1.35ba000000000p-1, 0x1.6c1d999cf1dd0p-22),
    (double2)(0x1.3713d00000000p-1, 0x1.bed8a07eb0870p-26),
    (double2)(0x1.386c500000000p-1, 0x1.69ed88f490e3cp-24),
    (double2)(0x1.39c3900000000p-1, 0x1.cd41719b73ef0p-25),
    (double2)(0x1.3b19800000000p-1, 0x1.cbc4ac95b41b7p-22),
    (double2)(0x1.3c6e400000000p-1, 0x1.238f1b890f5d7p-22),
    (double2)(0x1.3dc1c00000000p-1, 0x1.50c4282259cc4p-24),
    (double2)(0x1.3f13f00000000p-1, 0x1.713d2de87b3e2p-22),
    (double2)(0x1.4064f00000000p-1, 0x1.1d5a7d2255276p-23),
    (double2)(0x1.41b4a00000000p-1, 0x1.c0dfd48227ac1p-22),
    (double2)(0x1.4303200000000p-1, 0x1.1c964dab76753p-22),
    (double2)(0x1.4450600000000p-1, 0x1.6de56d5704496p-23),
    (double2)(0x1.459c600000000p-1, 0x1.4aeb71fd19968p-23),
    (double2)(0x1.46e7200000000p-1, 0x1.fbf91c57b1918p-23),
    (double2)(0x1.4830a00000000p-1, 0x1.d6bef7fbe5d9ap-22),
    (double2)(0x1.4978f00000000p-1, 0x1.464d3dc249066p-22),
    (double2)(0x1.4ac0000000000p-1, 0x1.638e2ec4d9073p-22),
    (double2)(0x1.4c05e00000000p-1, 0x1.16f4a7247ea7cp-24),
    (double2)(0x1.4d4a800000000p-1, 0x1.1a0a740f1d440p-28),
    (double2)(0x1.4e8de00000000p-1, 0x1.6edbb0114a33cp-23),
    (double2)(0x1.4fd0100000000p-1, 0x1.dbee8bf1d513cp-24),
    (double2)(0x1.5111000000000p-1, 0x1.5b8bdb0248f73p-22),
    (double2)(0x1.5250c00000000p-1, 0x1.7de3d3f5eac64p-22),
    (double2)(0x1.538f500000000p-1, 0x1.ee24187ae448ap-23),
    (double2)(0x1.54cca00000000p-1, 0x1.e06c591ec5192p-22),
    (double2)(0x1.5608d00000000p-1, 0x1.4e3861a332738p-24),
    (double2)(0x1.5743c00000000p-1, 0x1.a9599dcc2bfe4p-24),
    (double2)(0x1.587d800000000p-1, 0x1.f732fbad43468p-25),
    (double2)(0x1.59b6000000000p-1, 0x1.eb9f573b727d9p-22),
    (double2)(0x1.5aed600000000p-1, 0x1.8b212a2eb9897p-22),
    (double2)(0x1.5c23900000000p-1, 0x1.384884c167215p-22),
    (double2)(0x1.5d58900000000p-1, 0x1.0e2d363020051p-22),
    (double2)(0x1.5e8c600000000p-1, 0x1.2820879fbd022p-22),
    (double2)(0x1.5fbf000000000p-1, 0x1.a1ab9893e4b30p-22),
    (double2)(0x1.60f0800000000p-1, 0x1.2d1b817a24478p-23),
    (double2)(0x1.6220d00000000p-1, 0x1.15d7b8ded4878p-25),
    (double2)(0x1.634ff00000000p-1, 0x1.8968f9db3a5e4p-24),
    (double2)(0x1.647de00000000p-1, 0x1.71c4171fe135fp-22),
    (double2)(0x1.65aab00000000p-1, 0x1.6d80f605d0d8cp-22),
    (double2)(0x1.66d6600000000p-1, 0x1.c91f043691590p-24),
    (double2)(0x1.6800e00000000p-1, 0x1.39f8a15fce2b2p-23),
    (double2)(0x1.692a400000000p-1, 0x1.55beda9d94b80p-27),
    (double2)(0x1.6a52700000000p-1, 0x1.b12c15d60949ap-23),
    (double2)(0x1.6b79800000000p-1, 0x1.24167b312bfe3p-22),
    (double2)(0x1.6c9f700000000p-1, 0x1.0ab8633070277p-22),
    (double2)(0x1.6dc4400000000p-1, 0x1.54554ebbc80eep-23),
    (double2)(0x1.6ee7f00000000p-1, 0x1.0204aef5a4bb8p-25),
    (double2)(0x1.700a700000000p-1, 0x1.8af08c679cf2cp-22),
    (double2)(0x1.712be00000000p-1, 0x1.0852a330ae6c8p-22),
    (double2)(0x1.724c300000000p-1, 0x1.6d3eb9ec32916p-23),
    (double2)(0x1.736b600000000p-1, 0x1.685cb7fcbbafep-23),
    (double2)(0x1.7489700000000p-1, 0x1.1f751c1e0bd95p-22),
    (double2)(0x1.75a6700000000p-1, 0x1.705b1b0f72560p-26),
    (double2)(0x1.76c2400000000p-1, 0x1.b98d8d808ca92p-22),
    (double2)(0x1.77dd100000000p-1, 0x1.2ea22c75cc980p-25),
    (double2)(0x1.78f6b00000000p-1, 0x1.7aba62bca0350p-22),
    (double2)(0x1.7a0f400000000p-1, 0x1.d73833442278cp-22),
    (double2)(0x1.7b26c00000000p-1, 0x1.5a5ca1fb18bf9p-22),
    (double2)(0x1.7c3d300000000p-1, 0x1.1a6092b6ecf28p-25),
    (double2)(0x1.7d52800000000p-1, 0x1.44fd049aac104p-24),
    (double2)(0x1.7e66c00000000p-1, 0x1.c114fd8df5180p-29),
    (double2)(0x1.7f79e00000000p-1, 0x1.5972f130feae5p-22),
    (double2)(0x1.808c000000000p-1, 0x1.ca034a55fe198p-24),
    (double2)(0x1.819d000000000p-1, 0x1.6e2b149990227p-22),
    (double2)(0x1.82ad000000000p-1, 0x1.b00000294592cp-24),
    (double2)(0x1.83bbe00000000p-1, 0x1.8b9bdc442620ep-22),
    (double2)(0x1.84c9c00000000p-1, 0x1.d94fdfabf3e4ep-23),
    (double2)(0x1.85d6900000000p-1, 0x1.5db30b145ad9ap-23),
    (double2)(0x1.86e2500000000p-1, 0x1.e3e1eb95022b0p-23),
    (double2)(0x1.87ed000000000p-1, 0x1.d5b8b45442bd6p-22),
    (double2)(0x1.88f6b00000000p-1, 0x1.7a046231ecd2ep-22),
    (double2)(0x1.89ff500000000p-1, 0x1.feafe3ef55232p-22),
    (double2)(0x1.8b06f00000000p-1, 0x1.839e7bfd78267p-22),
    (double2)(0x1.8c0d900000000p-1, 0x1.45cf49d6fa900p-25),
    (double2)(0x1.8d13200000000p-1, 0x1.be3132b27f380p-27),
    (double2)(0x1.8e17a00000000p-1, 0x1.533980bb84f9fp-22),
    (double2)(0x1.8f1b300000000p-1, 0x1.889e2ce3ba390p-26),
    (double2)(0x1.901db00000000p-1, 0x1.f7778c3ad0cc8p-24),
    (double2)(0x1.911f300000000p-1, 0x1.46660cec4eba2p-23),
    (double2)(0x1.921fb00000000p-1, 0x1.5110b4611a626p-23),
};

DECLARE_TABLE(double2, TWO_TO_JBY64_EP, 64) = {
    (double2)(0x1.0000000000000p+0, 0x0.0000000000000p+0),
    (double2)(0x1.02c9a30000000p+0, 0x1.cef00c1dcdef9p-25),
    (double2)(0x1.059b0d0000000p+0, 0x1.8ac2ba1d73e2ap-27),
    (double2)(0x1.0874510000000p+0, 0x1.0eb37901186bep-25),
    (double2)(0x1.0b55860000000p+0, 0x1.9f3121ec53172p-25),
    (double2)(0x1.0e3ec30000000p+0, 0x1.69e8d10103a17p-27),
    (double2)(0x1.11301d0000000p+0, 0x1.25b50a4ebbf1ap-32),
    (double2)(0x1.1429aa0000000p+0, 0x1.d525bbf668203p-25),
    (double2)(0x1.172b830000000p+0, 0x1.8faa2f5b9bef9p-25),
    (double2)(0x1.1a35be0000000p+0, 0x1.6df96ea796d31p-25),
    (double2)(0x1.1d48730000000p+0, 0x1.68b9aa7805b80p-28),
    (double2)(0x1.2063b80000000p+0, 0x1.0c519ac771dd6p-25),
    (double2)(0x1.2387a60000000p+0, 0x1.ceac470cd83f5p-25),
    (double2)(0x1.26b4560000000p+0, 0x1.789f37495e99cp-26),
    (double2)(0x1.29e9df0000000p+0, 0x1.47f7b84b09745p-26),
    (double2)(0x1.2d285a0000000p+0, 0x1.b900c2d002475p-26),
    (double2)(0x1.306fe00000000p+0, 0x1.4636e2a5bd1abp-25),
    (double2)(0x1.33c08b0000000p+0, 0x1.320b7fa64e430p-27),
    (double2)(0x1.371a730000000p+0, 0x1.ceaa72a9c5154p-26),
    (double2)(0x1.3a7db30000000p+0, 0x1.3967fdba86f24p-26),
    (double2)(0x1.3dea640000000p+0, 0x1.82468446b6824p-25),
    (double2)(0x1.4160a20000000p+0, 0x1.f72e29f84325bp-28),
    (double2)(0x1.44e0860000000p+0, 0x1.8624b40c4dbd0p-30),
    (double2)(0x1.486a2b0000000p+0, 0x1.704f3404f068ep-26),
    (double2)(0x1.4bfdad0000000p+0, 0x1.4d8a89c750e5ep-26),
    (double2)(0x1.4f9b270000000p+0, 0x1.a74b29ab4cf62p-26),
    (double2)(0x1.5342b50000000p+0, 0x1.a753e077c2a0fp-26),
    (double2)(0x1.56f4730000000p+0, 0x1.ad49f699bb2c0p-26),
    (double2)(0x1.5ab07d0000000p+0, 0x1.a90a852b19260p-25),
    (double2)(0x1.5e76f10000000p+0, 0x1.6b48521ba6f93p-26),
    (double2)(0x1.6247eb0000000p+0, 0x1.d2ac258f87d03p-31),
    (double2)(0x1.6623880000000p+0, 0x1.2a91124893ecfp-27),
    (double2)(0x1.6a09e60000000p+0, 0x1.9fcef32422cbep-26),
    (double2)(0x1.6dfb230000000p+0, 0x1.8ca345de441c5p-25),
    (double2)(0x1.71f75e0000000p+0, 0x1.1d8bee7ba46e1p-25),
    (double2)(0x1.75feb50000000p+0, 0x1.9099f22fdba6ap-26),
    (double2)(0x1.7a11470000000p+0, 0x1.f580c36bea881p-27),
    (double2)(0x1.7e2f330000000p+0, 0x1.b3d398841740ap-26),
    (double2)(0x1.8258990000000p+0, 0x1.2999c25159f11p-25),
    (double2)(0x1.868d990000000p+0, 0x1.68925d901c83bp-25),
    (double2)(0x1.8ace540000000p+0, 0x1.15506dadd3e2ap-27),
    (double2)(0x1.8f1ae90000000p+0, 0x1.22aee6c57304ep-25),
    (double2)(0x1.93737b0000000p+0, 0x1.9b8bc9e8a0387p-29),
    (double2)(0x1.97d8290000000p+0, 0x1.fbc9c9f173d24p-25),
    (double2)(0x1.9c49180000000p+0, 0x1.51f8480e3e235p-27),
    (double2)(0x1.a0c6670000000p+0, 0x1.6bbcac96535b5p-25),
    (double2)(0x1.a5503b0000000p+0, 0x1.1f12ae45a1224p-27),
    (double2)(0x1.a9e6b50000000p+0, 0x1.5e7f6fd0fac90p-26),
    (double2)(0x1.ae89f90000000p+0, 0x1.2b5a75abd0e69p-25),
    (double2)(0x1.b33a2b0000000p+0, 0x1.09e2bf5ed7fa1p-25),
    (double2)(0x1.b7f76f0000000p+0, 0x1.7daf237553d84p-27),
    (double2)(0x1.bcc1e90000000p+0, 0x1.2f074891ee83dp-30),
    (double2)(0x1.c199bd0000000p+0, 0x1.b0aa538444196p-25),
    (double2)(0x1.c67f120000000p+0, 0x1.cafa29694426fp-25),
    (double2)(0x1.cb720d0000000p+0, 0x1.9df20d22a0797p-25),
    (double2)(0x1.d072d40000000p+0, 0x1.40f12f71a1e45p-25),
    (double2)(0x1.d5818d0000000p+0, 0x1.9f7490e4bb40bp-25),
    (double2)(0x1.da9e600000000p+0, 0x1.ed9942b84600dp-27),
    (double2)(0x1.dfc9730000000p+0, 0x1.bdcdaf5cb4656p-27),
    (double2)(0x1.e502ee0000000p+0, 0x1.e2cffd89cf44cp-26),
    (double2)(0x1.ea4afa0000000p+0, 0x1.52486cc2c7b9dp-27),
    (double2)(0x1.efa1be0000000p+0, 0x1.cc2b44eee3fa4p-25),
    (double2)(0x1.f507650000000p+0, 0x1.6dc8a80ce9f09p-25),
    (double2)(0x1.fa7c180000000p+0, 0x1.9e90d82e90a7ep-28)

};


TABLE_FUNCTION(double2, ATAN_JBY256_TBL, atan_jby256_tbl);
TABLE_FUNCTION(double2, TWO_TO_JBY64_EP, two_to_jby64_ep_tbl);

#endif // cl_khr_fp64
