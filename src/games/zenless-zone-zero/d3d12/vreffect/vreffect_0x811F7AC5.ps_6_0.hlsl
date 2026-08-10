#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

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
  float _18;
  float _21;
  float _26;
  float _29;
  float _38;
  bool _44;
  float _47;
  float _52;
  float4 _55;
  float _63;
  float _64;
  float4 _65;
  float _89;
  float _91;
  float _107;
  float _115;
  float _116;
  float _117;
  float _139;
  float _145;
  float _167;
  float _169;
  float _174;
  float _175;
  float _177;
  float _179;
  float _186;
  float _188;
  float _190;
  float _203;
  float _208;
  float _209;
  float _251;
  float _252;
  float _253;
  float _263;
  float _264;
  float _265;
  float _273;
  float _557;
  float _558;
  float _559;
  float _851;
  float _852;
  float _853;
  float _1283;
  float _1284;
  float _1285;
  float _1570;
  float _1571;
  float _1572;
  float _1857;
  float _1858;
  float _1859;
  float _2144;
  float _2145;
  float _2146;
  float _2262;
  float _2263;
  float _2264;
  float _2319;
  float _2320;
  float _2321;
  float _2390;
  float _2391;
  float _2392;
  float _321;
  float _322;
  float _323;
  float _354;
  float _355;
  float _356;
  float _360;
  float _361;
  float _362;
  float _370;
  float _372;
  float _374;
  float _408;
  float _409;
  float _410;
  float _453;
  float _454;
  float _455;
  float _486;
  float _487;
  float _488;
  float _495;
  float _496;
  float _497;
  float _525;
  float _526;
  float _527;
  float _567;
  float _615;
  float _616;
  float _617;
  float _648;
  float _649;
  float _650;
  float _654;
  float _655;
  float _656;
  float _664;
  float _666;
  float _668;
  float _702;
  float _703;
  float _704;
  float _747;
  float _748;
  float _749;
  float _780;
  float _781;
  float _782;
  float _789;
  float _790;
  float _791;
  float _819;
  float _820;
  float _821;
  float _881;
  float _882;
  float _883;
  float _884;
  float _916;
  float _930;
  float _931;
  float _932;
  float _934;
  float _937;
  float _951;
  float _952;
  float _953;
  float _955;
  float _958;
  float _972;
  float _973;
  float _974;
  float _976;
  float _979;
  float _993;
  float _994;
  float _995;
  float _997;
  float _1047;
  float _1048;
  float _1049;
  float _1080;
  float _1081;
  float _1082;
  float _1086;
  float _1087;
  float _1088;
  float _1096;
  float _1098;
  float _1100;
  float _1134;
  float _1135;
  float _1136;
  float _1179;
  float _1180;
  float _1181;
  float _1212;
  float _1213;
  float _1214;
  float _1221;
  float _1222;
  float _1223;
  float _1251;
  float _1252;
  float _1253;
  float _1334;
  float _1335;
  float _1336;
  float _1367;
  float _1368;
  float _1369;
  float _1373;
  float _1374;
  float _1375;
  float _1383;
  float _1385;
  float _1387;
  float _1421;
  float _1422;
  float _1423;
  float _1466;
  float _1467;
  float _1468;
  float _1499;
  float _1500;
  float _1501;
  float _1508;
  float _1509;
  float _1510;
  float _1538;
  float _1539;
  float _1540;
  float _1621;
  float _1622;
  float _1623;
  float _1654;
  float _1655;
  float _1656;
  float _1660;
  float _1661;
  float _1662;
  float _1670;
  float _1672;
  float _1674;
  float _1708;
  float _1709;
  float _1710;
  float _1753;
  float _1754;
  float _1755;
  float _1786;
  float _1787;
  float _1788;
  float _1795;
  float _1796;
  float _1797;
  float _1825;
  float _1826;
  float _1827;
  float _1908;
  float _1909;
  float _1910;
  float _1941;
  float _1942;
  float _1943;
  float _1947;
  float _1948;
  float _1949;
  float _1957;
  float _1959;
  float _1961;
  float _1995;
  float _1996;
  float _1997;
  float _2040;
  float _2041;
  float _2042;
  float _2073;
  float _2074;
  float _2075;
  float _2082;
  float _2083;
  float _2084;
  float _2112;
  float _2113;
  float _2114;
  float4 _2153;
  float4 _2170;
  float4 _2187;
  float _2210;
  float _2211;
  float _2212;
  float _2218;
  float _2222;
  float _2223;
  float _2242;
  float _2246;
  float _2247;
  float _2248;
  float _2265;
  float _2266;
  float _2267;
  int _2273;
  int _2281;
  float4 _2294;
  float _2307;
  float _2308;
  float _2330;
  float _2332;
  float _2343;
  float _2352;
  float _2356;
  float _2357;
  float _2358;
  float _2359;
  float _2361;

  _18 = fmod(((((1080.0f / (Globals_2208.y)) * TEXCOORD.y) * (Globals_2208.y)) * VREffectsCBuffer_064.x), 2.0f);
  _21 = select((_18 > 1.0f), (2.0f - _18), _18);
  _26 = (((_21 * 2.0f) + -1.0f) * VREffectsCBuffer_064.z) + TEXCOORD.x;
  _29 = (Globals_2208.w) * (Globals_2208.x);
  _38 = _29 * 2.0f;
  _44 = ((frac((((_26 + abs(VREffectsCBuffer_080.y)) * _29) - (VREffectsCBuffer_080.y * TEXCOORD.y)) / (_38 * VREffectsCBuffer_080.x)) * 2.0f) <= 1.0f);
  _47 = (select(_44, 0.9999899864196777f, -1.0f) * VREffectsCBuffer_080.z) + TEXCOORD.y;
  _52 = select(_44, select((_47 < 1.0f), 0.0f, 1.0f), select((_47 > 0.0f), 0.0f, 1.0f));

  // _55 = t1.SampleBias(s1, float2(_26, _47), (Globals_976), int2(0, 0));
  float4 _VR_SourceImage0 = renodx::draw::InvertIntermediatePass(t1.SampleBias(s1, float2(_26, _47), (Globals_976), int2(0, 0)));
  float4 untonemapped = _VR_SourceImage0;
  _VR_SourceImage0.xyz = renodx::tonemap::dice::BT709(_VR_SourceImage0.xyz, 1.0f, 0.5f);

  _63 = _26 - (Globals_2240.z);
  _64 = _47 - (Globals_2240.w);
  _65 = t0.SampleLevel(s0, float2(_63, _64), 0.0f);
  _89 = (_63 * 2.0f) + -1.0f;
  _91 = -0.0f - ((_64 * 2.0f) + -1.0f);
  _107 = mad((Globals_2144[2].w), _65.x, mad((Globals_2144[1].w), _91, ((Globals_2144[0].w) * _89))) + (Globals_2144[3].w);
  _115 = ((mad((Globals_2144[2].x), _65.x, mad((Globals_2144[1].x), _91, ((Globals_2144[0].x) * _89))) + (Globals_2144[3].x)) / _107) - (Globals_480.x);
  _116 = ((mad((Globals_2144[2].y), _65.x, mad((Globals_2144[1].y), _91, ((Globals_2144[0].y) * _89))) + (Globals_2144[3].y)) / _107) - (Globals_480.y);
  _117 = ((mad((Globals_2144[2].z), _65.x, mad((Globals_2144[1].z), _91, ((Globals_2144[0].z) * _89))) + (Globals_2144[3].z)) / _107) - (Globals_480.z);
  _139 = select((VREffectsCBuffer_512.w > 0.5f), select((sqrt(((_115 * _115) + (_116 * _116)) + (_117 * _117)) > 2000.0f), 0.0f, max(0.0f, dot(float2(_115, _117), float2(VREffectsCBuffer_512.x, VREffectsCBuffer_512.y)))), (1.0f / (((Globals_992.z) * _65.x) + (Globals_992.w))));
  _145 = saturate((_139 - VREffectsCBuffer_016.z) * VREffectsCBuffer_016.w);
  _167 = ((VREffectsCBuffer_048.w - VREffectsCBuffer_032.w) * _145) + VREffectsCBuffer_032.w;
  _169 = select((_VR_SourceImage0.y < _VR_SourceImage0.z), 0.0f, 1.0f);
  _174 = (_169 * (_VR_SourceImage0.y - _VR_SourceImage0.z)) + _VR_SourceImage0.z;
  _175 = (_169 * (_VR_SourceImage0.z - _VR_SourceImage0.y)) + _VR_SourceImage0.y;
  _177 = 0.6666666865348816f - _169;
  _179 = select((_VR_SourceImage0.x < _174), 0.0f, 1.0f);
  _186 = (_179 * (_VR_SourceImage0.x - _174)) + _174;
  _188 = (_179 * (_174 - _VR_SourceImage0.x)) + _VR_SourceImage0.x;
  _190 = _186 - min(_188, _175);
  _203 = VREffectsCBuffer_000.x + abs(((_179 * ((_169 + -1.0f) - _177)) + _177) + ((_188 - _175) / ((_190 * 6.0f) + 9.999999747378752e-05f)));
  _208 = saturate((VREffectsCBuffer_000.y + (_190 / (_186 + 9.999999747378752e-05f))) * (1.0f - _167));
  _209 = saturate(VREffectsCBuffer_000.z + _186);
  _251 = ((((((saturate(abs((frac(_203 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _208) + 1.0f) * _209) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _252 = ((((((saturate(abs((frac(_203 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _208) + 1.0f) * _209) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _253 = ((((((saturate(abs((frac(_203 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _208) + 1.0f) * _209) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _263 = (((_251 * (lerp(VREffectsCBuffer_032.x, VREffectsCBuffer_048.x, _145))) - _251) * _167) + _251;
  _264 = (((_252 * (lerp(VREffectsCBuffer_032.y, VREffectsCBuffer_048.y, _145))) - _252) * _167) + _252;
  _265 = (((_253 * (lerp(VREffectsCBuffer_032.z, VREffectsCBuffer_048.z, _145))) - _253) * _167) + _253;
  _273 = VREffectsCBuffer_096.w * _52;
  [branch]
  if (VREffectsCBuffer_128.x < 0.5f) {
    _557 = (lerp(_263, VREffectsCBuffer_096.x, _273));
    _558 = (lerp(_264, VREffectsCBuffer_096.y, _273));
    _559 = (lerp(_265, VREffectsCBuffer_096.z, _273));
  } else {
    if (VREffectsCBuffer_128.x < 1.5f) {
      _557 = (_263 + (_273 * VREffectsCBuffer_096.x));
      _558 = (_264 + (_273 * VREffectsCBuffer_096.y));
      _559 = (_265 + (_273 * VREffectsCBuffer_096.z));
    } else {
      if (VREffectsCBuffer_128.x < 2.5f) {
        _321 = select((_263 > 1.0f), _263, saturate((exp2(log2(abs(_263)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _322 = select((_264 > 1.0f), _264, saturate((exp2(log2(abs(_264)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _323 = select((_265 > 1.0f), _265, saturate((exp2(log2(abs(_265)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _354 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _273;
        _355 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _273;
        _356 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _273;
        _360 = (_354 + 0.5f) * 2.0f;
        _361 = (_355 + 0.5f) * 2.0f;
        _362 = (_356 + 0.5f) * 2.0f;
        _370 = (lerp(_360, 1.0f, _321)) * _321;
        _372 = (lerp(_361, 1.0f, _322)) * _322;
        _374 = (lerp(_362, 1.0f, _323)) * _323;
        _408 = (((((_360 + -1.0f) * sqrt(_321)) + ((_321 * 2.0f) * (0.5f - _354))) - _370) * select((_321 < 0.5f), 0.0f, 1.0f)) + _370;
        _409 = (((((_361 + -1.0f) * sqrt(_322)) + ((_322 * 2.0f) * (0.5f - _355))) - _372) * select((_322 < 0.5f), 0.0f, 1.0f)) + _372;
        _410 = (((((_362 + -1.0f) * sqrt(_323)) + ((_323 * 2.0f) * (0.5f - _356))) - _374) * select((_323 < 0.5f), 0.0f, 1.0f)) + _374;
        _557 = (((((_408 * 0.30530601739883423f) + 0.682171106338501f) * _408) + 0.012522878125309944f) * _408);
        _558 = (((((_409 * 0.30530601739883423f) + 0.682171106338501f) * _409) + 0.012522878125309944f) * _409);
        _559 = (((((_410 * 0.30530601739883423f) + 0.682171106338501f) * _410) + 0.012522878125309944f) * _410);
      } else {
        if (VREffectsCBuffer_128.x < 3.5f) {
          _453 = select((_263 > 1.0f), _263, saturate((exp2(log2(abs(_263)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _454 = select((_264 > 1.0f), _264, saturate((exp2(log2(abs(_264)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _455 = select((_265 > 1.0f), _265, saturate((exp2(log2(abs(_265)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _486 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _273;
          _487 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _273;
          _488 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _273;
          _495 = (_453 * 2.0f) * (_486 + 0.5f);
          _496 = (_454 * 2.0f) * (_487 + 0.5f);
          _497 = (_455 * 2.0f) * (_488 + 0.5f);
          _525 = (((1.0f - (((1.0f - _453) * 2.0f) * (0.5f - _486))) - _495) * select((_453 < 0.5f), 0.0f, 1.0f)) + _495;
          _526 = (((1.0f - (((1.0f - _454) * 2.0f) * (0.5f - _487))) - _496) * select((_454 < 0.5f), 0.0f, 1.0f)) + _496;
          _527 = (((1.0f - (((1.0f - _455) * 2.0f) * (0.5f - _488))) - _497) * select((_455 < 0.5f), 0.0f, 1.0f)) + _497;
          _557 = (((((_525 * 0.30530601739883423f) + 0.682171106338501f) * _525) + 0.012522878125309944f) * _525);
          _558 = (((((_526 * 0.30530601739883423f) + 0.682171106338501f) * _526) + 0.012522878125309944f) * _526);
          _559 = (((((_527 * 0.30530601739883423f) + 0.682171106338501f) * _527) + 0.012522878125309944f) * _527);
        } else {
          _557 = (_263 * ((_273 * (VREffectsCBuffer_096.x + -1.0f)) + 1.0f));
          _558 = (_264 * ((_273 * (VREffectsCBuffer_096.y + -1.0f)) + 1.0f));
          _559 = (_265 * ((_273 * (VREffectsCBuffer_096.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  _567 = VREffectsCBuffer_112.w * (1.0f - _52);
  [branch]
  if (VREffectsCBuffer_128.y < 0.5f) {
    _851 = ((_567 * (VREffectsCBuffer_112.x - _557)) + _557);
    _852 = ((_567 * (VREffectsCBuffer_112.y - _558)) + _558);
    _853 = ((_567 * (VREffectsCBuffer_112.z - _559)) + _559);
  } else {
    if (VREffectsCBuffer_128.y < 1.5f) {
      _851 = ((_567 * VREffectsCBuffer_112.x) + _557);
      _852 = ((_567 * VREffectsCBuffer_112.y) + _558);
      _853 = ((_567 * VREffectsCBuffer_112.z) + _559);
    } else {
      if (VREffectsCBuffer_128.y < 2.5f) {
        _615 = select((_557 > 1.0f), _557, saturate((exp2(log2(abs(_557)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _616 = select((_558 > 1.0f), _558, saturate((exp2(log2(abs(_558)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _617 = select((_559 > 1.0f), _559, saturate((exp2(log2(abs(_559)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _648 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _567;
        _649 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _567;
        _650 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _567;
        _654 = (_648 + 0.5f) * 2.0f;
        _655 = (_649 + 0.5f) * 2.0f;
        _656 = (_650 + 0.5f) * 2.0f;
        _664 = (lerp(_654, 1.0f, _615)) * _615;
        _666 = (lerp(_655, 1.0f, _616)) * _616;
        _668 = (lerp(_656, 1.0f, _617)) * _617;
        _702 = (((((_654 + -1.0f) * sqrt(_615)) + ((_615 * 2.0f) * (0.5f - _648))) - _664) * select((_615 < 0.5f), 0.0f, 1.0f)) + _664;
        _703 = (((((_655 + -1.0f) * sqrt(_616)) + ((_616 * 2.0f) * (0.5f - _649))) - _666) * select((_616 < 0.5f), 0.0f, 1.0f)) + _666;
        _704 = (((((_656 + -1.0f) * sqrt(_617)) + ((_617 * 2.0f) * (0.5f - _650))) - _668) * select((_617 < 0.5f), 0.0f, 1.0f)) + _668;
        _851 = (((((_702 * 0.30530601739883423f) + 0.682171106338501f) * _702) + 0.012522878125309944f) * _702);
        _852 = (((((_703 * 0.30530601739883423f) + 0.682171106338501f) * _703) + 0.012522878125309944f) * _703);
        _853 = (((((_704 * 0.30530601739883423f) + 0.682171106338501f) * _704) + 0.012522878125309944f) * _704);
      } else {
        if (VREffectsCBuffer_128.y < 3.5f) {
          _747 = select((_557 > 1.0f), _557, saturate((exp2(log2(abs(_557)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _748 = select((_558 > 1.0f), _558, saturate((exp2(log2(abs(_558)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _749 = select((_559 > 1.0f), _559, saturate((exp2(log2(abs(_559)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _780 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _567;
          _781 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _567;
          _782 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _567;
          _789 = (_747 * 2.0f) * (_780 + 0.5f);
          _790 = (_748 * 2.0f) * (_781 + 0.5f);
          _791 = (_749 * 2.0f) * (_782 + 0.5f);
          _819 = (((1.0f - (((1.0f - _747) * 2.0f) * (0.5f - _780))) - _789) * select((_747 < 0.5f), 0.0f, 1.0f)) + _789;
          _820 = (((1.0f - (((1.0f - _748) * 2.0f) * (0.5f - _781))) - _790) * select((_748 < 0.5f), 0.0f, 1.0f)) + _790;
          _821 = (((1.0f - (((1.0f - _749) * 2.0f) * (0.5f - _782))) - _791) * select((_749 < 0.5f), 0.0f, 1.0f)) + _791;
          _851 = (((((_819 * 0.30530601739883423f) + 0.682171106338501f) * _819) + 0.012522878125309944f) * _819);
          _852 = (((((_820 * 0.30530601739883423f) + 0.682171106338501f) * _820) + 0.012522878125309944f) * _820);
          _853 = (((((_821 * 0.30530601739883423f) + 0.682171106338501f) * _821) + 0.012522878125309944f) * _821);
        } else {
          _851 = (((_567 * (VREffectsCBuffer_112.x + -1.0f)) + 1.0f) * _557);
          _852 = (((_567 * (VREffectsCBuffer_112.y + -1.0f)) + 1.0f) * _558);
          _853 = (((_567 * (VREffectsCBuffer_112.z + -1.0f)) + 1.0f) * _559);
        }
      }
    }
  }
  _881 = _139 - VREffectsCBuffer_144.x;
  _882 = _139 - VREffectsCBuffer_144.y;
  _883 = _139 - VREffectsCBuffer_144.z;
  _884 = _139 - VREffectsCBuffer_144.w;
  _916 = VREffectsCBuffer_240.w * saturate(_881 / (VREffectsCBuffer_160.x - VREffectsCBuffer_144.x));
  _930 = ((VREffectsCBuffer_240.x - VREffectsCBuffer_224.x) * _916) + VREffectsCBuffer_224.x;
  _931 = ((VREffectsCBuffer_240.y - VREffectsCBuffer_224.y) * _916) + VREffectsCBuffer_224.y;
  _932 = ((VREffectsCBuffer_240.z - VREffectsCBuffer_224.z) * _916) + VREffectsCBuffer_224.z;
  _934 = VREffectsCBuffer_224.w * min(saturate(_881 * VREffectsCBuffer_176.x), saturate((VREffectsCBuffer_160.x - _139) * VREffectsCBuffer_192.x));
  _937 = VREffectsCBuffer_272.w * saturate(_882 / (VREffectsCBuffer_160.y - VREffectsCBuffer_144.y));
  _951 = ((VREffectsCBuffer_272.x - VREffectsCBuffer_256.x) * _937) + VREffectsCBuffer_256.x;
  _952 = ((VREffectsCBuffer_272.y - VREffectsCBuffer_256.y) * _937) + VREffectsCBuffer_256.y;
  _953 = ((VREffectsCBuffer_272.z - VREffectsCBuffer_256.z) * _937) + VREffectsCBuffer_256.z;
  _955 = VREffectsCBuffer_256.w * min(saturate(_882 * VREffectsCBuffer_176.y), saturate((VREffectsCBuffer_160.y - _139) * VREffectsCBuffer_192.y));
  _958 = VREffectsCBuffer_304.w * saturate(_883 / (VREffectsCBuffer_160.z - VREffectsCBuffer_144.z));
  _972 = ((VREffectsCBuffer_304.x - VREffectsCBuffer_288.x) * _958) + VREffectsCBuffer_288.x;
  _973 = ((VREffectsCBuffer_304.y - VREffectsCBuffer_288.y) * _958) + VREffectsCBuffer_288.y;
  _974 = ((VREffectsCBuffer_304.z - VREffectsCBuffer_288.z) * _958) + VREffectsCBuffer_288.z;
  _976 = VREffectsCBuffer_288.w * min(saturate(_883 * VREffectsCBuffer_176.z), saturate((VREffectsCBuffer_160.z - _139) * VREffectsCBuffer_192.z));
  _979 = VREffectsCBuffer_336.w * saturate(_884 / (VREffectsCBuffer_160.w - VREffectsCBuffer_144.w));
  _993 = ((VREffectsCBuffer_336.x - VREffectsCBuffer_320.x) * _979) + VREffectsCBuffer_320.x;
  _994 = ((VREffectsCBuffer_336.y - VREffectsCBuffer_320.y) * _979) + VREffectsCBuffer_320.y;
  _995 = ((VREffectsCBuffer_336.z - VREffectsCBuffer_320.z) * _979) + VREffectsCBuffer_320.z;
  _997 = VREffectsCBuffer_320.w * min(saturate(_884 * VREffectsCBuffer_176.w), saturate((VREffectsCBuffer_160.w - _139) * VREffectsCBuffer_192.w));
  [branch]
  if (VREffectsCBuffer_208.x < 0.5f) {
    _1283 = (lerp(_851, _930, _934));
    _1284 = (lerp(_852, _931, _934));
    _1285 = (lerp(_853, _932, _934));
  } else {
    if (VREffectsCBuffer_208.x < 1.5f) {
      _1283 = ((_930 * _934) + _851);
      _1284 = ((_931 * _934) + _852);
      _1285 = ((_932 * _934) + _853);
    } else {
      if (VREffectsCBuffer_208.x < 2.5f) {
        _1047 = select((_851 > 1.0f), _851, saturate((exp2(log2(abs(_851)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1048 = select((_852 > 1.0f), _852, saturate((exp2(log2(abs(_852)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1049 = select((_853 > 1.0f), _853, saturate((exp2(log2(abs(_853)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1080 = (select((_930 > 1.0f), _930, saturate((exp2(log2(abs(_930)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _934;
        _1081 = (select((_931 > 1.0f), _931, saturate((exp2(log2(abs(_931)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _934;
        _1082 = (select((_932 > 1.0f), _932, saturate((exp2(log2(abs(_932)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _934;
        _1086 = (_1080 + 0.5f) * 2.0f;
        _1087 = (_1081 + 0.5f) * 2.0f;
        _1088 = (_1082 + 0.5f) * 2.0f;
        _1096 = (lerp(_1086, 1.0f, _1047)) * _1047;
        _1098 = (lerp(_1087, 1.0f, _1048)) * _1048;
        _1100 = (lerp(_1088, 1.0f, _1049)) * _1049;
        _1134 = (((((_1086 + -1.0f) * sqrt(_1047)) + ((_1047 * 2.0f) * (0.5f - _1080))) - _1096) * select((_1047 < 0.5f), 0.0f, 1.0f)) + _1096;
        _1135 = (((((_1087 + -1.0f) * sqrt(_1048)) + ((_1048 * 2.0f) * (0.5f - _1081))) - _1098) * select((_1048 < 0.5f), 0.0f, 1.0f)) + _1098;
        _1136 = (((((_1088 + -1.0f) * sqrt(_1049)) + ((_1049 * 2.0f) * (0.5f - _1082))) - _1100) * select((_1049 < 0.5f), 0.0f, 1.0f)) + _1100;
        _1283 = (((((_1134 * 0.30530601739883423f) + 0.682171106338501f) * _1134) + 0.012522878125309944f) * _1134);
        _1284 = (((((_1135 * 0.30530601739883423f) + 0.682171106338501f) * _1135) + 0.012522878125309944f) * _1135);
        _1285 = (((((_1136 * 0.30530601739883423f) + 0.682171106338501f) * _1136) + 0.012522878125309944f) * _1136);
      } else {
        if (VREffectsCBuffer_208.x < 3.5f) {
          _1179 = select((_851 > 1.0f), _851, saturate((exp2(log2(abs(_851)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1180 = select((_852 > 1.0f), _852, saturate((exp2(log2(abs(_852)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1181 = select((_853 > 1.0f), _853, saturate((exp2(log2(abs(_853)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1212 = (select((_930 > 1.0f), _930, saturate((exp2(log2(abs(_930)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _934;
          _1213 = (select((_931 > 1.0f), _931, saturate((exp2(log2(abs(_931)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _934;
          _1214 = (select((_932 > 1.0f), _932, saturate((exp2(log2(abs(_932)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _934;
          _1221 = (_1179 * 2.0f) * (_1212 + 0.5f);
          _1222 = (_1180 * 2.0f) * (_1213 + 0.5f);
          _1223 = (_1181 * 2.0f) * (_1214 + 0.5f);
          _1251 = (((1.0f - (((1.0f - _1179) * 2.0f) * (0.5f - _1212))) - _1221) * select((_1179 < 0.5f), 0.0f, 1.0f)) + _1221;
          _1252 = (((1.0f - (((1.0f - _1180) * 2.0f) * (0.5f - _1213))) - _1222) * select((_1180 < 0.5f), 0.0f, 1.0f)) + _1222;
          _1253 = (((1.0f - (((1.0f - _1181) * 2.0f) * (0.5f - _1214))) - _1223) * select((_1181 < 0.5f), 0.0f, 1.0f)) + _1223;
          _1283 = (((((_1251 * 0.30530601739883423f) + 0.682171106338501f) * _1251) + 0.012522878125309944f) * _1251);
          _1284 = (((((_1252 * 0.30530601739883423f) + 0.682171106338501f) * _1252) + 0.012522878125309944f) * _1252);
          _1285 = (((((_1253 * 0.30530601739883423f) + 0.682171106338501f) * _1253) + 0.012522878125309944f) * _1253);
        } else {
          _1283 = ((((_930 + -1.0f) * _934) + 1.0f) * _851);
          _1284 = ((((_931 + -1.0f) * _934) + 1.0f) * _852);
          _1285 = ((((_932 + -1.0f) * _934) + 1.0f) * _853);
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.y < 0.5f) {
    _1570 = (lerp(_1283, _951, _955));
    _1571 = (lerp(_1284, _952, _955));
    _1572 = (lerp(_1285, _953, _955));
  } else {
    if (VREffectsCBuffer_208.y < 1.5f) {
      _1570 = (_1283 + (_951 * _955));
      _1571 = (_1284 + (_952 * _955));
      _1572 = (_1285 + (_953 * _955));
    } else {
      if (VREffectsCBuffer_208.y < 2.5f) {
        _1334 = select((_1283 > 1.0f), _1283, saturate((exp2(log2(abs(_1283)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1335 = select((_1284 > 1.0f), _1284, saturate((exp2(log2(abs(_1284)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1336 = select((_1285 > 1.0f), _1285, saturate((exp2(log2(abs(_1285)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1367 = (select((_951 > 1.0f), _951, saturate((exp2(log2(abs(_951)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _955;
        _1368 = (select((_952 > 1.0f), _952, saturate((exp2(log2(abs(_952)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _955;
        _1369 = (select((_953 > 1.0f), _953, saturate((exp2(log2(abs(_953)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _955;
        _1373 = (_1367 + 0.5f) * 2.0f;
        _1374 = (_1368 + 0.5f) * 2.0f;
        _1375 = (_1369 + 0.5f) * 2.0f;
        _1383 = (lerp(_1373, 1.0f, _1334)) * _1334;
        _1385 = (lerp(_1374, 1.0f, _1335)) * _1335;
        _1387 = (lerp(_1375, 1.0f, _1336)) * _1336;
        _1421 = (((((_1373 + -1.0f) * sqrt(_1334)) + ((_1334 * 2.0f) * (0.5f - _1367))) - _1383) * select((_1334 < 0.5f), 0.0f, 1.0f)) + _1383;
        _1422 = (((((_1374 + -1.0f) * sqrt(_1335)) + ((_1335 * 2.0f) * (0.5f - _1368))) - _1385) * select((_1335 < 0.5f), 0.0f, 1.0f)) + _1385;
        _1423 = (((((_1375 + -1.0f) * sqrt(_1336)) + ((_1336 * 2.0f) * (0.5f - _1369))) - _1387) * select((_1336 < 0.5f), 0.0f, 1.0f)) + _1387;
        _1570 = (((((_1421 * 0.30530601739883423f) + 0.682171106338501f) * _1421) + 0.012522878125309944f) * _1421);
        _1571 = (((((_1422 * 0.30530601739883423f) + 0.682171106338501f) * _1422) + 0.012522878125309944f) * _1422);
        _1572 = (((((_1423 * 0.30530601739883423f) + 0.682171106338501f) * _1423) + 0.012522878125309944f) * _1423);
      } else {
        if (VREffectsCBuffer_208.y < 3.5f) {
          _1466 = select((_1283 > 1.0f), _1283, saturate((exp2(log2(abs(_1283)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1467 = select((_1284 > 1.0f), _1284, saturate((exp2(log2(abs(_1284)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1468 = select((_1285 > 1.0f), _1285, saturate((exp2(log2(abs(_1285)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1499 = (select((_951 > 1.0f), _951, saturate((exp2(log2(abs(_951)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _955;
          _1500 = (select((_952 > 1.0f), _952, saturate((exp2(log2(abs(_952)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _955;
          _1501 = (select((_953 > 1.0f), _953, saturate((exp2(log2(abs(_953)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _955;
          _1508 = (_1466 * 2.0f) * (_1499 + 0.5f);
          _1509 = (_1467 * 2.0f) * (_1500 + 0.5f);
          _1510 = (_1468 * 2.0f) * (_1501 + 0.5f);
          _1538 = (((1.0f - (((1.0f - _1466) * 2.0f) * (0.5f - _1499))) - _1508) * select((_1466 < 0.5f), 0.0f, 1.0f)) + _1508;
          _1539 = (((1.0f - (((1.0f - _1467) * 2.0f) * (0.5f - _1500))) - _1509) * select((_1467 < 0.5f), 0.0f, 1.0f)) + _1509;
          _1540 = (((1.0f - (((1.0f - _1468) * 2.0f) * (0.5f - _1501))) - _1510) * select((_1468 < 0.5f), 0.0f, 1.0f)) + _1510;
          _1570 = (((((_1538 * 0.30530601739883423f) + 0.682171106338501f) * _1538) + 0.012522878125309944f) * _1538);
          _1571 = (((((_1539 * 0.30530601739883423f) + 0.682171106338501f) * _1539) + 0.012522878125309944f) * _1539);
          _1572 = (((((_1540 * 0.30530601739883423f) + 0.682171106338501f) * _1540) + 0.012522878125309944f) * _1540);
        } else {
          _1570 = (_1283 * (((_951 + -1.0f) * _955) + 1.0f));
          _1571 = (_1284 * (((_952 + -1.0f) * _955) + 1.0f));
          _1572 = (_1285 * (((_953 + -1.0f) * _955) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.z < 0.5f) {
    _1857 = (lerp(_1570, _972, _976));
    _1858 = (lerp(_1571, _973, _976));
    _1859 = (lerp(_1572, _974, _976));
  } else {
    if (VREffectsCBuffer_208.z < 1.5f) {
      _1857 = (_1570 + (_972 * _976));
      _1858 = (_1571 + (_973 * _976));
      _1859 = (_1572 + (_974 * _976));
    } else {
      if (VREffectsCBuffer_208.z < 2.5f) {
        _1621 = select((_1570 > 1.0f), _1570, saturate((exp2(log2(abs(_1570)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1622 = select((_1571 > 1.0f), _1571, saturate((exp2(log2(abs(_1571)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1623 = select((_1572 > 1.0f), _1572, saturate((exp2(log2(abs(_1572)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1654 = (select((_972 > 1.0f), _972, saturate((exp2(log2(abs(_972)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _976;
        _1655 = (select((_973 > 1.0f), _973, saturate((exp2(log2(abs(_973)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _976;
        _1656 = (select((_974 > 1.0f), _974, saturate((exp2(log2(abs(_974)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _976;
        _1660 = (_1654 + 0.5f) * 2.0f;
        _1661 = (_1655 + 0.5f) * 2.0f;
        _1662 = (_1656 + 0.5f) * 2.0f;
        _1670 = (lerp(_1660, 1.0f, _1621)) * _1621;
        _1672 = (lerp(_1661, 1.0f, _1622)) * _1622;
        _1674 = (lerp(_1662, 1.0f, _1623)) * _1623;
        _1708 = (((((_1660 + -1.0f) * sqrt(_1621)) + ((_1621 * 2.0f) * (0.5f - _1654))) - _1670) * select((_1621 < 0.5f), 0.0f, 1.0f)) + _1670;
        _1709 = (((((_1661 + -1.0f) * sqrt(_1622)) + ((_1622 * 2.0f) * (0.5f - _1655))) - _1672) * select((_1622 < 0.5f), 0.0f, 1.0f)) + _1672;
        _1710 = (((((_1662 + -1.0f) * sqrt(_1623)) + ((_1623 * 2.0f) * (0.5f - _1656))) - _1674) * select((_1623 < 0.5f), 0.0f, 1.0f)) + _1674;
        _1857 = (((((_1708 * 0.30530601739883423f) + 0.682171106338501f) * _1708) + 0.012522878125309944f) * _1708);
        _1858 = (((((_1709 * 0.30530601739883423f) + 0.682171106338501f) * _1709) + 0.012522878125309944f) * _1709);
        _1859 = (((((_1710 * 0.30530601739883423f) + 0.682171106338501f) * _1710) + 0.012522878125309944f) * _1710);
      } else {
        if (VREffectsCBuffer_208.z < 3.5f) {
          _1753 = select((_1570 > 1.0f), _1570, saturate((exp2(log2(abs(_1570)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1754 = select((_1571 > 1.0f), _1571, saturate((exp2(log2(abs(_1571)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1755 = select((_1572 > 1.0f), _1572, saturate((exp2(log2(abs(_1572)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1786 = (select((_972 > 1.0f), _972, saturate((exp2(log2(abs(_972)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _976;
          _1787 = (select((_973 > 1.0f), _973, saturate((exp2(log2(abs(_973)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _976;
          _1788 = (select((_974 > 1.0f), _974, saturate((exp2(log2(abs(_974)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _976;
          _1795 = (_1753 * 2.0f) * (_1786 + 0.5f);
          _1796 = (_1754 * 2.0f) * (_1787 + 0.5f);
          _1797 = (_1755 * 2.0f) * (_1788 + 0.5f);
          _1825 = (((1.0f - (((1.0f - _1753) * 2.0f) * (0.5f - _1786))) - _1795) * select((_1753 < 0.5f), 0.0f, 1.0f)) + _1795;
          _1826 = (((1.0f - (((1.0f - _1754) * 2.0f) * (0.5f - _1787))) - _1796) * select((_1754 < 0.5f), 0.0f, 1.0f)) + _1796;
          _1827 = (((1.0f - (((1.0f - _1755) * 2.0f) * (0.5f - _1788))) - _1797) * select((_1755 < 0.5f), 0.0f, 1.0f)) + _1797;
          _1857 = (((((_1825 * 0.30530601739883423f) + 0.682171106338501f) * _1825) + 0.012522878125309944f) * _1825);
          _1858 = (((((_1826 * 0.30530601739883423f) + 0.682171106338501f) * _1826) + 0.012522878125309944f) * _1826);
          _1859 = (((((_1827 * 0.30530601739883423f) + 0.682171106338501f) * _1827) + 0.012522878125309944f) * _1827);
        } else {
          _1857 = (_1570 * (((_972 + -1.0f) * _976) + 1.0f));
          _1858 = (_1571 * (((_973 + -1.0f) * _976) + 1.0f));
          _1859 = (_1572 * (((_974 + -1.0f) * _976) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.w < 0.5f) {
    _2144 = (lerp(_1857, _993, _997));
    _2145 = (lerp(_1858, _994, _997));
    _2146 = (lerp(_1859, _995, _997));
  } else {
    if (VREffectsCBuffer_208.w < 1.5f) {
      _2144 = (_1857 + (_993 * _997));
      _2145 = (_1858 + (_994 * _997));
      _2146 = (_1859 + (_995 * _997));
    } else {
      if (VREffectsCBuffer_208.w < 2.5f) {
        _1908 = select((_1857 > 1.0f), _1857, saturate((exp2(log2(abs(_1857)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1909 = select((_1858 > 1.0f), _1858, saturate((exp2(log2(abs(_1858)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1910 = select((_1859 > 1.0f), _1859, saturate((exp2(log2(abs(_1859)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1941 = (select((_993 > 1.0f), _993, saturate((exp2(log2(abs(_993)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _997;
        _1942 = (select((_994 > 1.0f), _994, saturate((exp2(log2(abs(_994)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _997;
        _1943 = (select((_995 > 1.0f), _995, saturate((exp2(log2(abs(_995)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _997;
        _1947 = (_1941 + 0.5f) * 2.0f;
        _1948 = (_1942 + 0.5f) * 2.0f;
        _1949 = (_1943 + 0.5f) * 2.0f;
        _1957 = (lerp(_1947, 1.0f, _1908)) * _1908;
        _1959 = (lerp(_1948, 1.0f, _1909)) * _1909;
        _1961 = (lerp(_1949, 1.0f, _1910)) * _1910;
        _1995 = (((((_1947 + -1.0f) * sqrt(_1908)) + ((_1908 * 2.0f) * (0.5f - _1941))) - _1957) * select((_1908 < 0.5f), 0.0f, 1.0f)) + _1957;
        _1996 = (((((_1948 + -1.0f) * sqrt(_1909)) + ((_1909 * 2.0f) * (0.5f - _1942))) - _1959) * select((_1909 < 0.5f), 0.0f, 1.0f)) + _1959;
        _1997 = (((((_1949 + -1.0f) * sqrt(_1910)) + ((_1910 * 2.0f) * (0.5f - _1943))) - _1961) * select((_1910 < 0.5f), 0.0f, 1.0f)) + _1961;
        _2144 = (((((_1995 * 0.30530601739883423f) + 0.682171106338501f) * _1995) + 0.012522878125309944f) * _1995);
        _2145 = (((((_1996 * 0.30530601739883423f) + 0.682171106338501f) * _1996) + 0.012522878125309944f) * _1996);
        _2146 = (((((_1997 * 0.30530601739883423f) + 0.682171106338501f) * _1997) + 0.012522878125309944f) * _1997);
      } else {
        if (VREffectsCBuffer_208.w < 3.5f) {
          _2040 = select((_1857 > 1.0f), _1857, saturate((exp2(log2(abs(_1857)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2041 = select((_1858 > 1.0f), _1858, saturate((exp2(log2(abs(_1858)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2042 = select((_1859 > 1.0f), _1859, saturate((exp2(log2(abs(_1859)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2073 = (select((_993 > 1.0f), _993, saturate((exp2(log2(abs(_993)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _997;
          _2074 = (select((_994 > 1.0f), _994, saturate((exp2(log2(abs(_994)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _997;
          _2075 = (select((_995 > 1.0f), _995, saturate((exp2(log2(abs(_995)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _997;
          _2082 = (_2040 * 2.0f) * (_2073 + 0.5f);
          _2083 = (_2041 * 2.0f) * (_2074 + 0.5f);
          _2084 = (_2042 * 2.0f) * (_2075 + 0.5f);
          _2112 = (((1.0f - (((1.0f - _2040) * 2.0f) * (0.5f - _2073))) - _2082) * select((_2040 < 0.5f), 0.0f, 1.0f)) + _2082;
          _2113 = (((1.0f - (((1.0f - _2041) * 2.0f) * (0.5f - _2074))) - _2083) * select((_2041 < 0.5f), 0.0f, 1.0f)) + _2083;
          _2114 = (((1.0f - (((1.0f - _2042) * 2.0f) * (0.5f - _2075))) - _2084) * select((_2042 < 0.5f), 0.0f, 1.0f)) + _2084;
          _2144 = (((((_2112 * 0.30530601739883423f) + 0.682171106338501f) * _2112) + 0.012522878125309944f) * _2112);
          _2145 = (((((_2113 * 0.30530601739883423f) + 0.682171106338501f) * _2113) + 0.012522878125309944f) * _2113);
          _2146 = (((((_2114 * 0.30530601739883423f) + 0.682171106338501f) * _2114) + 0.012522878125309944f) * _2114);
        } else {
          _2144 = (_1857 * (((_993 + -1.0f) * _997) + 1.0f));
          _2145 = (_1858 * (((_994 + -1.0f) * _997) + 1.0f));
          _2146 = (_1859 * (((_995 + -1.0f) * _997) + 1.0f));
        }
      }
    }
  }
  _2153 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.x + _26), ((VREffectsCBuffer_352.y * _29) + _47)), (Globals_976), int2(0, 0));
  _2170 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.z + _26), ((VREffectsCBuffer_352.w * _29) + _47)), (Globals_976), int2(0, 0));
  _2187 = t1.SampleBias(s1, float2((VREffectsCBuffer_368.x + _26), ((VREffectsCBuffer_368.y * _29) + _47)), (Globals_976), int2(0, 0));

  _2153.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2153.xyz), 1.0f, 0.5f);
  _2170.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2170.xyz), 1.0f, 0.5f);
  _2187.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2187.xyz), 1.0f, 0.5f);

  _2210 = (((((VREffectsCBuffer_384.x * _2153.x) - _2144) + (VREffectsCBuffer_400.x * _2170.y)) + (VREffectsCBuffer_416.x * _2187.z)) * VREffectsCBuffer_368.z) + _2144;
  _2211 = (((((VREffectsCBuffer_384.y * _2153.x) - _2145) + (VREffectsCBuffer_400.y * _2170.y)) + (VREffectsCBuffer_416.y * _2187.z)) * VREffectsCBuffer_368.z) + _2145;
  _2212 = (((((VREffectsCBuffer_384.z * _2153.x) - _2146) + (VREffectsCBuffer_400.z * _2170.y)) + (VREffectsCBuffer_416.z * _2187.z)) * VREffectsCBuffer_368.z) + _2146;
  _2218 = (((-0.0f - VREffectsCBuffer_064.y) - VREffectsCBuffer_064.y) * _21) + VREffectsCBuffer_064.y;
  if (!(VREffectsCBuffer_064.w < 0.5f)) {
    _2222 = _2218 * 0.5f;
    _2223 = _2222 + 0.5f;
    _2242 = 0.5f - _2222;
    _2246 = 1.0f - (((1.0f - _2210) * 2.0f) * _2242);
    _2247 = 1.0f - (((1.0f - _2211) * 2.0f) * _2242);
    _2248 = 1.0f - (((1.0f - _2212) * 2.0f) * _2242);
    _2262 = ((_2246 - _2210) + ((((_2210 * 2.0f) * _2223) - _2246) * select((_2210 > 0.5f), 0.0f, 1.0f)));
    _2263 = ((_2247 - _2211) + ((((_2211 * 2.0f) * _2223) - _2247) * select((_2211 > 0.5f), 0.0f, 1.0f)));
    _2264 = ((_2248 - _2212) + ((((_2212 * 2.0f) * _2223) - _2248) * select((_2212 > 0.5f), 0.0f, 1.0f)));
  } else {
    _2262 = _2218;
    _2263 = _2218;
    _2264 = _2218;
  }
  _2265 = _2262 + _2210;
  _2266 = _2263 + _2211;
  _2267 = _2264 + _2212;
  if (VREffectsCBuffer_464.w > 0.5f) {
    _2273 = int(VREffectsCBuffer_464.x);
    _2281 = int(VREffectsCBuffer_464.z);
    _2294 = t2.SampleBias(s1, float2(((float((int)(_2281 % _2273)) * (1.0f / float((int)(_2273)))) + (_26 / VREffectsCBuffer_464.x)), ((float((int)(_2281 / _2273)) * (1.0f / float((int)(int(VREffectsCBuffer_464.y))))) + (_47 / VREffectsCBuffer_464.y))), (Globals_976), int2(0, 0));
    _2307 = VREffectsCBuffer_480.w * _2294.w;
    _2308 = 1.0f - _2307;
    _2319 = ((_2308 * _2265) + ((VREffectsCBuffer_480.x * _2294.x) * _2307));
    _2320 = ((_2308 * _2266) + ((VREffectsCBuffer_480.y * _2294.y) * _2307));
    _2321 = ((_2308 * _2267) + ((VREffectsCBuffer_480.z * _2294.z) * _2307));
  } else {
    _2319 = _2265;
    _2320 = _2266;
    _2321 = _2267;
  }
  if (VREffectsCBuffer_784.x > 0.5f) {
    _2330 = _38 * (TEXCOORD.x - VREffectsCBuffer_800.x);
    _2332 = (TEXCOORD.y - VREffectsCBuffer_800.y) * 2.0f;
    _2343 = saturate(sqrt((_2330 * _2330) + (_2332 * _2332)) / (VREffectsCBuffer_800.z * sqrt((_29 * _29) + 1.0f)));
    _2352 = exp2(log2(1.0f - ((_2343 * _2343) * (3.0f - (_2343 * 2.0f)))) * VREffectsCBuffer_784.w);
    _2356 = (VREffectsCBuffer_784.y * (_2352 + -1.0f)) + 1.0f;
    _2357 = _2356 * _2319;
    _2358 = _2356 * _2320;
    _2359 = _2356 * _2321;
    _2361 = VREffectsCBuffer_784.z * _2352;
    _2390 = ((((1.0f - _2357) + (select((_2357 > 0.5f), 0.0f, 1.0f) * ((_2357 * 2.0f) + -1.0f))) * _2361) + _2357);
    _2391 = ((((1.0f - _2358) + (select((_2358 > 0.5f), 0.0f, 1.0f) * ((_2358 * 2.0f) + -1.0f))) * _2361) + _2358);
    _2392 = ((((1.0f - _2359) + (select((_2359 > 0.5f), 0.0f, 1.0f) * ((_2359 * 2.0f) + -1.0f))) * _2361) + _2359);
  } else {
    _2390 = _2319;
    _2391 = _2320;
    _2392 = _2321;
  }
  SV_Target.x = _2390;
  SV_Target.y = _2391;
  SV_Target.z = _2392;
  SV_Target.w = _VR_SourceImage0.w;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _VR_SourceImage0.xyz, SV_Target.xyz));

  return SV_Target;
}
