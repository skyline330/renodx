#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

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
};

cbuffer cb1 : register(b1) {
  float4 VREffectsCBuffer_000 : packoffset(c000.x);
  float4 VREffectsCBuffer_016 : packoffset(c001.x);
  float4 VREffectsCBuffer_032 : packoffset(c002.x);
  float4 VREffectsCBuffer_048 : packoffset(c003.x);
  float4 VREffectsCBuffer_064 : packoffset(c004.x);
  float4 VREffectsCBuffer_080 : packoffset(c005.x);
  float4 VREffectsCBuffer_096 : packoffset(c006.x);
  float4 VREffectsCBuffer_112 : packoffset(c007.x);
  float4 VREffectsCBuffer_128 : packoffset(c008.x);
  float4 VREffectsCBuffer_144 : packoffset(c009.x);
  float4 VREffectsCBuffer_160 : packoffset(c010.x);
  float4 VREffectsCBuffer_176 : packoffset(c011.x);
  float4 VREffectsCBuffer_192 : packoffset(c012.x);
  float4 VREffectsCBuffer_208 : packoffset(c013.x);
  float4 VREffectsCBuffer_224 : packoffset(c014.x);
  float4 VREffectsCBuffer_240 : packoffset(c015.x);
  float4 VREffectsCBuffer_256 : packoffset(c016.x);
  float4 VREffectsCBuffer_272 : packoffset(c017.x);
  float4 VREffectsCBuffer_288 : packoffset(c018.x);
  float4 VREffectsCBuffer_304 : packoffset(c019.x);
  float4 VREffectsCBuffer_320 : packoffset(c020.x);
  float4 VREffectsCBuffer_336 : packoffset(c021.x);
  float4 VREffectsCBuffer_352 : packoffset(c022.x);
  float4 VREffectsCBuffer_368 : packoffset(c023.x);
  float4 VREffectsCBuffer_384 : packoffset(c024.x);
  float4 VREffectsCBuffer_400 : packoffset(c025.x);
  float4 VREffectsCBuffer_416 : packoffset(c026.x);
  float4 VREffectsCBuffer_432 : packoffset(c027.x);
  float4 VREffectsCBuffer_448 : packoffset(c028.x);
  float4 VREffectsCBuffer_464 : packoffset(c029.x);
  float4 VREffectsCBuffer_480 : packoffset(c030.x);
  float4 VREffectsCBuffer_496 : packoffset(c031.x);
  float4 VREffectsCBuffer_512 : packoffset(c032.x);
  float4 VREffectsCBuffer_528[4] : packoffset(c033.x);
  float4 VREffectsCBuffer_592 : packoffset(c037.x);
  float4 VREffectsCBuffer_608 : packoffset(c038.x);
  float4 VREffectsCBuffer_624 : packoffset(c039.x);
  float4 VREffectsCBuffer_640 : packoffset(c040.x);
  float4 VREffectsCBuffer_656 : packoffset(c041.x);
  float4 VREffectsCBuffer_672 : packoffset(c042.x);
  float4 VREffectsCBuffer_688 : packoffset(c043.x);
  float4 VREffectsCBuffer_704 : packoffset(c044.x);
  float4 VREffectsCBuffer_720 : packoffset(c045.x);
  float4 VREffectsCBuffer_736 : packoffset(c046.x);
  float4 VREffectsCBuffer_752 : packoffset(c047.x);
  float4 VREffectsCBuffer_768 : packoffset(c048.x);
  float4 VREffectsCBuffer_784 : packoffset(c049.x);
  float4 VREffectsCBuffer_800 : packoffset(c050.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

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
  float _19;
  float _22;
  float _27;
  float _30;
  float _39;
  bool _45;
  float _48;
  float _53;
  float4 _56;
  float _64;
  float _65;
  float4 _66;
  float _90;
  float _92;
  float _108;
  float _116;
  float _117;
  float _118;
  float _140;
  float _146;
  float _168;
  float _170;
  float _175;
  float _176;
  float _178;
  float _180;
  float _187;
  float _189;
  float _191;
  float _204;
  float _209;
  float _210;
  float _252;
  float _253;
  float _254;
  float _264;
  float _265;
  float _266;
  float _274;
  float _558;
  float _559;
  float _560;
  float _852;
  float _853;
  float _854;
  float _1335;
  float _1336;
  float _1337;
  float _1622;
  float _1623;
  float _1624;
  float _1909;
  float _1910;
  float _1911;
  float _2196;
  float _2197;
  float _2198;
  float _2314;
  float _2315;
  float _2316;
  float _2371;
  float _2372;
  float _2373;
  float _2442;
  float _2443;
  float _2444;
  float _322;
  float _323;
  float _324;
  float _355;
  float _356;
  float _357;
  float _361;
  float _362;
  float _363;
  float _371;
  float _373;
  float _375;
  float _409;
  float _410;
  float _411;
  float _454;
  float _455;
  float _456;
  float _487;
  float _488;
  float _489;
  float _496;
  float _497;
  float _498;
  float _526;
  float _527;
  float _528;
  float _568;
  float _616;
  float _617;
  float _618;
  float _649;
  float _650;
  float _651;
  float _655;
  float _656;
  float _657;
  float _665;
  float _667;
  float _669;
  float _703;
  float _704;
  float _705;
  float _748;
  float _749;
  float _750;
  float _781;
  float _782;
  float _783;
  float _790;
  float _791;
  float _792;
  float _820;
  float _821;
  float _822;
  float _882;
  float _883;
  float _884;
  float _885;
  float4 _937;
  float _953;
  float _968;
  float _982;
  float _983;
  float _984;
  float _986;
  float _989;
  float _1003;
  float _1004;
  float _1005;
  float _1007;
  float _1010;
  float _1024;
  float _1025;
  float _1026;
  float _1028;
  float _1031;
  float _1045;
  float _1046;
  float _1047;
  float _1049;
  float _1099;
  float _1100;
  float _1101;
  float _1132;
  float _1133;
  float _1134;
  float _1138;
  float _1139;
  float _1140;
  float _1148;
  float _1150;
  float _1152;
  float _1186;
  float _1187;
  float _1188;
  float _1231;
  float _1232;
  float _1233;
  float _1264;
  float _1265;
  float _1266;
  float _1273;
  float _1274;
  float _1275;
  float _1303;
  float _1304;
  float _1305;
  float _1386;
  float _1387;
  float _1388;
  float _1419;
  float _1420;
  float _1421;
  float _1425;
  float _1426;
  float _1427;
  float _1435;
  float _1437;
  float _1439;
  float _1473;
  float _1474;
  float _1475;
  float _1518;
  float _1519;
  float _1520;
  float _1551;
  float _1552;
  float _1553;
  float _1560;
  float _1561;
  float _1562;
  float _1590;
  float _1591;
  float _1592;
  float _1673;
  float _1674;
  float _1675;
  float _1706;
  float _1707;
  float _1708;
  float _1712;
  float _1713;
  float _1714;
  float _1722;
  float _1724;
  float _1726;
  float _1760;
  float _1761;
  float _1762;
  float _1805;
  float _1806;
  float _1807;
  float _1838;
  float _1839;
  float _1840;
  float _1847;
  float _1848;
  float _1849;
  float _1877;
  float _1878;
  float _1879;
  float _1960;
  float _1961;
  float _1962;
  float _1993;
  float _1994;
  float _1995;
  float _1999;
  float _2000;
  float _2001;
  float _2009;
  float _2011;
  float _2013;
  float _2047;
  float _2048;
  float _2049;
  float _2092;
  float _2093;
  float _2094;
  float _2125;
  float _2126;
  float _2127;
  float _2134;
  float _2135;
  float _2136;
  float _2164;
  float _2165;
  float _2166;
  float4 _2205;
  float4 _2222;
  float4 _2239;
  float _2262;
  float _2263;
  float _2264;
  float _2270;
  float _2274;
  float _2275;
  float _2294;
  float _2298;
  float _2299;
  float _2300;
  float _2317;
  float _2318;
  float _2319;
  int _2325;
  int _2333;
  float4 _2346;
  float _2359;
  float _2360;
  float _2382;
  float _2384;
  float _2395;
  float _2404;
  float _2408;
  float _2409;
  float _2410;
  float _2411;
  float _2413;

  _19 = fmod(((((1080.0f / (Globals_2208.y)) * TEXCOORD.y) * (Globals_2208.y)) * VREffectsCBuffer_064.x), 2.0f);
  _22 = select((_19 > 1.0f), (2.0f - _19), _19);
  _27 = (((_22 * 2.0f) + -1.0f) * VREffectsCBuffer_064.z) + TEXCOORD.x;
  _30 = (Globals_2208.w) * (Globals_2208.x);
  _39 = _30 * 2.0f;
  _45 = ((frac((((_27 + abs(VREffectsCBuffer_080.y)) * _30) - (VREffectsCBuffer_080.y * TEXCOORD.y)) / (_39 * VREffectsCBuffer_080.x)) * 2.0f) <= 1.0f);
  _48 = (select(_45, 0.9999899864196777f, -1.0f) * VREffectsCBuffer_080.z) + TEXCOORD.y;
  _53 = select(_45, select((_48 < 1.0f), 0.0f, 1.0f), select((_48 > 0.0f), 0.0f, 1.0f));

  // _56 = t1.SampleBias(s1, float2(_27, _48), (Globals_976), int2(0, 0));
  float4 _VR_SourceImage0 = renodx::draw::InvertIntermediatePass(t1.SampleBias(s1, float2(_27, _48), (Globals_976), int2(0, 0)));
  float4 untonemapped = _VR_SourceImage0;
  _VR_SourceImage0.xyz = renodx::tonemap::dice::BT709(_VR_SourceImage0.xyz, 1.0f, 0.5f);

  _64 = _27 - (Globals_2240.z);
  _65 = _48 - (Globals_2240.w);
  _66 = t0.SampleLevel(s0, float2(_64, _65), 0.0f);
  _90 = (_64 * 2.0f) + -1.0f;
  _92 = -0.0f - ((_65 * 2.0f) + -1.0f);
  _108 = mad((Globals_2144[2].w), _66.x, mad((Globals_2144[1].w), _92, ((Globals_2144[0].w) * _90))) + (Globals_2144[3].w);
  _116 = ((mad((Globals_2144[2].x), _66.x, mad((Globals_2144[1].x), _92, ((Globals_2144[0].x) * _90))) + (Globals_2144[3].x)) / _108) - (Globals_480.x);
  _117 = ((mad((Globals_2144[2].y), _66.x, mad((Globals_2144[1].y), _92, ((Globals_2144[0].y) * _90))) + (Globals_2144[3].y)) / _108) - (Globals_480.y);
  _118 = ((mad((Globals_2144[2].z), _66.x, mad((Globals_2144[1].z), _92, ((Globals_2144[0].z) * _90))) + (Globals_2144[3].z)) / _108) - (Globals_480.z);
  _140 = select((VREffectsCBuffer_512.w > 0.5f), select((sqrt(((_116 * _116) + (_117 * _117)) + (_118 * _118)) > 2000.0f), 0.0f, max(0.0f, dot(float2(_116, _118), float2(VREffectsCBuffer_512.x, VREffectsCBuffer_512.y)))), (1.0f / (((Globals_992.z) * _66.x) + (Globals_992.w))));
  _146 = saturate((_140 - VREffectsCBuffer_016.z) * VREffectsCBuffer_016.w);
  _168 = ((VREffectsCBuffer_048.w - VREffectsCBuffer_032.w) * _146) + VREffectsCBuffer_032.w;
  _170 = select((_VR_SourceImage0.y < _VR_SourceImage0.z), 0.0f, 1.0f);
  _175 = (_170 * (_VR_SourceImage0.y - _VR_SourceImage0.z)) + _VR_SourceImage0.z;
  _176 = (_170 * (_VR_SourceImage0.z - _VR_SourceImage0.y)) + _VR_SourceImage0.y;
  _178 = 0.6666666865348816f - _170;
  _180 = select((_VR_SourceImage0.x < _175), 0.0f, 1.0f);
  _187 = (_180 * (_VR_SourceImage0.x - _175)) + _175;
  _189 = (_180 * (_175 - _VR_SourceImage0.x)) + _VR_SourceImage0.x;
  _191 = _187 - min(_189, _176);
  _204 = VREffectsCBuffer_000.x + abs(((_180 * ((_170 + -1.0f) - _178)) + _178) + ((_189 - _176) / ((_191 * 6.0f) + 9.999999747378752e-05f)));
  _209 = saturate((VREffectsCBuffer_000.y + (_191 / (_187 + 9.999999747378752e-05f))) * (1.0f - _168));
  _210 = saturate(VREffectsCBuffer_000.z + _187);
  _252 = ((((((saturate(abs((frac(_204 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _209) + 1.0f) * _210) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _253 = ((((((saturate(abs((frac(_204 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _209) + 1.0f) * _210) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _254 = ((((((saturate(abs((frac(_204 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _209) + 1.0f) * _210) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _264 = (((_252 * (lerp(VREffectsCBuffer_032.x, VREffectsCBuffer_048.x, _146))) - _252) * _168) + _252;
  _265 = (((_253 * (lerp(VREffectsCBuffer_032.y, VREffectsCBuffer_048.y, _146))) - _253) * _168) + _253;
  _266 = (((_254 * (lerp(VREffectsCBuffer_032.z, VREffectsCBuffer_048.z, _146))) - _254) * _168) + _254;
  _274 = VREffectsCBuffer_096.w * _53;
  [branch]
  if (VREffectsCBuffer_128.x < 0.5f) {
    _558 = (lerp(_264, VREffectsCBuffer_096.x, _274));
    _559 = (lerp(_265, VREffectsCBuffer_096.y, _274));
    _560 = (lerp(_266, VREffectsCBuffer_096.z, _274));
  } else {
    if (VREffectsCBuffer_128.x < 1.5f) {
      _558 = (_264 + (_274 * VREffectsCBuffer_096.x));
      _559 = (_265 + (_274 * VREffectsCBuffer_096.y));
      _560 = (_266 + (_274 * VREffectsCBuffer_096.z));
    } else {
      if (VREffectsCBuffer_128.x < 2.5f) {
        _322 = select((_264 > 1.0f), _264, saturate((exp2(log2(abs(_264)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _323 = select((_265 > 1.0f), _265, saturate((exp2(log2(abs(_265)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _324 = select((_266 > 1.0f), _266, saturate((exp2(log2(abs(_266)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _355 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _274;
        _356 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _274;
        _357 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _274;
        _361 = (_355 + 0.5f) * 2.0f;
        _362 = (_356 + 0.5f) * 2.0f;
        _363 = (_357 + 0.5f) * 2.0f;
        _371 = (lerp(_361, 1.0f, _322)) * _322;
        _373 = (lerp(_362, 1.0f, _323)) * _323;
        _375 = (lerp(_363, 1.0f, _324)) * _324;
        _409 = (((((_361 + -1.0f) * sqrt(_322)) + ((_322 * 2.0f) * (0.5f - _355))) - _371) * select((_322 < 0.5f), 0.0f, 1.0f)) + _371;
        _410 = (((((_362 + -1.0f) * sqrt(_323)) + ((_323 * 2.0f) * (0.5f - _356))) - _373) * select((_323 < 0.5f), 0.0f, 1.0f)) + _373;
        _411 = (((((_363 + -1.0f) * sqrt(_324)) + ((_324 * 2.0f) * (0.5f - _357))) - _375) * select((_324 < 0.5f), 0.0f, 1.0f)) + _375;
        _558 = (((((_409 * 0.30530601739883423f) + 0.682171106338501f) * _409) + 0.012522878125309944f) * _409);
        _559 = (((((_410 * 0.30530601739883423f) + 0.682171106338501f) * _410) + 0.012522878125309944f) * _410);
        _560 = (((((_411 * 0.30530601739883423f) + 0.682171106338501f) * _411) + 0.012522878125309944f) * _411);
      } else {
        if (VREffectsCBuffer_128.x < 3.5f) {
          _454 = select((_264 > 1.0f), _264, saturate((exp2(log2(abs(_264)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _455 = select((_265 > 1.0f), _265, saturate((exp2(log2(abs(_265)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _456 = select((_266 > 1.0f), _266, saturate((exp2(log2(abs(_266)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _487 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _274;
          _488 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _274;
          _489 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _274;
          _496 = (_454 * 2.0f) * (_487 + 0.5f);
          _497 = (_455 * 2.0f) * (_488 + 0.5f);
          _498 = (_456 * 2.0f) * (_489 + 0.5f);
          _526 = (((1.0f - (((1.0f - _454) * 2.0f) * (0.5f - _487))) - _496) * select((_454 < 0.5f), 0.0f, 1.0f)) + _496;
          _527 = (((1.0f - (((1.0f - _455) * 2.0f) * (0.5f - _488))) - _497) * select((_455 < 0.5f), 0.0f, 1.0f)) + _497;
          _528 = (((1.0f - (((1.0f - _456) * 2.0f) * (0.5f - _489))) - _498) * select((_456 < 0.5f), 0.0f, 1.0f)) + _498;
          _558 = (((((_526 * 0.30530601739883423f) + 0.682171106338501f) * _526) + 0.012522878125309944f) * _526);
          _559 = (((((_527 * 0.30530601739883423f) + 0.682171106338501f) * _527) + 0.012522878125309944f) * _527);
          _560 = (((((_528 * 0.30530601739883423f) + 0.682171106338501f) * _528) + 0.012522878125309944f) * _528);
        } else {
          _558 = (_264 * ((_274 * (VREffectsCBuffer_096.x + -1.0f)) + 1.0f));
          _559 = (_265 * ((_274 * (VREffectsCBuffer_096.y + -1.0f)) + 1.0f));
          _560 = (_266 * ((_274 * (VREffectsCBuffer_096.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  _568 = VREffectsCBuffer_112.w * (1.0f - _53);
  [branch]
  if (VREffectsCBuffer_128.y < 0.5f) {
    _852 = ((_568 * (VREffectsCBuffer_112.x - _558)) + _558);
    _853 = ((_568 * (VREffectsCBuffer_112.y - _559)) + _559);
    _854 = ((_568 * (VREffectsCBuffer_112.z - _560)) + _560);
  } else {
    if (VREffectsCBuffer_128.y < 1.5f) {
      _852 = ((_568 * VREffectsCBuffer_112.x) + _558);
      _853 = ((_568 * VREffectsCBuffer_112.y) + _559);
      _854 = ((_568 * VREffectsCBuffer_112.z) + _560);
    } else {
      if (VREffectsCBuffer_128.y < 2.5f) {
        _616 = select((_558 > 1.0f), _558, saturate((exp2(log2(abs(_558)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _617 = select((_559 > 1.0f), _559, saturate((exp2(log2(abs(_559)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _618 = select((_560 > 1.0f), _560, saturate((exp2(log2(abs(_560)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _649 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _568;
        _650 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _568;
        _651 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _568;
        _655 = (_649 + 0.5f) * 2.0f;
        _656 = (_650 + 0.5f) * 2.0f;
        _657 = (_651 + 0.5f) * 2.0f;
        _665 = (lerp(_655, 1.0f, _616)) * _616;
        _667 = (lerp(_656, 1.0f, _617)) * _617;
        _669 = (lerp(_657, 1.0f, _618)) * _618;
        _703 = (((((_655 + -1.0f) * sqrt(_616)) + ((_616 * 2.0f) * (0.5f - _649))) - _665) * select((_616 < 0.5f), 0.0f, 1.0f)) + _665;
        _704 = (((((_656 + -1.0f) * sqrt(_617)) + ((_617 * 2.0f) * (0.5f - _650))) - _667) * select((_617 < 0.5f), 0.0f, 1.0f)) + _667;
        _705 = (((((_657 + -1.0f) * sqrt(_618)) + ((_618 * 2.0f) * (0.5f - _651))) - _669) * select((_618 < 0.5f), 0.0f, 1.0f)) + _669;
        _852 = (((((_703 * 0.30530601739883423f) + 0.682171106338501f) * _703) + 0.012522878125309944f) * _703);
        _853 = (((((_704 * 0.30530601739883423f) + 0.682171106338501f) * _704) + 0.012522878125309944f) * _704);
        _854 = (((((_705 * 0.30530601739883423f) + 0.682171106338501f) * _705) + 0.012522878125309944f) * _705);
      } else {
        if (VREffectsCBuffer_128.y < 3.5f) {
          _748 = select((_558 > 1.0f), _558, saturate((exp2(log2(abs(_558)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _749 = select((_559 > 1.0f), _559, saturate((exp2(log2(abs(_559)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _750 = select((_560 > 1.0f), _560, saturate((exp2(log2(abs(_560)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _781 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _568;
          _782 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _568;
          _783 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _568;
          _790 = (_748 * 2.0f) * (_781 + 0.5f);
          _791 = (_749 * 2.0f) * (_782 + 0.5f);
          _792 = (_750 * 2.0f) * (_783 + 0.5f);
          _820 = (((1.0f - (((1.0f - _748) * 2.0f) * (0.5f - _781))) - _790) * select((_748 < 0.5f), 0.0f, 1.0f)) + _790;
          _821 = (((1.0f - (((1.0f - _749) * 2.0f) * (0.5f - _782))) - _791) * select((_749 < 0.5f), 0.0f, 1.0f)) + _791;
          _822 = (((1.0f - (((1.0f - _750) * 2.0f) * (0.5f - _783))) - _792) * select((_750 < 0.5f), 0.0f, 1.0f)) + _792;
          _852 = (((((_820 * 0.30530601739883423f) + 0.682171106338501f) * _820) + 0.012522878125309944f) * _820);
          _853 = (((((_821 * 0.30530601739883423f) + 0.682171106338501f) * _821) + 0.012522878125309944f) * _821);
          _854 = (((((_822 * 0.30530601739883423f) + 0.682171106338501f) * _822) + 0.012522878125309944f) * _822);
        } else {
          _852 = (((_568 * (VREffectsCBuffer_112.x + -1.0f)) + 1.0f) * _558);
          _853 = (((_568 * (VREffectsCBuffer_112.y + -1.0f)) + 1.0f) * _559);
          _854 = (((_568 * (VREffectsCBuffer_112.z + -1.0f)) + 1.0f) * _560);
        }
      }
    }
  }
  _882 = _140 - VREffectsCBuffer_144.x;
  _883 = _140 - VREffectsCBuffer_144.y;
  _884 = _140 - VREffectsCBuffer_144.z;
  _885 = _140 - VREffectsCBuffer_144.w;
  _937 = t3.SampleBias(s1, float2((((VREffectsCBuffer_656.x * _27) + VREffectsCBuffer_656.z) + frac(VREffectsCBuffer_688.x * (Globals_208[1].x))), (((VREffectsCBuffer_656.y * _48) + VREffectsCBuffer_656.w) + frac(VREffectsCBuffer_688.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
  _953 = dot(float4(VREffectsCBuffer_640.x, VREffectsCBuffer_640.y, VREffectsCBuffer_640.z, VREffectsCBuffer_640.w), float4(_937.x, _937.y, _937.z, _937.w)) + -1.0f;
  _968 = VREffectsCBuffer_240.w * saturate(_882 / (VREffectsCBuffer_160.x - VREffectsCBuffer_144.x));
  _982 = ((VREffectsCBuffer_240.x - VREffectsCBuffer_224.x) * _968) + VREffectsCBuffer_224.x;
  _983 = ((VREffectsCBuffer_240.y - VREffectsCBuffer_224.y) * _968) + VREffectsCBuffer_224.y;
  _984 = ((VREffectsCBuffer_240.z - VREffectsCBuffer_224.z) * _968) + VREffectsCBuffer_224.z;
  _986 = (((VREffectsCBuffer_672.x * _953) + 1.0f) * min(saturate(_882 * VREffectsCBuffer_176.x), saturate((VREffectsCBuffer_160.x - _140) * VREffectsCBuffer_192.x))) * VREffectsCBuffer_224.w;
  _989 = VREffectsCBuffer_272.w * saturate(_883 / (VREffectsCBuffer_160.y - VREffectsCBuffer_144.y));
  _1003 = ((VREffectsCBuffer_272.x - VREffectsCBuffer_256.x) * _989) + VREffectsCBuffer_256.x;
  _1004 = ((VREffectsCBuffer_272.y - VREffectsCBuffer_256.y) * _989) + VREffectsCBuffer_256.y;
  _1005 = ((VREffectsCBuffer_272.z - VREffectsCBuffer_256.z) * _989) + VREffectsCBuffer_256.z;
  _1007 = (((VREffectsCBuffer_672.y * _953) + 1.0f) * min(saturate(_883 * VREffectsCBuffer_176.y), saturate((VREffectsCBuffer_160.y - _140) * VREffectsCBuffer_192.y))) * VREffectsCBuffer_256.w;
  _1010 = VREffectsCBuffer_304.w * saturate(_884 / (VREffectsCBuffer_160.z - VREffectsCBuffer_144.z));
  _1024 = ((VREffectsCBuffer_304.x - VREffectsCBuffer_288.x) * _1010) + VREffectsCBuffer_288.x;
  _1025 = ((VREffectsCBuffer_304.y - VREffectsCBuffer_288.y) * _1010) + VREffectsCBuffer_288.y;
  _1026 = ((VREffectsCBuffer_304.z - VREffectsCBuffer_288.z) * _1010) + VREffectsCBuffer_288.z;
  _1028 = (((VREffectsCBuffer_672.z * _953) + 1.0f) * min(saturate(_884 * VREffectsCBuffer_176.z), saturate((VREffectsCBuffer_160.z - _140) * VREffectsCBuffer_192.z))) * VREffectsCBuffer_288.w;
  _1031 = VREffectsCBuffer_336.w * saturate(_885 / (VREffectsCBuffer_160.w - VREffectsCBuffer_144.w));
  _1045 = ((VREffectsCBuffer_336.x - VREffectsCBuffer_320.x) * _1031) + VREffectsCBuffer_320.x;
  _1046 = ((VREffectsCBuffer_336.y - VREffectsCBuffer_320.y) * _1031) + VREffectsCBuffer_320.y;
  _1047 = ((VREffectsCBuffer_336.z - VREffectsCBuffer_320.z) * _1031) + VREffectsCBuffer_320.z;
  _1049 = (((VREffectsCBuffer_672.w * _953) + 1.0f) * min(saturate(_885 * VREffectsCBuffer_176.w), saturate((VREffectsCBuffer_160.w - _140) * VREffectsCBuffer_192.w))) * VREffectsCBuffer_320.w;
  [branch]
  if (VREffectsCBuffer_208.x < 0.5f) {
    _1335 = (lerp(_852, _982, _986));
    _1336 = (lerp(_853, _983, _986));
    _1337 = (lerp(_854, _984, _986));
  } else {
    if (VREffectsCBuffer_208.x < 1.5f) {
      _1335 = ((_982 * _986) + _852);
      _1336 = ((_983 * _986) + _853);
      _1337 = ((_984 * _986) + _854);
    } else {
      if (VREffectsCBuffer_208.x < 2.5f) {
        _1099 = select((_852 > 1.0f), _852, saturate((exp2(log2(abs(_852)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1100 = select((_853 > 1.0f), _853, saturate((exp2(log2(abs(_853)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1101 = select((_854 > 1.0f), _854, saturate((exp2(log2(abs(_854)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1132 = (select((_982 > 1.0f), _982, saturate((exp2(log2(abs(_982)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
        _1133 = (select((_983 > 1.0f), _983, saturate((exp2(log2(abs(_983)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
        _1134 = (select((_984 > 1.0f), _984, saturate((exp2(log2(abs(_984)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
        _1138 = (_1132 + 0.5f) * 2.0f;
        _1139 = (_1133 + 0.5f) * 2.0f;
        _1140 = (_1134 + 0.5f) * 2.0f;
        _1148 = (lerp(_1138, 1.0f, _1099)) * _1099;
        _1150 = (lerp(_1139, 1.0f, _1100)) * _1100;
        _1152 = (lerp(_1140, 1.0f, _1101)) * _1101;
        _1186 = (((((_1138 + -1.0f) * sqrt(_1099)) + ((_1099 * 2.0f) * (0.5f - _1132))) - _1148) * select((_1099 < 0.5f), 0.0f, 1.0f)) + _1148;
        _1187 = (((((_1139 + -1.0f) * sqrt(_1100)) + ((_1100 * 2.0f) * (0.5f - _1133))) - _1150) * select((_1100 < 0.5f), 0.0f, 1.0f)) + _1150;
        _1188 = (((((_1140 + -1.0f) * sqrt(_1101)) + ((_1101 * 2.0f) * (0.5f - _1134))) - _1152) * select((_1101 < 0.5f), 0.0f, 1.0f)) + _1152;
        _1335 = (((((_1186 * 0.30530601739883423f) + 0.682171106338501f) * _1186) + 0.012522878125309944f) * _1186);
        _1336 = (((((_1187 * 0.30530601739883423f) + 0.682171106338501f) * _1187) + 0.012522878125309944f) * _1187);
        _1337 = (((((_1188 * 0.30530601739883423f) + 0.682171106338501f) * _1188) + 0.012522878125309944f) * _1188);
      } else {
        if (VREffectsCBuffer_208.x < 3.5f) {
          _1231 = select((_852 > 1.0f), _852, saturate((exp2(log2(abs(_852)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1232 = select((_853 > 1.0f), _853, saturate((exp2(log2(abs(_853)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1233 = select((_854 > 1.0f), _854, saturate((exp2(log2(abs(_854)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1264 = (select((_982 > 1.0f), _982, saturate((exp2(log2(abs(_982)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
          _1265 = (select((_983 > 1.0f), _983, saturate((exp2(log2(abs(_983)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
          _1266 = (select((_984 > 1.0f), _984, saturate((exp2(log2(abs(_984)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
          _1273 = (_1231 * 2.0f) * (_1264 + 0.5f);
          _1274 = (_1232 * 2.0f) * (_1265 + 0.5f);
          _1275 = (_1233 * 2.0f) * (_1266 + 0.5f);
          _1303 = (((1.0f - (((1.0f - _1231) * 2.0f) * (0.5f - _1264))) - _1273) * select((_1231 < 0.5f), 0.0f, 1.0f)) + _1273;
          _1304 = (((1.0f - (((1.0f - _1232) * 2.0f) * (0.5f - _1265))) - _1274) * select((_1232 < 0.5f), 0.0f, 1.0f)) + _1274;
          _1305 = (((1.0f - (((1.0f - _1233) * 2.0f) * (0.5f - _1266))) - _1275) * select((_1233 < 0.5f), 0.0f, 1.0f)) + _1275;
          _1335 = (((((_1303 * 0.30530601739883423f) + 0.682171106338501f) * _1303) + 0.012522878125309944f) * _1303);
          _1336 = (((((_1304 * 0.30530601739883423f) + 0.682171106338501f) * _1304) + 0.012522878125309944f) * _1304);
          _1337 = (((((_1305 * 0.30530601739883423f) + 0.682171106338501f) * _1305) + 0.012522878125309944f) * _1305);
        } else {
          _1335 = ((((_982 + -1.0f) * _986) + 1.0f) * _852);
          _1336 = ((((_983 + -1.0f) * _986) + 1.0f) * _853);
          _1337 = ((((_984 + -1.0f) * _986) + 1.0f) * _854);
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.y < 0.5f) {
    _1622 = (lerp(_1335, _1003, _1007));
    _1623 = (lerp(_1336, _1004, _1007));
    _1624 = (lerp(_1337, _1005, _1007));
  } else {
    if (VREffectsCBuffer_208.y < 1.5f) {
      _1622 = (_1335 + (_1003 * _1007));
      _1623 = (_1336 + (_1004 * _1007));
      _1624 = (_1337 + (_1005 * _1007));
    } else {
      if (VREffectsCBuffer_208.y < 2.5f) {
        _1386 = select((_1335 > 1.0f), _1335, saturate((exp2(log2(abs(_1335)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1387 = select((_1336 > 1.0f), _1336, saturate((exp2(log2(abs(_1336)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1388 = select((_1337 > 1.0f), _1337, saturate((exp2(log2(abs(_1337)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1419 = (select((_1003 > 1.0f), _1003, saturate((exp2(log2(abs(_1003)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
        _1420 = (select((_1004 > 1.0f), _1004, saturate((exp2(log2(abs(_1004)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
        _1421 = (select((_1005 > 1.0f), _1005, saturate((exp2(log2(abs(_1005)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
        _1425 = (_1419 + 0.5f) * 2.0f;
        _1426 = (_1420 + 0.5f) * 2.0f;
        _1427 = (_1421 + 0.5f) * 2.0f;
        _1435 = (lerp(_1425, 1.0f, _1386)) * _1386;
        _1437 = (lerp(_1426, 1.0f, _1387)) * _1387;
        _1439 = (lerp(_1427, 1.0f, _1388)) * _1388;
        _1473 = (((((_1425 + -1.0f) * sqrt(_1386)) + ((_1386 * 2.0f) * (0.5f - _1419))) - _1435) * select((_1386 < 0.5f), 0.0f, 1.0f)) + _1435;
        _1474 = (((((_1426 + -1.0f) * sqrt(_1387)) + ((_1387 * 2.0f) * (0.5f - _1420))) - _1437) * select((_1387 < 0.5f), 0.0f, 1.0f)) + _1437;
        _1475 = (((((_1427 + -1.0f) * sqrt(_1388)) + ((_1388 * 2.0f) * (0.5f - _1421))) - _1439) * select((_1388 < 0.5f), 0.0f, 1.0f)) + _1439;
        _1622 = (((((_1473 * 0.30530601739883423f) + 0.682171106338501f) * _1473) + 0.012522878125309944f) * _1473);
        _1623 = (((((_1474 * 0.30530601739883423f) + 0.682171106338501f) * _1474) + 0.012522878125309944f) * _1474);
        _1624 = (((((_1475 * 0.30530601739883423f) + 0.682171106338501f) * _1475) + 0.012522878125309944f) * _1475);
      } else {
        if (VREffectsCBuffer_208.y < 3.5f) {
          _1518 = select((_1335 > 1.0f), _1335, saturate((exp2(log2(abs(_1335)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1519 = select((_1336 > 1.0f), _1336, saturate((exp2(log2(abs(_1336)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1520 = select((_1337 > 1.0f), _1337, saturate((exp2(log2(abs(_1337)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1551 = (select((_1003 > 1.0f), _1003, saturate((exp2(log2(abs(_1003)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
          _1552 = (select((_1004 > 1.0f), _1004, saturate((exp2(log2(abs(_1004)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
          _1553 = (select((_1005 > 1.0f), _1005, saturate((exp2(log2(abs(_1005)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
          _1560 = (_1518 * 2.0f) * (_1551 + 0.5f);
          _1561 = (_1519 * 2.0f) * (_1552 + 0.5f);
          _1562 = (_1520 * 2.0f) * (_1553 + 0.5f);
          _1590 = (((1.0f - (((1.0f - _1518) * 2.0f) * (0.5f - _1551))) - _1560) * select((_1518 < 0.5f), 0.0f, 1.0f)) + _1560;
          _1591 = (((1.0f - (((1.0f - _1519) * 2.0f) * (0.5f - _1552))) - _1561) * select((_1519 < 0.5f), 0.0f, 1.0f)) + _1561;
          _1592 = (((1.0f - (((1.0f - _1520) * 2.0f) * (0.5f - _1553))) - _1562) * select((_1520 < 0.5f), 0.0f, 1.0f)) + _1562;
          _1622 = (((((_1590 * 0.30530601739883423f) + 0.682171106338501f) * _1590) + 0.012522878125309944f) * _1590);
          _1623 = (((((_1591 * 0.30530601739883423f) + 0.682171106338501f) * _1591) + 0.012522878125309944f) * _1591);
          _1624 = (((((_1592 * 0.30530601739883423f) + 0.682171106338501f) * _1592) + 0.012522878125309944f) * _1592);
        } else {
          _1622 = (_1335 * (((_1003 + -1.0f) * _1007) + 1.0f));
          _1623 = (_1336 * (((_1004 + -1.0f) * _1007) + 1.0f));
          _1624 = (_1337 * (((_1005 + -1.0f) * _1007) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.z < 0.5f) {
    _1909 = (lerp(_1622, _1024, _1028));
    _1910 = (lerp(_1623, _1025, _1028));
    _1911 = (lerp(_1624, _1026, _1028));
  } else {
    if (VREffectsCBuffer_208.z < 1.5f) {
      _1909 = (_1622 + (_1024 * _1028));
      _1910 = (_1623 + (_1025 * _1028));
      _1911 = (_1624 + (_1026 * _1028));
    } else {
      if (VREffectsCBuffer_208.z < 2.5f) {
        _1673 = select((_1622 > 1.0f), _1622, saturate((exp2(log2(abs(_1622)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1674 = select((_1623 > 1.0f), _1623, saturate((exp2(log2(abs(_1623)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1675 = select((_1624 > 1.0f), _1624, saturate((exp2(log2(abs(_1624)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1706 = (select((_1024 > 1.0f), _1024, saturate((exp2(log2(abs(_1024)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1028;
        _1707 = (select((_1025 > 1.0f), _1025, saturate((exp2(log2(abs(_1025)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1028;
        _1708 = (select((_1026 > 1.0f), _1026, saturate((exp2(log2(abs(_1026)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1028;
        _1712 = (_1706 + 0.5f) * 2.0f;
        _1713 = (_1707 + 0.5f) * 2.0f;
        _1714 = (_1708 + 0.5f) * 2.0f;
        _1722 = (lerp(_1712, 1.0f, _1673)) * _1673;
        _1724 = (lerp(_1713, 1.0f, _1674)) * _1674;
        _1726 = (lerp(_1714, 1.0f, _1675)) * _1675;
        _1760 = (((((_1712 + -1.0f) * sqrt(_1673)) + ((_1673 * 2.0f) * (0.5f - _1706))) - _1722) * select((_1673 < 0.5f), 0.0f, 1.0f)) + _1722;
        _1761 = (((((_1713 + -1.0f) * sqrt(_1674)) + ((_1674 * 2.0f) * (0.5f - _1707))) - _1724) * select((_1674 < 0.5f), 0.0f, 1.0f)) + _1724;
        _1762 = (((((_1714 + -1.0f) * sqrt(_1675)) + ((_1675 * 2.0f) * (0.5f - _1708))) - _1726) * select((_1675 < 0.5f), 0.0f, 1.0f)) + _1726;
        _1909 = (((((_1760 * 0.30530601739883423f) + 0.682171106338501f) * _1760) + 0.012522878125309944f) * _1760);
        _1910 = (((((_1761 * 0.30530601739883423f) + 0.682171106338501f) * _1761) + 0.012522878125309944f) * _1761);
        _1911 = (((((_1762 * 0.30530601739883423f) + 0.682171106338501f) * _1762) + 0.012522878125309944f) * _1762);
      } else {
        if (VREffectsCBuffer_208.z < 3.5f) {
          _1805 = select((_1622 > 1.0f), _1622, saturate((exp2(log2(abs(_1622)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1806 = select((_1623 > 1.0f), _1623, saturate((exp2(log2(abs(_1623)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1807 = select((_1624 > 1.0f), _1624, saturate((exp2(log2(abs(_1624)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1838 = (select((_1024 > 1.0f), _1024, saturate((exp2(log2(abs(_1024)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1028;
          _1839 = (select((_1025 > 1.0f), _1025, saturate((exp2(log2(abs(_1025)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1028;
          _1840 = (select((_1026 > 1.0f), _1026, saturate((exp2(log2(abs(_1026)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1028;
          _1847 = (_1805 * 2.0f) * (_1838 + 0.5f);
          _1848 = (_1806 * 2.0f) * (_1839 + 0.5f);
          _1849 = (_1807 * 2.0f) * (_1840 + 0.5f);
          _1877 = (((1.0f - (((1.0f - _1805) * 2.0f) * (0.5f - _1838))) - _1847) * select((_1805 < 0.5f), 0.0f, 1.0f)) + _1847;
          _1878 = (((1.0f - (((1.0f - _1806) * 2.0f) * (0.5f - _1839))) - _1848) * select((_1806 < 0.5f), 0.0f, 1.0f)) + _1848;
          _1879 = (((1.0f - (((1.0f - _1807) * 2.0f) * (0.5f - _1840))) - _1849) * select((_1807 < 0.5f), 0.0f, 1.0f)) + _1849;
          _1909 = (((((_1877 * 0.30530601739883423f) + 0.682171106338501f) * _1877) + 0.012522878125309944f) * _1877);
          _1910 = (((((_1878 * 0.30530601739883423f) + 0.682171106338501f) * _1878) + 0.012522878125309944f) * _1878);
          _1911 = (((((_1879 * 0.30530601739883423f) + 0.682171106338501f) * _1879) + 0.012522878125309944f) * _1879);
        } else {
          _1909 = (_1622 * (((_1024 + -1.0f) * _1028) + 1.0f));
          _1910 = (_1623 * (((_1025 + -1.0f) * _1028) + 1.0f));
          _1911 = (_1624 * (((_1026 + -1.0f) * _1028) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.w < 0.5f) {
    _2196 = (lerp(_1909, _1045, _1049));
    _2197 = (lerp(_1910, _1046, _1049));
    _2198 = (lerp(_1911, _1047, _1049));
  } else {
    if (VREffectsCBuffer_208.w < 1.5f) {
      _2196 = (_1909 + (_1045 * _1049));
      _2197 = (_1910 + (_1046 * _1049));
      _2198 = (_1911 + (_1047 * _1049));
    } else {
      if (VREffectsCBuffer_208.w < 2.5f) {
        _1960 = select((_1909 > 1.0f), _1909, saturate((exp2(log2(abs(_1909)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1961 = select((_1910 > 1.0f), _1910, saturate((exp2(log2(abs(_1910)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1962 = select((_1911 > 1.0f), _1911, saturate((exp2(log2(abs(_1911)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1993 = (select((_1045 > 1.0f), _1045, saturate((exp2(log2(abs(_1045)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1049;
        _1994 = (select((_1046 > 1.0f), _1046, saturate((exp2(log2(abs(_1046)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1049;
        _1995 = (select((_1047 > 1.0f), _1047, saturate((exp2(log2(abs(_1047)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1049;
        _1999 = (_1993 + 0.5f) * 2.0f;
        _2000 = (_1994 + 0.5f) * 2.0f;
        _2001 = (_1995 + 0.5f) * 2.0f;
        _2009 = (lerp(_1999, 1.0f, _1960)) * _1960;
        _2011 = (lerp(_2000, 1.0f, _1961)) * _1961;
        _2013 = (lerp(_2001, 1.0f, _1962)) * _1962;
        _2047 = (((((_1999 + -1.0f) * sqrt(_1960)) + ((_1960 * 2.0f) * (0.5f - _1993))) - _2009) * select((_1960 < 0.5f), 0.0f, 1.0f)) + _2009;
        _2048 = (((((_2000 + -1.0f) * sqrt(_1961)) + ((_1961 * 2.0f) * (0.5f - _1994))) - _2011) * select((_1961 < 0.5f), 0.0f, 1.0f)) + _2011;
        _2049 = (((((_2001 + -1.0f) * sqrt(_1962)) + ((_1962 * 2.0f) * (0.5f - _1995))) - _2013) * select((_1962 < 0.5f), 0.0f, 1.0f)) + _2013;
        _2196 = (((((_2047 * 0.30530601739883423f) + 0.682171106338501f) * _2047) + 0.012522878125309944f) * _2047);
        _2197 = (((((_2048 * 0.30530601739883423f) + 0.682171106338501f) * _2048) + 0.012522878125309944f) * _2048);
        _2198 = (((((_2049 * 0.30530601739883423f) + 0.682171106338501f) * _2049) + 0.012522878125309944f) * _2049);
      } else {
        if (VREffectsCBuffer_208.w < 3.5f) {
          _2092 = select((_1909 > 1.0f), _1909, saturate((exp2(log2(abs(_1909)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2093 = select((_1910 > 1.0f), _1910, saturate((exp2(log2(abs(_1910)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2094 = select((_1911 > 1.0f), _1911, saturate((exp2(log2(abs(_1911)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2125 = (select((_1045 > 1.0f), _1045, saturate((exp2(log2(abs(_1045)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1049;
          _2126 = (select((_1046 > 1.0f), _1046, saturate((exp2(log2(abs(_1046)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1049;
          _2127 = (select((_1047 > 1.0f), _1047, saturate((exp2(log2(abs(_1047)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1049;
          _2134 = (_2092 * 2.0f) * (_2125 + 0.5f);
          _2135 = (_2093 * 2.0f) * (_2126 + 0.5f);
          _2136 = (_2094 * 2.0f) * (_2127 + 0.5f);
          _2164 = (((1.0f - (((1.0f - _2092) * 2.0f) * (0.5f - _2125))) - _2134) * select((_2092 < 0.5f), 0.0f, 1.0f)) + _2134;
          _2165 = (((1.0f - (((1.0f - _2093) * 2.0f) * (0.5f - _2126))) - _2135) * select((_2093 < 0.5f), 0.0f, 1.0f)) + _2135;
          _2166 = (((1.0f - (((1.0f - _2094) * 2.0f) * (0.5f - _2127))) - _2136) * select((_2094 < 0.5f), 0.0f, 1.0f)) + _2136;
          _2196 = (((((_2164 * 0.30530601739883423f) + 0.682171106338501f) * _2164) + 0.012522878125309944f) * _2164);
          _2197 = (((((_2165 * 0.30530601739883423f) + 0.682171106338501f) * _2165) + 0.012522878125309944f) * _2165);
          _2198 = (((((_2166 * 0.30530601739883423f) + 0.682171106338501f) * _2166) + 0.012522878125309944f) * _2166);
        } else {
          _2196 = (_1909 * (((_1045 + -1.0f) * _1049) + 1.0f));
          _2197 = (_1910 * (((_1046 + -1.0f) * _1049) + 1.0f));
          _2198 = (_1911 * (((_1047 + -1.0f) * _1049) + 1.0f));
        }
      }
    }
  }
  _2205 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.x + _27), ((VREffectsCBuffer_352.y * _30) + _48)), (Globals_976), int2(0, 0));
  _2222 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.z + _27), ((VREffectsCBuffer_352.w * _30) + _48)), (Globals_976), int2(0, 0));
  _2239 = t1.SampleBias(s1, float2((VREffectsCBuffer_368.x + _27), ((VREffectsCBuffer_368.y * _30) + _48)), (Globals_976), int2(0, 0));

  _2205.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2205.xyz), 1.0f, 0.5f);
  _2222.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2222.xyz), 1.0f, 0.5f);
  _2239.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2239.xyz), 1.0f, 0.5f);

  _2262 = (((((VREffectsCBuffer_384.x * _2205.x) - _2196) + (VREffectsCBuffer_400.x * _2222.y)) + (VREffectsCBuffer_416.x * _2239.z)) * VREffectsCBuffer_368.z) + _2196;
  _2263 = (((((VREffectsCBuffer_384.y * _2205.x) - _2197) + (VREffectsCBuffer_400.y * _2222.y)) + (VREffectsCBuffer_416.y * _2239.z)) * VREffectsCBuffer_368.z) + _2197;
  _2264 = (((((VREffectsCBuffer_384.z * _2205.x) - _2198) + (VREffectsCBuffer_400.z * _2222.y)) + (VREffectsCBuffer_416.z * _2239.z)) * VREffectsCBuffer_368.z) + _2198;
  _2270 = (((-0.0f - VREffectsCBuffer_064.y) - VREffectsCBuffer_064.y) * _22) + VREffectsCBuffer_064.y;
  if (!(VREffectsCBuffer_064.w < 0.5f)) {
    _2274 = _2270 * 0.5f;
    _2275 = _2274 + 0.5f;
    _2294 = 0.5f - _2274;
    _2298 = 1.0f - (((1.0f - _2262) * 2.0f) * _2294);
    _2299 = 1.0f - (((1.0f - _2263) * 2.0f) * _2294);
    _2300 = 1.0f - (((1.0f - _2264) * 2.0f) * _2294);
    _2314 = ((_2298 - _2262) + ((((_2262 * 2.0f) * _2275) - _2298) * select((_2262 > 0.5f), 0.0f, 1.0f)));
    _2315 = ((_2299 - _2263) + ((((_2263 * 2.0f) * _2275) - _2299) * select((_2263 > 0.5f), 0.0f, 1.0f)));
    _2316 = ((_2300 - _2264) + ((((_2264 * 2.0f) * _2275) - _2300) * select((_2264 > 0.5f), 0.0f, 1.0f)));
  } else {
    _2314 = _2270;
    _2315 = _2270;
    _2316 = _2270;
  }
  _2317 = _2314 + _2262;
  _2318 = _2315 + _2263;
  _2319 = _2316 + _2264;
  if (VREffectsCBuffer_464.w > 0.5f) {
    _2325 = int(VREffectsCBuffer_464.x);
    _2333 = int(VREffectsCBuffer_464.z);
    _2346 = t2.SampleBias(s1, float2(((float((int)(_2333 % _2325)) * (1.0f / float((int)(_2325)))) + (_27 / VREffectsCBuffer_464.x)), ((float((int)(_2333 / _2325)) * (1.0f / float((int)(int(VREffectsCBuffer_464.y))))) + (_48 / VREffectsCBuffer_464.y))), (Globals_976), int2(0, 0));
    _2359 = VREffectsCBuffer_480.w * _2346.w;
    _2360 = 1.0f - _2359;
    _2371 = ((_2360 * _2317) + ((VREffectsCBuffer_480.x * _2346.x) * _2359));
    _2372 = ((_2360 * _2318) + ((VREffectsCBuffer_480.y * _2346.y) * _2359));
    _2373 = ((_2360 * _2319) + ((VREffectsCBuffer_480.z * _2346.z) * _2359));
  } else {
    _2371 = _2317;
    _2372 = _2318;
    _2373 = _2319;
  }
  if (VREffectsCBuffer_784.x > 0.5f) {
    _2382 = _39 * (TEXCOORD.x - VREffectsCBuffer_800.x);
    _2384 = (TEXCOORD.y - VREffectsCBuffer_800.y) * 2.0f;
    _2395 = saturate(sqrt((_2382 * _2382) + (_2384 * _2384)) / (VREffectsCBuffer_800.z * sqrt((_30 * _30) + 1.0f)));
    _2404 = exp2(log2(1.0f - ((_2395 * _2395) * (3.0f - (_2395 * 2.0f)))) * VREffectsCBuffer_784.w);
    _2408 = (VREffectsCBuffer_784.y * (_2404 + -1.0f)) + 1.0f;
    _2409 = _2408 * _2371;
    _2410 = _2408 * _2372;
    _2411 = _2408 * _2373;
    _2413 = VREffectsCBuffer_784.z * _2404;
    _2442 = ((((1.0f - _2409) + (select((_2409 > 0.5f), 0.0f, 1.0f) * ((_2409 * 2.0f) + -1.0f))) * _2413) + _2409);
    _2443 = ((((1.0f - _2410) + (select((_2410 > 0.5f), 0.0f, 1.0f) * ((_2410 * 2.0f) + -1.0f))) * _2413) + _2410);
    _2444 = ((((1.0f - _2411) + (select((_2411 > 0.5f), 0.0f, 1.0f) * ((_2411 * 2.0f) + -1.0f))) * _2413) + _2411);
  } else {
    _2442 = _2371;
    _2443 = _2372;
    _2444 = _2373;
  }
  SV_Target.x = _2442;
  SV_Target.y = _2443;
  SV_Target.z = _2444;
  SV_Target.w = _VR_SourceImage0.w;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _VR_SourceImage0.xyz, SV_Target.xyz));

  return SV_Target;
}
