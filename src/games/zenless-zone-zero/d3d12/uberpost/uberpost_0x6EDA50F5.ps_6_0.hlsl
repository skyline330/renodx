#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

cbuffer cb0 : register(b0) {
  int Globals_000 : packoffset(c000.x);
  float4 Globals_016[4] : packoffset(c001.x);
  float4 Globals_080 : packoffset(c005.x);
  float4 Globals_096 : packoffset(c006.x);
  float4 Globals_112 : packoffset(c007.x);
  float4 Globals_128 : packoffset(c008.x);
  float4 Globals_144 : packoffset(c009.x);
  float4 Globals_160 : packoffset(c010.x);
  float4 Globals_176 : packoffset(c011.x);
  float Globals_192 : packoffset(c012.x);
  float4 Globals_208[4] : packoffset(c013.x);
  float4 Globals_272[4] : packoffset(c017.x);
  float4 Globals_336 : packoffset(c021.x);
  float4 Globals_352 : packoffset(c022.x);
  float4 Globals_368[4] : packoffset(c023.x);
  float Globals_432 : packoffset(c027.x);
  float4 Globals_448 : packoffset(c028.x);
  float4 Globals_464 : packoffset(c029.x);
  float3 Globals_480 : packoffset(c030.x);
  float4 Globals_496[4] : packoffset(c031.x);
  float4 Globals_560[4] : packoffset(c035.x);
  float4 Globals_624[4] : packoffset(c039.x);
  float4 Globals_688[4] : packoffset(c043.x);
  float4 Globals_752[4] : packoffset(c047.x);
  float4 Globals_816[4] : packoffset(c051.x);
  float4 Globals_880[4] : packoffset(c055.x);
  float4 Globals_944 : packoffset(c059.x);
  float4 Globals_960 : packoffset(c060.x);
  float Globals_976 : packoffset(c061.x);
  float4 Globals_992 : packoffset(c062.x);
  float4 Globals_1008 : packoffset(c063.x);
  float4 Globals_1024[6] : packoffset(c064.x);
  float4 Globals_1120[4] : packoffset(c070.x);
  float4 Globals_1184[4] : packoffset(c074.x);
  float4 Globals_1248[4] : packoffset(c078.x);
  float4 Globals_1312[4] : packoffset(c082.x);
  float4 Globals_1376[4] : packoffset(c086.x);
  float4 Globals_1440[4] : packoffset(c090.x);
  float4 Globals_1504[4] : packoffset(c094.x);
  float4 Globals_1568[4] : packoffset(c098.x);
  float4 Globals_1632[4] : packoffset(c102.x);
  float4 Globals_1696[4] : packoffset(c106.x);
  float4 Globals_1760[4] : packoffset(c110.x);
  float4 Globals_1824[4] : packoffset(c114.x);
  float4 Globals_1888[4] : packoffset(c118.x);
  float4 Globals_1952[4] : packoffset(c122.x);
  float4 Globals_2016[4] : packoffset(c126.x);
  float4 Globals_2080[4] : packoffset(c130.x);
  float4 Globals_2144[4] : packoffset(c134.x);
  float4 Globals_2208 : packoffset(c138.x);
  float4 Globals_2224 : packoffset(c139.x);
  float4 Globals_2240 : packoffset(c140.x);
  float4 Globals_2256[4] : packoffset(c141.x);
  float4 Globals_2320[4] : packoffset(c145.x);
  float4 Globals_2384[4] : packoffset(c149.x);
  float4 Globals_2448[4] : packoffset(c153.x);
  float4 Globals_2512[4] : packoffset(c157.x);
  float4 Globals_2576[4] : packoffset(c161.x);
  float4 Globals_2640 : packoffset(c165.x);
  float4 Globals_2656 : packoffset(c166.x);
  float4 Globals_2672[4] : packoffset(c167.x);
  float4 Globals_2736 : packoffset(c171.x);
  float4 Globals_2752[4] : packoffset(c172.x);
  float4 Globals_2816[4] : packoffset(c176.x);
  float4 Globals_2880[4] : packoffset(c180.x);
  float4 Globals_2944[4] : packoffset(c184.x);
  float4 Globals_3008 : packoffset(c188.x);
  float Globals_3024 : packoffset(c189.x);
  float4 Globals_3040[4] : packoffset(c190.x);
  float4 Globals_3104[4] : packoffset(c194.x);
  float4 Globals_3168 : packoffset(c198.x);
  float4 Globals_3184 : packoffset(c199.x);
  float4 Globals_3200 : packoffset(c200.x);
  float4 Globals_3216 : packoffset(c201.x);
  float3 Globals_3232 : packoffset(c202.x);
  float4 Globals_3248 : packoffset(c203.x);
  float Globals_3264 : packoffset(c204.x);
  float4 Globals_3280[4] : packoffset(c205.x);
};

cbuffer cb1 : register(b1) {
  float4 UberPostBaseCBuffer_000 : packoffset(c000.x);
  float4 UberPostBaseCBuffer_016 : packoffset(c001.x);
  float4 UberPostBaseCBuffer_032 : packoffset(c002.x);
  float4 UberPostBaseCBuffer_048 : packoffset(c003.x);
  float4 UberPostBaseCBuffer_064 : packoffset(c004.x);
  float4 UberPostBaseCBuffer_080 : packoffset(c005.x);
  float4 UberPostBaseCBuffer_096 : packoffset(c006.x);
  float4 UberPostBaseCBuffer_112 : packoffset(c007.x);
  float4 UberPostBaseCBuffer_128 : packoffset(c008.x);
  float4 UberPostBaseCBuffer_144 : packoffset(c009.x);
  float4 UberPostBaseCBuffer_160 : packoffset(c010.x);
  float4 UberPostBaseCBuffer_176 : packoffset(c011.x);
  float4 UberPostBaseCBuffer_192 : packoffset(c012.x);
  float4 UberPostBaseCBuffer_208 : packoffset(c013.x);
  float4 UberPostBaseCBuffer_224 : packoffset(c014.x);
  float4 UberPostBaseCBuffer_240 : packoffset(c015.x);
  float4 UberPostBaseCBuffer_256 : packoffset(c016.x);
  float4 UberPostBaseCBuffer_272 : packoffset(c017.x);
  float4 UberPostBaseCBuffer_288 : packoffset(c018.x);
  float4 UberPostBaseCBuffer_304 : packoffset(c019.x);
  float4 UberPostBaseCBuffer_320 : packoffset(c020.x);
  float4 UberPostBaseCBuffer_336 : packoffset(c021.x);
  float4 UberPostBaseCBuffer_352 : packoffset(c022.x);
  float4 UberPostBaseCBuffer_368 : packoffset(c023.x);
  float4 UberPostBaseCBuffer_384 : packoffset(c024.x);
  float4 UberPostBaseCBuffer_400 : packoffset(c025.x);
  float4 UberPostBaseCBuffer_416 : packoffset(c026.x);
  float4 UberPostBaseCBuffer_432 : packoffset(c027.x);
  float4 UberPostBaseCBuffer_448 : packoffset(c028.x);
  float4 UberPostBaseCBuffer_464 : packoffset(c029.x);
  float4 UberPostBaseCBuffer_480 : packoffset(c030.x);
  float4 UberPostBaseCBuffer_496 : packoffset(c031.x);
  float4 UberPostBaseCBuffer_512 : packoffset(c032.x);
  float4 UberPostBaseCBuffer_528 : packoffset(c033.x);
  float4 UberPostBaseCBuffer_544 : packoffset(c034.x);
  float4 UberPostBaseCBuffer_560 : packoffset(c035.x);
  float4 UberPostBaseCBuffer_576 : packoffset(c036.x);
  float4 UberPostBaseCBuffer_592 : packoffset(c037.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}
uint firstbithigh_msb(uint value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}

float4 main(
    precise noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  bool _16;
  float _53;
  float _60;
  float _61;
  float _96;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _102;
  float _103;
  float _186;
  float _193;
  float _194;
  float _243;
  float _250;
  float _251;
  float _298;
  float _305;
  float _306;
  float _377;
  float _384;
  float _385;
  float _426;
  float _433;
  float _434;
  float _475;
  float _482;
  float _483;
  float _492;
  float _493;
  float _494;
  float _500;
  float _501;
  float _502;
  float _503;
  float _635;
  float _636;
  float _637;
  float _647;
  float _648;
  float _649;
  float _650;
  float _689;
  float _690;
  float _691;
  float _729;
  float _730;
  float _731;
  float _21;
  float _22;
  float _32;
  float _33;
  float _37;
  float _41;
  float _54;
  bool _64;
  float4 _68;
  float _72;
  float _73;
  float _78;
  float _79;
  float _113;
  float _115;
  float _119;
  float _121;
  float _123;
  float _125;
  float _132;
  float _137;
  float _139;
  float _141;
  float _148;
  float _149;
  float _154;
  float _155;
  float _165;
  float _166;
  float _170;
  float _174;
  float _187;
  float4 _197;
  float _205;
  float _206;
  float _211;
  float _212;
  float _222;
  float _223;
  float _227;
  float _231;
  float _244;
  float4 _252;
  float _260;
  float _261;
  float _266;
  float _267;
  float _277;
  float _278;
  float _282;
  float _286;
  float _299;
  float4 _307;
  float _339;
  float _340;
  float _345;
  float _346;
  float _356;
  float _357;
  float _361;
  float _365;
  float _378;
  float _388;
  float _389;
  float _394;
  float _395;
  float _405;
  float _406;
  float _410;
  float _414;
  float _427;
  float _437;
  float _438;
  float _443;
  float _444;
  float _454;
  float _455;
  float _459;
  float _463;
  float _476;
  float4 _487;
  bool _510;
  float _520;
  float _528;
  float _531;
  float4 _552;
  float _589;
  float _590;
  float _591;
  float _592;
  bool _595;
  float _608;
  float _609;
  float _610;
  float4 _621;
  float _667;
  float _669;
  float _675;
  float _711;
  float _715;
  _16 = !(UberPostBaseCBuffer_080.w == 0.0f);
  if (_16) {
    _21 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _22 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _32 = (_21 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _33 = (_22 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _37 = sqrt((_32 * _32) + (_33 * _33));
    _41 = UberPostBaseCBuffer_080.y * _37;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _53 = ((1.0f / _41) * tan(UberPostBaseCBuffer_080.x * _37));
    } else {
      _53 = ((UberPostBaseCBuffer_080.x * (1.0f / _37)) * atan(_41));
    }
    _54 = _53 + -1.0f;
    _60 = ((_21 + 0.5f) + (_54 * _32));
    _61 = ((_22 + 0.5f) + (_54 * _33));
  } else {
    _60 = TEXCOORD.x;
    _61 = TEXCOORD.y;
  }
  _64 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_64) {
    _68 = t2.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _72 = _68.x * 0.10000000149011612f;
    _73 = _68.y * 0.10000000149011612f;
    _78 = (_72 * _68.z) * UberPostBaseCBuffer_176.w;
    _79 = (_73 * _68.z) * UberPostBaseCBuffer_176.w;
    _96 = (_72 + _60);
    _97 = (_73 + _61);
    _98 = ((_78 * UberPostBaseCBuffer_176.x) + _72);
    _99 = ((_79 * UberPostBaseCBuffer_176.x) + _73);
    _100 = ((_78 * UberPostBaseCBuffer_176.y) + _72);
    _101 = ((_79 * UberPostBaseCBuffer_176.y) + _73);
    _102 = ((UberPostBaseCBuffer_176.z * _78) + _72);
    _103 = ((UberPostBaseCBuffer_176.z * _79) + _73);
  } else {
    _96 = _60;
    _97 = _61;
    _98 = 0.0f;
    _99 = 0.0f;
    _100 = 0.0f;
    _101 = 0.0f;
    _102 = 0.0f;
    _103 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _113 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _115 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _119 = dot(float2(_113, _115), float2(_113, _115)) * -0.3333333432674408f;
    _121 = (_119 * _113) * UberPostBaseCBuffer_192.z;
    _123 = (_119 * _115) * UberPostBaseCBuffer_192.z;
    _125 = rsqrt(dot(float3(_121, _123, 9.999999747378752e-05f), float3(_121, _123, 9.999999747378752e-05f)));
    _132 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _137 = exp2(log2(sqrt((_121 * _121) + (_123 * _123)) / _132) * UberPostBaseCBuffer_384.z);
    _139 = ((_121 * _125) * _132) * _137;
    _141 = ((_123 * _125) * _132) * _137;
    _148 = (_98 + TEXCOORD.x) + (_139 * UberPostBaseCBuffer_400.w);
    _149 = (_99 + TEXCOORD.y) + (_141 * UberPostBaseCBuffer_400.w);
    if (_16) {
      _154 = UberPostBaseCBuffer_080.z * (_148 + -0.5f);
      _155 = UberPostBaseCBuffer_080.z * (_149 + -0.5f);
      _165 = (_154 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _166 = (_155 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _170 = sqrt((_165 * _165) + (_166 * _166));
      _174 = UberPostBaseCBuffer_080.y * _170;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _186 = ((1.0f / _174) * tan(UberPostBaseCBuffer_080.x * _170));
      } else {
        _186 = ((UberPostBaseCBuffer_080.x * (1.0f / _170)) * atan(_174));
      }
      _187 = _186 + -1.0f;
      _193 = ((_154 + 0.5f) + (_187 * _165));
      _194 = ((_155 + 0.5f) + (_187 * _166));
    } else {
      _193 = _148;
      _194 = _149;
    }
    _197 = t0.SampleBias(s0, float2(_193, _194), (Globals_976), int2(0, 0));
    _205 = (_100 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _139);
    _206 = (_101 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _141);
    if (_16) {
      _211 = UberPostBaseCBuffer_080.z * (_205 + -0.5f);
      _212 = UberPostBaseCBuffer_080.z * (_206 + -0.5f);
      _222 = (_211 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _223 = (_212 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _227 = sqrt((_222 * _222) + (_223 * _223));
      _231 = UberPostBaseCBuffer_080.y * _227;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _243 = ((1.0f / _231) * tan(UberPostBaseCBuffer_080.x * _227));
      } else {
        _243 = ((UberPostBaseCBuffer_080.x * (1.0f / _227)) * atan(_231));
      }
      _244 = _243 + -1.0f;
      _250 = ((_211 + 0.5f) + (_244 * _222));
      _251 = ((_212 + 0.5f) + (_244 * _223));
    } else {
      _250 = _205;
      _251 = _206;
    }
    _252 = t0.SampleBias(s0, float2(_250, _251), (Globals_976), int2(0, 0));
    _260 = (_102 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _139);
    _261 = (_103 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _141);
    if (_16) {
      _266 = UberPostBaseCBuffer_080.z * (_260 + -0.5f);
      _267 = UberPostBaseCBuffer_080.z * (_261 + -0.5f);
      _277 = (_266 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _278 = (_267 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _282 = sqrt((_277 * _277) + (_278 * _278));
      _286 = UberPostBaseCBuffer_080.y * _282;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _298 = ((1.0f / _286) * tan(UberPostBaseCBuffer_080.x * _282));
      } else {
        _298 = ((UberPostBaseCBuffer_080.x * (1.0f / _282)) * atan(_286));
      }
      _299 = _298 + -1.0f;
      _305 = ((_266 + 0.5f) + (_299 * _277));
      _306 = ((_267 + 0.5f) + (_299 * _278));
    } else {
      _305 = _260;
      _306 = _261;
    }
    _307 = t0.SampleBias(s0, float2(_305, _306), (Globals_976), int2(0, 0));
    _500 = (((float4)(t0.SampleBias(s0, float2(_96, _97), (Globals_976), int2(0, 0)))).w);
    _501 = (((UberPostBaseCBuffer_416.x * _252.y) + (UberPostBaseCBuffer_400.x * _197.x)) + (UberPostBaseCBuffer_432.x * _307.z));
    _502 = (((UberPostBaseCBuffer_416.y * _252.y) + (UberPostBaseCBuffer_400.y * _197.x)) + (UberPostBaseCBuffer_432.y * _307.z));
    _503 = (((UberPostBaseCBuffer_416.z * _252.y) + (UberPostBaseCBuffer_400.z * _197.x)) + (UberPostBaseCBuffer_432.z * _307.z));
  } else {
    if (_64) {
      _339 = _98 + TEXCOORD.x;
      _340 = _99 + TEXCOORD.y;
      if (_16) {
        _345 = UberPostBaseCBuffer_080.z * (_339 + -0.5f);
        _346 = UberPostBaseCBuffer_080.z * (_340 + -0.5f);
        _356 = (_345 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _357 = (_346 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _361 = sqrt((_356 * _356) + (_357 * _357));
        _365 = UberPostBaseCBuffer_080.y * _361;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _377 = ((1.0f / _365) * tan(UberPostBaseCBuffer_080.x * _361));
        } else {
          _377 = ((UberPostBaseCBuffer_080.x * (1.0f / _361)) * atan(_365));
        }
        _378 = _377 + -1.0f;
        _384 = ((_345 + 0.5f) + (_378 * _356));
        _385 = ((_346 + 0.5f) + (_378 * _357));
      } else {
        _384 = _339;
        _385 = _340;
      }
      _388 = _100 + TEXCOORD.x;
      _389 = _101 + TEXCOORD.y;
      if (_16) {
        _394 = UberPostBaseCBuffer_080.z * (_388 + -0.5f);
        _395 = UberPostBaseCBuffer_080.z * (_389 + -0.5f);
        _405 = (_394 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _406 = (_395 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _410 = sqrt((_405 * _405) + (_406 * _406));
        _414 = UberPostBaseCBuffer_080.y * _410;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _426 = ((1.0f / _414) * tan(UberPostBaseCBuffer_080.x * _410));
        } else {
          _426 = ((UberPostBaseCBuffer_080.x * (1.0f / _410)) * atan(_414));
        }
        _427 = _426 + -1.0f;
        _433 = ((_394 + 0.5f) + (_427 * _405));
        _434 = ((_395 + 0.5f) + (_427 * _406));
      } else {
        _433 = _388;
        _434 = _389;
      }
      _437 = _102 + TEXCOORD.x;
      _438 = _103 + TEXCOORD.y;
      if (_16) {
        _443 = UberPostBaseCBuffer_080.z * (_437 + -0.5f);
        _444 = UberPostBaseCBuffer_080.z * (_438 + -0.5f);
        _454 = (_443 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _455 = (_444 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _459 = sqrt((_454 * _454) + (_455 * _455));
        _463 = UberPostBaseCBuffer_080.y * _459;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _475 = ((1.0f / _463) * tan(UberPostBaseCBuffer_080.x * _459));
        } else {
          _475 = ((UberPostBaseCBuffer_080.x * (1.0f / _459)) * atan(_463));
        }
        _476 = _475 + -1.0f;
        _482 = ((_443 + 0.5f) + (_476 * _454));
        _483 = ((_444 + 0.5f) + (_476 * _455));
      } else {
        _482 = _437;
        _483 = _438;
      }
      _492 = (((float4)(t0.SampleBias(s0, float2(_384, _385), (Globals_976), int2(0, 0)))).x);
      _493 = (((float4)(t0.SampleBias(s0, float2(_433, _434), (Globals_976), int2(0, 0)))).y);
      _494 = (((float4)(t0.SampleBias(s0, float2(_482, _483), (Globals_976), int2(0, 0)))).z);
    } else {
      _487 = t0.SampleBias(s0, float2(_96, _97), (Globals_976), int2(0, 0));
      _492 = _487.x;
      _493 = _487.y;
      _494 = _487.z;
    }
    _500 = (((float4)(t0.SampleBias(s0, float2(_96, _97), (Globals_976), int2(0, 0)))).w);
    _501 = _492;
    _502 = _493;
    _503 = _494;
  }
  _510 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _510)) {
    _520 = fmod((((Globals_2208.y) * _97) * UberPostBaseCBuffer_448.x), 2.0f);
    _528 = (((select((_520 > 1.0f), (2.0f - _520), _520) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _96;
    _531 = (Globals_2208.w) * (Globals_2208.x);
    _552 = t3.SampleBias(s3, float2(_528, ((select(((frac((((_528 + abs(UberPostBaseCBuffer_464.y)) * _531) - (UberPostBaseCBuffer_464.y * _97)) / ((_531 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _97)), (Globals_976), int2(0, 0));
    _589 = ((((-0.699999988079071f - _552.x) + (exp2(log2(abs(_552.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_552.x < 0.30000001192092896f), 0.0f, 1.0f)) + _552.x) * UberPostBaseCBuffer_336.x;
    _590 = ((((-0.699999988079071f - _552.y) + (exp2(log2(abs(_552.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_552.y < 0.30000001192092896f), 0.0f, 1.0f)) + _552.y) * UberPostBaseCBuffer_336.x;
    _591 = ((((-0.699999988079071f - _552.z) + (exp2(log2(abs(_552.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_552.z < 0.30000001192092896f), 0.0f, 1.0f)) + _552.z) * UberPostBaseCBuffer_336.x;
    _592 = dot(float3(_501, _502, _503), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _595 = (UberPostBaseCBuffer_352.x > 0.5f);
    _608 = select(_595, ((((_589 * _592) - _589) * _500) + _589), _589);
    _609 = select(_595, ((((_590 * _592) - _590) * _500) + _590), _590);
    _610 = select(_595, ((((_591 * _592) - _591) * _500) + _591), _591);
    if (_510) {
      _621 = t4.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _96) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _97) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _635 = (((_621.x * _589) * UberPostBaseCBuffer_336.y) + _608);
      _636 = (((_621.y * _590) * UberPostBaseCBuffer_336.y) + _609);
      _637 = (((_621.z * _591) * UberPostBaseCBuffer_336.y) + _610);
    } else {
      _635 = _608;
      _636 = _609;
      _637 = _610;
    }
    _647 = (_635 + _501);
    _648 = (_636 + _502);
    _649 = (_637 + _503);
    _650 = saturate((((_636 + _635) + _637) * 0.33329999446868896f) + _500);
  } else {
    _647 = _501;
    _648 = _502;
    _649 = _503;
    _650 = _500;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _667 = abs(_97 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _669 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_96 - UberPostBaseCBuffer_112.x);
    _675 = exp2(log2(saturate(1.0f - dot(float2(_669, _667), float2(_669, _667)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _689 = (((_675 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _647);
    _690 = (((_675 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _648);
    _691 = (((_675 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _649);
  } else {
    _689 = _647;
    _690 = _648;
    _691 = _649;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_689, _690, _691);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _689 = tonemapped.x;
    _690 = tonemapped.y;
    _691 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _711 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _715 = 1.0f - (sqrt(dot(float3(_689, _690, _691), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _729 = ((((UberPostBaseCBuffer_208.x * _689) * _711) * _715) + _689);
    _730 = ((((UberPostBaseCBuffer_208.x * _690) * _711) * _715) + _690);
    _731 = ((((UberPostBaseCBuffer_208.x * _691) * _711) * _715) + _691);
  } else {
    _729 = _689;
    _730 = _690;
    _731 = _691;
  }
  SV_Target.x = (_729);
  SV_Target.y = (_730);
  SV_Target.z = (_731);
  SV_Target.w = _650;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
