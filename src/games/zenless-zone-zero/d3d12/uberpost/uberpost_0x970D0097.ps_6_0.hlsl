#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

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

cbuffer cb2 : register(b2) {
  float4 UberPostFXColorCorrectionCBuffer_000 : packoffset(c000.x);
  float4 UberPostFXColorCorrectionCBuffer_016 : packoffset(c001.x);
  float4 UberPostFXColorCorrectionCBuffer_032 : packoffset(c002.x);
  float4 UberPostFXColorCorrectionCBuffer_048 : packoffset(c003.x);
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
  bool _20;
  float _57;
  float _64;
  float _65;
  float _100;
  float _101;
  float _102;
  float _103;
  float _104;
  float _105;
  float _106;
  float _107;
  float _190;
  float _197;
  float _198;
  float _247;
  float _254;
  float _255;
  float _302;
  float _309;
  float _310;
  float _381;
  float _388;
  float _389;
  float _430;
  float _437;
  float _438;
  float _479;
  float _486;
  float _487;
  float _496;
  float _497;
  float _498;
  float _504;
  float _505;
  float _506;
  float _507;
  float _639;
  float _640;
  float _641;
  float _651;
  float _652;
  float _653;
  float _654;
  float _693;
  float _694;
  float _695;
  float _784;
  float _785;
  float _786;
  float _813;
  float _814;
  float _815;
  float _944;
  float _945;
  float _946;
  float _25;
  float _26;
  float _36;
  float _37;
  float _41;
  float _45;
  float _58;
  bool _68;
  float4 _72;
  float _76;
  float _77;
  float _82;
  float _83;
  float _117;
  float _119;
  float _123;
  float _125;
  float _127;
  float _129;
  float _136;
  float _141;
  float _143;
  float _145;
  float _152;
  float _153;
  float _158;
  float _159;
  float _169;
  float _170;
  float _174;
  float _178;
  float _191;
  float4 _201;
  float _209;
  float _210;
  float _215;
  float _216;
  float _226;
  float _227;
  float _231;
  float _235;
  float _248;
  float4 _256;
  float _264;
  float _265;
  float _270;
  float _271;
  float _281;
  float _282;
  float _286;
  float _290;
  float _303;
  float4 _311;
  float _343;
  float _344;
  float _349;
  float _350;
  float _360;
  float _361;
  float _365;
  float _369;
  float _382;
  float _392;
  float _393;
  float _398;
  float _399;
  float _409;
  float _410;
  float _414;
  float _418;
  float _431;
  float _441;
  float _442;
  float _447;
  float _448;
  float _458;
  float _459;
  float _463;
  float _467;
  float _480;
  float4 _491;
  bool _514;
  float _524;
  float _532;
  float _535;
  float4 _556;
  float _593;
  float _594;
  float _595;
  float _596;
  bool _599;
  float _612;
  float _613;
  float _614;
  float4 _625;
  float _671;
  float _673;
  float _679;
  float _718;
  float _719;
  float _725;
  float _727;
  float _728;
  float4 _730;
  float4 _734;
  float _744;
  float _745;
  float _746;
  float _766;
  float _770;
  float _791;
  float _798;
  float _799;
  float _800;
  float4 _808;
  float _830;
  float _831;
  float _832;
  float _840;
  float _867;
  float _868;
  float _869;
  float4 _875;
  float _912;
  float _913;
  float _914;
  float _933;
  _20 = !(UberPostBaseCBuffer_080.w == 0.0f);
  if (_20) {
    _25 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _26 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _36 = (_25 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _37 = (_26 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _41 = sqrt((_36 * _36) + (_37 * _37));
    _45 = UberPostBaseCBuffer_080.y * _41;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _57 = ((1.0f / _45) * tan(UberPostBaseCBuffer_080.x * _41));
    } else {
      _57 = ((UberPostBaseCBuffer_080.x * (1.0f / _41)) * atan(_45));
    }
    _58 = _57 + -1.0f;
    _64 = ((_25 + 0.5f) + (_58 * _36));
    _65 = ((_26 + 0.5f) + (_58 * _37));
  } else {
    _64 = TEXCOORD.x;
    _65 = TEXCOORD.y;
  }
  _68 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_68) {
    _72 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _76 = _72.x * 0.10000000149011612f;
    _77 = _72.y * 0.10000000149011612f;
    _82 = (_76 * _72.z) * UberPostBaseCBuffer_176.w;
    _83 = (_77 * _72.z) * UberPostBaseCBuffer_176.w;
    _100 = (_76 + _64);
    _101 = (_77 + _65);
    _102 = ((_82 * UberPostBaseCBuffer_176.x) + _76);
    _103 = ((_83 * UberPostBaseCBuffer_176.x) + _77);
    _104 = ((_82 * UberPostBaseCBuffer_176.y) + _76);
    _105 = ((_83 * UberPostBaseCBuffer_176.y) + _77);
    _106 = ((UberPostBaseCBuffer_176.z * _82) + _76);
    _107 = ((UberPostBaseCBuffer_176.z * _83) + _77);
  } else {
    _100 = _64;
    _101 = _65;
    _102 = 0.0f;
    _103 = 0.0f;
    _104 = 0.0f;
    _105 = 0.0f;
    _106 = 0.0f;
    _107 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _117 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _119 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _123 = dot(float2(_117, _119), float2(_117, _119)) * -0.3333333432674408f;
    _125 = (_123 * _117) * UberPostBaseCBuffer_192.z;
    _127 = (_123 * _119) * UberPostBaseCBuffer_192.z;
    _129 = rsqrt(dot(float3(_125, _127, 9.999999747378752e-05f), float3(_125, _127, 9.999999747378752e-05f)));
    _136 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _141 = exp2(log2(sqrt((_125 * _125) + (_127 * _127)) / _136) * UberPostBaseCBuffer_384.z);
    _143 = ((_125 * _129) * _136) * _141;
    _145 = ((_127 * _129) * _136) * _141;
    _152 = (_102 + TEXCOORD.x) + (_143 * UberPostBaseCBuffer_400.w);
    _153 = (_103 + TEXCOORD.y) + (_145 * UberPostBaseCBuffer_400.w);
    if (_20) {
      _158 = UberPostBaseCBuffer_080.z * (_152 + -0.5f);
      _159 = UberPostBaseCBuffer_080.z * (_153 + -0.5f);
      _169 = (_158 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _170 = (_159 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _174 = sqrt((_169 * _169) + (_170 * _170));
      _178 = UberPostBaseCBuffer_080.y * _174;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _190 = ((1.0f / _178) * tan(UberPostBaseCBuffer_080.x * _174));
      } else {
        _190 = ((UberPostBaseCBuffer_080.x * (1.0f / _174)) * atan(_178));
      }
      _191 = _190 + -1.0f;
      _197 = ((_158 + 0.5f) + (_191 * _169));
      _198 = ((_159 + 0.5f) + (_191 * _170));
    } else {
      _197 = _152;
      _198 = _153;
    }
    _201 = t1.SampleBias(s0, float2(_197, _198), (Globals_976), int2(0, 0));
    _209 = (_104 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _143);
    _210 = (_105 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _145);
    if (_20) {
      _215 = UberPostBaseCBuffer_080.z * (_209 + -0.5f);
      _216 = UberPostBaseCBuffer_080.z * (_210 + -0.5f);
      _226 = (_215 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _227 = (_216 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _231 = sqrt((_226 * _226) + (_227 * _227));
      _235 = UberPostBaseCBuffer_080.y * _231;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _247 = ((1.0f / _235) * tan(UberPostBaseCBuffer_080.x * _231));
      } else {
        _247 = ((UberPostBaseCBuffer_080.x * (1.0f / _231)) * atan(_235));
      }
      _248 = _247 + -1.0f;
      _254 = ((_215 + 0.5f) + (_248 * _226));
      _255 = ((_216 + 0.5f) + (_248 * _227));
    } else {
      _254 = _209;
      _255 = _210;
    }
    _256 = t1.SampleBias(s0, float2(_254, _255), (Globals_976), int2(0, 0));
    _264 = (_106 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _143);
    _265 = (_107 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _145);
    if (_20) {
      _270 = UberPostBaseCBuffer_080.z * (_264 + -0.5f);
      _271 = UberPostBaseCBuffer_080.z * (_265 + -0.5f);
      _281 = (_270 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _282 = (_271 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _286 = sqrt((_281 * _281) + (_282 * _282));
      _290 = UberPostBaseCBuffer_080.y * _286;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _302 = ((1.0f / _290) * tan(UberPostBaseCBuffer_080.x * _286));
      } else {
        _302 = ((UberPostBaseCBuffer_080.x * (1.0f / _286)) * atan(_290));
      }
      _303 = _302 + -1.0f;
      _309 = ((_270 + 0.5f) + (_303 * _281));
      _310 = ((_271 + 0.5f) + (_303 * _282));
    } else {
      _309 = _264;
      _310 = _265;
    }
    _311 = t1.SampleBias(s0, float2(_309, _310), (Globals_976), int2(0, 0));
    _504 = (((float4)(t1.SampleBias(s0, float2(_100, _101), (Globals_976), int2(0, 0)))).w);
    _505 = (((UberPostBaseCBuffer_416.x * _256.y) + (UberPostBaseCBuffer_400.x * _201.x)) + (UberPostBaseCBuffer_432.x * _311.z));
    _506 = (((UberPostBaseCBuffer_416.y * _256.y) + (UberPostBaseCBuffer_400.y * _201.x)) + (UberPostBaseCBuffer_432.y * _311.z));
    _507 = (((UberPostBaseCBuffer_416.z * _256.y) + (UberPostBaseCBuffer_400.z * _201.x)) + (UberPostBaseCBuffer_432.z * _311.z));
  } else {
    if (_68) {
      _343 = _102 + TEXCOORD.x;
      _344 = _103 + TEXCOORD.y;
      if (_20) {
        _349 = UberPostBaseCBuffer_080.z * (_343 + -0.5f);
        _350 = UberPostBaseCBuffer_080.z * (_344 + -0.5f);
        _360 = (_349 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _361 = (_350 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _365 = sqrt((_360 * _360) + (_361 * _361));
        _369 = UberPostBaseCBuffer_080.y * _365;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _381 = ((1.0f / _369) * tan(UberPostBaseCBuffer_080.x * _365));
        } else {
          _381 = ((UberPostBaseCBuffer_080.x * (1.0f / _365)) * atan(_369));
        }
        _382 = _381 + -1.0f;
        _388 = ((_349 + 0.5f) + (_382 * _360));
        _389 = ((_350 + 0.5f) + (_382 * _361));
      } else {
        _388 = _343;
        _389 = _344;
      }
      _392 = _104 + TEXCOORD.x;
      _393 = _105 + TEXCOORD.y;
      if (_20) {
        _398 = UberPostBaseCBuffer_080.z * (_392 + -0.5f);
        _399 = UberPostBaseCBuffer_080.z * (_393 + -0.5f);
        _409 = (_398 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _410 = (_399 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _414 = sqrt((_409 * _409) + (_410 * _410));
        _418 = UberPostBaseCBuffer_080.y * _414;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _430 = ((1.0f / _418) * tan(UberPostBaseCBuffer_080.x * _414));
        } else {
          _430 = ((UberPostBaseCBuffer_080.x * (1.0f / _414)) * atan(_418));
        }
        _431 = _430 + -1.0f;
        _437 = ((_398 + 0.5f) + (_431 * _409));
        _438 = ((_399 + 0.5f) + (_431 * _410));
      } else {
        _437 = _392;
        _438 = _393;
      }
      _441 = _106 + TEXCOORD.x;
      _442 = _107 + TEXCOORD.y;
      if (_20) {
        _447 = UberPostBaseCBuffer_080.z * (_441 + -0.5f);
        _448 = UberPostBaseCBuffer_080.z * (_442 + -0.5f);
        _458 = (_447 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _459 = (_448 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _463 = sqrt((_458 * _458) + (_459 * _459));
        _467 = UberPostBaseCBuffer_080.y * _463;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _479 = ((1.0f / _467) * tan(UberPostBaseCBuffer_080.x * _463));
        } else {
          _479 = ((UberPostBaseCBuffer_080.x * (1.0f / _463)) * atan(_467));
        }
        _480 = _479 + -1.0f;
        _486 = ((_447 + 0.5f) + (_480 * _458));
        _487 = ((_448 + 0.5f) + (_480 * _459));
      } else {
        _486 = _441;
        _487 = _442;
      }
      _496 = (((float4)(t1.SampleBias(s0, float2(_388, _389), (Globals_976), int2(0, 0)))).x);
      _497 = (((float4)(t1.SampleBias(s0, float2(_437, _438), (Globals_976), int2(0, 0)))).y);
      _498 = (((float4)(t1.SampleBias(s0, float2(_486, _487), (Globals_976), int2(0, 0)))).z);
    } else {
      _491 = t1.SampleBias(s0, float2(_100, _101), (Globals_976), int2(0, 0));
      _496 = _491.x;
      _497 = _491.y;
      _498 = _491.z;
    }
    _504 = (((float4)(t1.SampleBias(s0, float2(_100, _101), (Globals_976), int2(0, 0)))).w);
    _505 = _496;
    _506 = _497;
    _507 = _498;
  }
  _514 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _514)) {
    _524 = fmod((((Globals_2208.y) * _101) * UberPostBaseCBuffer_448.x), 2.0f);
    _532 = (((select((_524 > 1.0f), (2.0f - _524), _524) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _100;
    _535 = (Globals_2208.w) * (Globals_2208.x);
    _556 = t6.SampleBias(s3, float2(_532, ((select(((frac((((_532 + abs(UberPostBaseCBuffer_464.y)) * _535) - (UberPostBaseCBuffer_464.y * _101)) / ((_535 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _101)), (Globals_976), int2(0, 0));
    _593 = ((((-0.699999988079071f - _556.x) + (exp2(log2(abs(_556.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_556.x < 0.30000001192092896f), 0.0f, 1.0f)) + _556.x) * UberPostBaseCBuffer_336.x;
    _594 = ((((-0.699999988079071f - _556.y) + (exp2(log2(abs(_556.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_556.y < 0.30000001192092896f), 0.0f, 1.0f)) + _556.y) * UberPostBaseCBuffer_336.x;
    _595 = ((((-0.699999988079071f - _556.z) + (exp2(log2(abs(_556.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_556.z < 0.30000001192092896f), 0.0f, 1.0f)) + _556.z) * UberPostBaseCBuffer_336.x;
    _596 = dot(float3(_505, _506, _507), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _599 = (UberPostBaseCBuffer_352.x > 0.5f);
    _612 = select(_599, ((((_593 * _596) - _593) * _504) + _593), _593);
    _613 = select(_599, ((((_594 * _596) - _594) * _504) + _594), _594);
    _614 = select(_599, ((((_595 * _596) - _595) * _504) + _595), _595);
    if (_514) {
      _625 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _100) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _101) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _639 = (((_625.x * _593) * UberPostBaseCBuffer_336.y) + _612);
      _640 = (((_625.y * _594) * UberPostBaseCBuffer_336.y) + _613);
      _641 = (((_625.z * _595) * UberPostBaseCBuffer_336.y) + _614);
    } else {
      _639 = _612;
      _640 = _613;
      _641 = _614;
    }
    _651 = (_639 + _505);
    _652 = (_640 + _506);
    _653 = (_641 + _507);
    _654 = saturate((((_640 + _639) + _641) * 0.33329999446868896f) + _504);
  } else {
    _651 = _505;
    _652 = _506;
    _653 = _507;
    _654 = _504;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _671 = abs(_101 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _673 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_100 - UberPostBaseCBuffer_112.x);
    _679 = exp2(log2(saturate(1.0f - dot(float2(_673, _671), float2(_673, _671)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _693 = (((_679 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _651);
    _694 = (((_679 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _652);
    _695 = (((_679 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _653);
  } else {
    _693 = _651;
    _694 = _652;
    _695 = _653;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_693, _694, _695);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _744 = tonemapped.x;
    _745 = tonemapped.y;
    _746 = tonemapped.z;
  } else {
    _718 = saturate((log2((_695 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _719 = floor(_718);
    _725 = ((saturate((log2((_694 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _727 = (_719 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_693 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _728 = _718 - _719;
    _730 = t3.SampleLevel(s0, float2((_727 + UberPostBaseCBuffer_000.y), _725), 0.0f);
    _734 = t3.SampleLevel(s0, float2(_727, _725), 0.0f);
    _744 = ((_730.x - _734.x) * _728) + _734.x;
    _745 = ((_730.y - _734.y) * _728) + _734.y;
    _746 = ((_730.z - _734.z) * _728) + _734.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _766 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _770 = 1.0f - (sqrt(dot(float3(_744, _745, _746), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _784 = ((((UberPostBaseCBuffer_208.x * _744) * _766) * _770) + _744);
    _785 = ((((UberPostBaseCBuffer_208.x * _745) * _766) * _770) + _745);
    _786 = ((((UberPostBaseCBuffer_208.x * _746) * _766) * _770) + _746);
  } else {
    _784 = _744;
    _785 = _745;
    _786 = _746;
  }
  _791 = ((_785 + _784) + _786) * 0.3333333432674408f;
  _798 = ((_784 - _791) * UberPostFXColorCorrectionCBuffer_000.w) + _791;
  _799 = ((_785 - _791) * UberPostFXColorCorrectionCBuffer_000.w) + _791;
  _800 = ((_786 - _791) * UberPostFXColorCorrectionCBuffer_000.w) + _791;
  if ((Globals_816[3].w) > 0.5f) {
    _808 = t0.SampleBias(s0, float2(dot(float3(_798, _799, _800), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _813 = _808.x;
    _814 = _808.y;
    _815 = _808.z;
  } else {
    _813 = _798;
    _814 = _799;
    _815 = _800;
  }
  _830 = (((1.0f - _813) - saturate(_813)) * UberPostFXColorCorrectionCBuffer_016.w) + _813;
  _831 = (((1.0f - _814) - saturate(_814)) * UberPostFXColorCorrectionCBuffer_016.w) + _814;
  _832 = (((1.0f - _815) - saturate(_815)) * UberPostFXColorCorrectionCBuffer_016.w) + _815;
  _840 = saturate((saturate(dot(float3(_830, _831, _832), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _867 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _830) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _840)) * UberPostFXColorCorrectionCBuffer_032.x) + _830);
  // _868 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _831) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _840)) * UberPostFXColorCorrectionCBuffer_032.x) + _831);
  // _869 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _832) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _840)) * UberPostFXColorCorrectionCBuffer_032.x) + _832);
  _867 = ((((UberPostFXColorCorrectionCBuffer_000.x - _830) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _840)) * UberPostFXColorCorrectionCBuffer_032.x) + _830);
  _868 = ((((UberPostFXColorCorrectionCBuffer_000.y - _831) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _840)) * UberPostFXColorCorrectionCBuffer_032.x) + _831);
  _869 = ((((UberPostFXColorCorrectionCBuffer_000.z - _832) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _840)) * UberPostFXColorCorrectionCBuffer_032.x) + _832);

  // HDR FX Mask Blend
  float3 result = float3(_867, _868, _869);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t4.Sample(s0, TEXCOORD).x);

    if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
      // Simple lighten
      float3 blend_factor = pow(m, 2.2f);
      result = result * (1.0f + blend_factor * 0.5f);
    } else {
      // Overlay
      float3 blend = UberPostFXColorCorrectionCBuffer_048.xyz;
      result = result * lerp(1.0f, blend * 2.0f, m);
    }
  }
  _944 = result.x;
  _945 = result.y;
  _946 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _875 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _944 = min((_875.x + _867), 1.0f);
        _945 = min((_875.x + _868), 1.0f);
        _946 = min((_875.x + _869), 1.0f);
      } else {
        _912 = select((_867 > 0.5f), 0.0f, 1.0f);
        _913 = select((_868 > 0.5f), 0.0f, 1.0f);
        _914 = select((_869 > 0.5f), 0.0f, 1.0f);
        _933 = 1.0f - _875.x;
        _944 = (((((1.0f - (((1.0f - _867) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _912)) + (((_867 * 2.0f) * _912) * UberPostFXColorCorrectionCBuffer_048.x)) * _875.x) + (_933 * _867));
        _945 = (((((1.0f - (((1.0f - _868) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _913)) + (((_868 * 2.0f) * _913) * UberPostFXColorCorrectionCBuffer_048.y)) * _875.x) + (_933 * _868));
        _946 = (((((1.0f - (((1.0f - _869) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _914)) + (((_869 * 2.0f) * _914) * UberPostFXColorCorrectionCBuffer_048.z)) * _875.x) + (_933 * _869));
      }
  } else {
    _944 = _867;
    _945 = _868;
    _946 = _869;
  }
  */

  SV_Target.x = _944;
  SV_Target.y = _945;
  SV_Target.z = _946;
  SV_Target.w = _654;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
