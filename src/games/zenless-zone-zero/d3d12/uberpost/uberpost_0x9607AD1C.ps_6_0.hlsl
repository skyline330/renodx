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
  float4 Globals_3344 : packoffset(c209.x);
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

SamplerState s4 : register(s4);

SamplerState s5 : register(s5);

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
  float _57;
  float _58;
  float _59;
  float _60;
  float _61;
  float _62;
  float _63;
  float _64;
  float _163;
  float _164;
  float _165;
  float _194;
  float _195;
  float _196;
  float _305;
  float _306;
  float _307;
  float _493;
  float _494;
  float _495;
  float _505;
  float _506;
  float _507;
  float _508;
  float _547;
  float _548;
  float _549;
  float _585;
  float _586;
  float _587;
  float4 _29;
  float _33;
  float _34;
  float _39;
  float _40;
  float _67;
  float _76;
  float _86;
  float _89;
  float _90;
  float _97;
  float _98;
  float _99;
  float _101;
  float _103;
  float _105;
  float _114;
  float _127;
  float _134;
  float _141;
  float _142;
  float _143;
  float4 _157;
  float4 _188;
  float _202;
  float _203;
  float _206;
  float _207;
  float _210;
  float _211;
  float4 _212;
  float _220;
  float _222;
  float _226;
  float _228;
  float _230;
  float _232;
  float _239;
  float _244;
  float _246;
  float _248;
  float4 _255;
  float4 _263;
  float4 _271;
  float4 _320;
  float _332;
  float _333;
  float _346;
  float _351;
  float _361;
  float _362;
  float _363;
  bool _370;
  float _380;
  float _388;
  float _391;
  float4 _410;
  float _447;
  float _448;
  float _449;
  float _450;
  bool _453;
  float _466;
  float _467;
  float _468;
  float4 _479;
  float _525;
  float _527;
  float _533;
  float _567;
  float _571;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _29 = t2.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _33 = _29.x * 0.10000000149011612f;
    _34 = _29.y * 0.10000000149011612f;
    _39 = (_33 * _29.z) * UberPostBaseCBuffer_176.w;
    _40 = (_34 * _29.z) * UberPostBaseCBuffer_176.w;
    _57 = (_33 + TEXCOORD.x);
    _58 = (_34 + TEXCOORD.y);
    _59 = ((_39 * UberPostBaseCBuffer_176.x) + _33);
    _60 = ((_40 * UberPostBaseCBuffer_176.x) + _34);
    _61 = ((_39 * UberPostBaseCBuffer_176.y) + _33);
    _62 = ((_40 * UberPostBaseCBuffer_176.y) + _34);
    _63 = ((UberPostBaseCBuffer_176.z * _39) + _33);
    _64 = ((UberPostBaseCBuffer_176.z * _40) + _34);
  } else {
    _57 = TEXCOORD.x;
    _58 = TEXCOORD.y;
    _59 = 0.0f;
    _60 = 0.0f;
    _61 = 0.0f;
    _62 = 0.0f;
    _63 = 0.0f;
    _64 = 0.0f;
  }
  _67 = frac(Globals_208[1].x);
  _76 = (((float4)(t3.SampleBias(s3, float2((_67 + (TEXCOORD.x * 5.0f)), (_67 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _86 = ((_76 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_76 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _89 = cos(UberPostBaseCBuffer_224.w);
  _90 = sin(UberPostBaseCBuffer_224.w);
  _97 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _86;
  _98 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _86;
  _99 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _86;
  _101 = _97 * _90;
  _103 = _98 * _90;
  _105 = _99 * _90;
  _114 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _127 = frac(_67 * 1234.0f);
  _134 = (((_127 * _127) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _127) + UberPostBaseCBuffer_256.x;
  _141 = select((_134 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_114 + _101)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _142 = select((_134 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_114 + _103)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _143 = select((_134 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_114 + _105)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _157 = t4.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _163 = (_157.x * _141);
    _164 = (_157.x * _142);
    _165 = (_157.x * _143);
  } else {
    _163 = _141;
    _164 = _142;
    _165 = _143;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _188 = t4.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _194 = (_188.y * _163);
    _195 = (_188.y * _164);
    _196 = (_188.y * _165);
  } else {
    _194 = _163;
    _195 = _164;
    _196 = _165;
  }
  _202 = (_59 + TEXCOORD.x) + (_97 * _89);
  _203 = (_60 + TEXCOORD.y) + _101;
  _206 = (_61 + TEXCOORD.x) + (_98 * _89);
  _207 = (_62 + TEXCOORD.y) + _103;
  _210 = (_63 + TEXCOORD.x) + (_99 * _89);
  _211 = (_64 + TEXCOORD.y) + _105;
  _212 = t0.SampleBias(s0, float2(_57, _58), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _220 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _222 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _226 = dot(float2(_220, _222), float2(_220, _222)) * -0.3333333432674408f;
    _228 = (_226 * _220) * UberPostBaseCBuffer_192.z;
    _230 = (_226 * _222) * UberPostBaseCBuffer_192.z;
    _232 = rsqrt(dot(float3(_228, _230, 9.999999747378752e-05f), float3(_228, _230, 9.999999747378752e-05f)));
    _239 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _244 = exp2(log2(sqrt((_228 * _228) + (_230 * _230)) / _239) * UberPostBaseCBuffer_384.z);
    _246 = ((_228 * _232) * _239) * _244;
    _248 = ((_230 * _232) * _239) * _244;
    _255 = t0.SampleBias(s0, float2((_202 + (_246 * UberPostBaseCBuffer_400.w)), (_203 + (_248 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _263 = t0.SampleBias(s0, float2((_206 + (UberPostBaseCBuffer_416.w * _246)), (_207 + (UberPostBaseCBuffer_416.w * _248))), (Globals_976), int2(0, 0));
    _271 = t0.SampleBias(s0, float2((_210 + (UberPostBaseCBuffer_432.w * _246)), (_211 + (UberPostBaseCBuffer_432.w * _248))), (Globals_976), int2(0, 0));
    _305 = (((UberPostBaseCBuffer_416.x * _263.y) + (UberPostBaseCBuffer_400.x * _255.x)) + (UberPostBaseCBuffer_432.x * _271.z));
    _306 = (((UberPostBaseCBuffer_416.y * _263.y) + (UberPostBaseCBuffer_400.y * _255.x)) + (UberPostBaseCBuffer_432.y * _271.z));
    _307 = (((UberPostBaseCBuffer_416.z * _263.y) + (UberPostBaseCBuffer_400.z * _255.x)) + (UberPostBaseCBuffer_432.z * _271.z));
  } else {
    _305 = (((float4)(t0.SampleBias(s0, float2(_202, _203), (Globals_976), int2(0, 0)))).x);
    _306 = (((float4)(t0.SampleBias(s0, float2(_206, _207), (Globals_976), int2(0, 0)))).y);
    _307 = (((float4)(t0.SampleBias(s0, float2(_210, _211), (Globals_976), int2(0, 0)))).z);
  }
  _320 = t7.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _332 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _333 = 0.4000000059604645f - _332;
  _346 = (UberPostBaseCBuffer_368.w * max(((select((_333 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_332 + 0.05000000074505806f) * 10.0f) - _333)) + _333), 0.0f)) + 1.0f;
  _351 = 1.0f - UberPostBaseCBuffer_368.z;
  _361 = (((((_320.x * 12.0f) * _346) * _351) + UberPostBaseCBuffer_368.z) * _305) + _194;
  _362 = (((((_320.y * 12.0f) * _346) * _351) + UberPostBaseCBuffer_368.z) * _306) + _195;
  _363 = (((((_320.z * 12.0f) * _346) * _351) + UberPostBaseCBuffer_368.z) * _307) + _196;
  _370 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _370)) {
    _380 = fmod((((Globals_2208.y) * _58) * UberPostBaseCBuffer_448.x), 2.0f);
    _388 = (((select((_380 > 1.0f), (2.0f - _380), _380) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _57;
    _391 = (Globals_2208.w) * (Globals_2208.x);
    _410 = t5.SampleBias(s5, float2(_388, ((select(((frac((((_388 + abs(UberPostBaseCBuffer_464.y)) * _391) - (UberPostBaseCBuffer_464.y * _58)) / ((_391 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _58)), (Globals_976), int2(0, 0));
    _447 = ((((-0.699999988079071f - _410.x) + (exp2(log2(abs(_410.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_410.x < 0.30000001192092896f), 0.0f, 1.0f)) + _410.x) * UberPostBaseCBuffer_336.x;
    _448 = ((((-0.699999988079071f - _410.y) + (exp2(log2(abs(_410.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_410.y < 0.30000001192092896f), 0.0f, 1.0f)) + _410.y) * UberPostBaseCBuffer_336.x;
    _449 = ((((-0.699999988079071f - _410.z) + (exp2(log2(abs(_410.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_410.z < 0.30000001192092896f), 0.0f, 1.0f)) + _410.z) * UberPostBaseCBuffer_336.x;
    _450 = dot(float3(_361, _362, _363), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _453 = (UberPostBaseCBuffer_352.x > 0.5f);
    _466 = select(_453, ((((_447 * _450) - _447) * _212.w) + _447), _447);
    _467 = select(_453, ((((_448 * _450) - _448) * _212.w) + _448), _448);
    _468 = select(_453, ((((_449 * _450) - _449) * _212.w) + _449), _449);
    if (_370) {
      _479 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _57) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _58) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _493 = (((_479.x * _447) * UberPostBaseCBuffer_336.y) + _466);
      _494 = (((_479.y * _448) * UberPostBaseCBuffer_336.y) + _467);
      _495 = (((_479.z * _449) * UberPostBaseCBuffer_336.y) + _468);
    } else {
      _493 = _466;
      _494 = _467;
      _495 = _468;
    }
    _505 = (_493 + _361);
    _506 = (_494 + _362);
    _507 = (_495 + _363);
    _508 = saturate((((_494 + _493) + _495) * 0.33329999446868896f) + _212.w);
  } else {
    _505 = _361;
    _506 = _362;
    _507 = _363;
    _508 = _212.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _525 = abs(_58 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _527 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_57 - UberPostBaseCBuffer_112.x);
    _533 = exp2(log2(saturate(1.0f - dot(float2(_527, _525), float2(_527, _525)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _547 = (((_533 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _505);
    _548 = (((_533 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _506);
    _549 = (((_533 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _507);
  } else {
    _547 = _505;
    _548 = _506;
    _549 = _507;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_547, _548, _549);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _547 = tonemapped.x;
    _548 = tonemapped.y;
    _549 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _567 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _571 = 1.0f - (sqrt(dot(float3(_547, _548, _549), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _585 = ((((UberPostBaseCBuffer_208.x * _547) * _567) * _571) + _547);
    _586 = ((((UberPostBaseCBuffer_208.x * _548) * _567) * _571) + _548);
    _587 = ((((UberPostBaseCBuffer_208.x * _549) * _567) * _571) + _549);
  } else {
    _585 = _547;
    _586 = _548;
    _587 = _549;
  }
  SV_Target.x = (_585);
  SV_Target.y = (_586);
  SV_Target.z = (_587);
  SV_Target.w = _508;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
