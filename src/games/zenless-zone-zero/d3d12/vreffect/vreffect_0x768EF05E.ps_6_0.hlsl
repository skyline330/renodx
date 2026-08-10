#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

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
  float _16;
  float _19;
  float _24;
  float _27;
  float _36;
  bool _42;
  float _45;
  float _50;
  float4 _53;
  float _63;
  float _85;
  float _87;
  float _92;
  float _93;
  float _95;
  float _97;
  float _104;
  float _105;
  float _107;
  float _121;
  float _126;
  float _127;
  float _169;
  float _170;
  float _171;
  float _181;
  float _182;
  float _183;
  float _191;
  float _475;
  float _476;
  float _477;
  float _769;
  float _770;
  float _771;
  float _1201;
  float _1202;
  float _1203;
  float _1488;
  float _1489;
  float _1490;
  float _1775;
  float _1776;
  float _1777;
  float _2062;
  float _2063;
  float _2064;
  float _2180;
  float _2181;
  float _2182;
  float _2237;
  float _2238;
  float _2239;
  float _2308;
  float _2309;
  float _2310;
  float _239;
  float _240;
  float _241;
  float _272;
  float _273;
  float _274;
  float _278;
  float _279;
  float _280;
  float _288;
  float _290;
  float _292;
  float _326;
  float _327;
  float _328;
  float _371;
  float _372;
  float _373;
  float _404;
  float _405;
  float _406;
  float _413;
  float _414;
  float _415;
  float _443;
  float _444;
  float _445;
  float _485;
  float _533;
  float _534;
  float _535;
  float _566;
  float _567;
  float _568;
  float _572;
  float _573;
  float _574;
  float _582;
  float _584;
  float _586;
  float _620;
  float _621;
  float _622;
  float _665;
  float _666;
  float _667;
  float _698;
  float _699;
  float _700;
  float _707;
  float _708;
  float _709;
  float _737;
  float _738;
  float _739;
  float _834;
  float _848;
  float _849;
  float _850;
  float _852;
  float _855;
  float _869;
  float _870;
  float _871;
  float _873;
  float _876;
  float _890;
  float _891;
  float _892;
  float _894;
  float _897;
  float _911;
  float _912;
  float _913;
  float _915;
  float _965;
  float _966;
  float _967;
  float _998;
  float _999;
  float _1000;
  float _1004;
  float _1005;
  float _1006;
  float _1014;
  float _1016;
  float _1018;
  float _1052;
  float _1053;
  float _1054;
  float _1097;
  float _1098;
  float _1099;
  float _1130;
  float _1131;
  float _1132;
  float _1139;
  float _1140;
  float _1141;
  float _1169;
  float _1170;
  float _1171;
  float _1252;
  float _1253;
  float _1254;
  float _1285;
  float _1286;
  float _1287;
  float _1291;
  float _1292;
  float _1293;
  float _1301;
  float _1303;
  float _1305;
  float _1339;
  float _1340;
  float _1341;
  float _1384;
  float _1385;
  float _1386;
  float _1417;
  float _1418;
  float _1419;
  float _1426;
  float _1427;
  float _1428;
  float _1456;
  float _1457;
  float _1458;
  float _1539;
  float _1540;
  float _1541;
  float _1572;
  float _1573;
  float _1574;
  float _1578;
  float _1579;
  float _1580;
  float _1588;
  float _1590;
  float _1592;
  float _1626;
  float _1627;
  float _1628;
  float _1671;
  float _1672;
  float _1673;
  float _1704;
  float _1705;
  float _1706;
  float _1713;
  float _1714;
  float _1715;
  float _1743;
  float _1744;
  float _1745;
  float _1826;
  float _1827;
  float _1828;
  float _1859;
  float _1860;
  float _1861;
  float _1865;
  float _1866;
  float _1867;
  float _1875;
  float _1877;
  float _1879;
  float _1913;
  float _1914;
  float _1915;
  float _1958;
  float _1959;
  float _1960;
  float _1991;
  float _1992;
  float _1993;
  float _2000;
  float _2001;
  float _2002;
  float _2030;
  float _2031;
  float _2032;
  float4 _2071;
  float4 _2088;
  float4 _2105;
  float _2128;
  float _2129;
  float _2130;
  float _2136;
  float _2140;
  float _2141;
  float _2160;
  float _2164;
  float _2165;
  float _2166;
  float _2183;
  float _2184;
  float _2185;
  int _2191;
  int _2199;
  float4 _2212;
  float _2225;
  float _2226;
  float _2248;
  float _2250;
  float _2261;
  float _2270;
  float _2274;
  float _2275;
  float _2276;
  float _2277;
  float _2279;

  _16 = fmod(((((1080.0f / (Globals_2208.y)) * TEXCOORD.y) * (Globals_2208.y)) * VREffectsCBuffer_064.x), 2.0f);
  _19 = select((_16 > 1.0f), (2.0f - _16), _16);
  _24 = (((_19 * 2.0f) + -1.0f) * VREffectsCBuffer_064.z) + TEXCOORD.x;
  _27 = (Globals_2208.w) * (Globals_2208.x);
  _36 = _27 * 2.0f;
  _42 = ((frac((((_24 + abs(VREffectsCBuffer_080.y)) * _27) - (VREffectsCBuffer_080.y * TEXCOORD.y)) / (_36 * VREffectsCBuffer_080.x)) * 2.0f) <= 1.0f);
  _45 = (select(_42, 0.9999899864196777f, -1.0f) * VREffectsCBuffer_080.z) + TEXCOORD.y;
  _50 = select(_42, select((_45 < 1.0f), 0.0f, 1.0f), select((_45 > 0.0f), 0.0f, 1.0f));

  // _53 = t0.SampleBias(s0, float2(_24, _45), (Globals_976), int2(0, 0));
  float4 _VR_SourceImage0 = renodx::draw::InvertIntermediatePass(t0.SampleBias(s0, float2(_24, _45), (Globals_976), int2(0, 0)));
  float4 untonemapped = _VR_SourceImage0;
  _VR_SourceImage0.xyz = renodx::tonemap::dice::BT709(_VR_SourceImage0.xyz, 1.0f, 0.5f);

  _63 = saturate(-0.0f - (VREffectsCBuffer_016.z * VREffectsCBuffer_016.w));
  _85 = ((VREffectsCBuffer_048.w - VREffectsCBuffer_032.w) * _63) + VREffectsCBuffer_032.w;
  _87 = select((_VR_SourceImage0.y < _VR_SourceImage0.z), 0.0f, 1.0f);
  _92 = (_87 * (_VR_SourceImage0.y - _VR_SourceImage0.z)) + _VR_SourceImage0.z;
  _93 = (_87 * (_VR_SourceImage0.z - _VR_SourceImage0.y)) + _VR_SourceImage0.y;
  _95 = 0.6666666865348816f - _87;
  _97 = select((_VR_SourceImage0.x < _92), 0.0f, 1.0f);
  _104 = (_97 * (_VR_SourceImage0.x - _92)) + _92;
  _105 = (_97 * (_92 - _VR_SourceImage0.x)) + _VR_SourceImage0.x;
  _107 = _104 - min(_105, _93);
  _121 = VREffectsCBuffer_000.x + abs((((_105 - _93) / ((_107 * 6.0f) + 9.999999747378752e-05f)) + _95) + (_97 * ((_87 + -1.0f) - _95)));
  _126 = saturate((VREffectsCBuffer_000.y + (_107 / (_104 + 9.999999747378752e-05f))) * (1.0f - _85));
  _127 = saturate(VREffectsCBuffer_000.z + _104);
  _169 = ((((((saturate(abs((frac(_121 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _126) + 1.0f) * _127) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _170 = ((((((saturate(abs((frac(_121 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _126) + 1.0f) * _127) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _171 = ((((((saturate(abs((frac(_121 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _126) + 1.0f) * _127) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _181 = (((_169 * (lerp(VREffectsCBuffer_032.x, VREffectsCBuffer_048.x, _63))) - _169) * _85) + _169;
  _182 = (((_170 * (lerp(VREffectsCBuffer_032.y, VREffectsCBuffer_048.y, _63))) - _170) * _85) + _170;
  _183 = (((_171 * (lerp(VREffectsCBuffer_032.z, VREffectsCBuffer_048.z, _63))) - _171) * _85) + _171;
  _191 = VREffectsCBuffer_096.w * _50;
  [branch]
  if (VREffectsCBuffer_128.x < 0.5f) {
    _475 = (lerp(_181, VREffectsCBuffer_096.x, _191));
    _476 = (lerp(_182, VREffectsCBuffer_096.y, _191));
    _477 = (lerp(_183, VREffectsCBuffer_096.z, _191));
  } else {
    if (VREffectsCBuffer_128.x < 1.5f) {
      _475 = (_181 + (_191 * VREffectsCBuffer_096.x));
      _476 = (_182 + (_191 * VREffectsCBuffer_096.y));
      _477 = (_183 + (_191 * VREffectsCBuffer_096.z));
    } else {
      if (VREffectsCBuffer_128.x < 2.5f) {
        _239 = select((_181 > 1.0f), _181, saturate((exp2(log2(abs(_181)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _240 = select((_182 > 1.0f), _182, saturate((exp2(log2(abs(_182)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _241 = select((_183 > 1.0f), _183, saturate((exp2(log2(abs(_183)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _272 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _191;
        _273 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _191;
        _274 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _191;
        _278 = (_272 + 0.5f) * 2.0f;
        _279 = (_273 + 0.5f) * 2.0f;
        _280 = (_274 + 0.5f) * 2.0f;
        _288 = (lerp(_278, 1.0f, _239)) * _239;
        _290 = (lerp(_279, 1.0f, _240)) * _240;
        _292 = (lerp(_280, 1.0f, _241)) * _241;
        _326 = (((((_278 + -1.0f) * sqrt(_239)) + ((_239 * 2.0f) * (0.5f - _272))) - _288) * select((_239 < 0.5f), 0.0f, 1.0f)) + _288;
        _327 = (((((_279 + -1.0f) * sqrt(_240)) + ((_240 * 2.0f) * (0.5f - _273))) - _290) * select((_240 < 0.5f), 0.0f, 1.0f)) + _290;
        _328 = (((((_280 + -1.0f) * sqrt(_241)) + ((_241 * 2.0f) * (0.5f - _274))) - _292) * select((_241 < 0.5f), 0.0f, 1.0f)) + _292;
        _475 = (((((_326 * 0.30530601739883423f) + 0.682171106338501f) * _326) + 0.012522878125309944f) * _326);
        _476 = (((((_327 * 0.30530601739883423f) + 0.682171106338501f) * _327) + 0.012522878125309944f) * _327);
        _477 = (((((_328 * 0.30530601739883423f) + 0.682171106338501f) * _328) + 0.012522878125309944f) * _328);
      } else {
        if (VREffectsCBuffer_128.x < 3.5f) {
          _371 = select((_181 > 1.0f), _181, saturate((exp2(log2(abs(_181)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _372 = select((_182 > 1.0f), _182, saturate((exp2(log2(abs(_182)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _373 = select((_183 > 1.0f), _183, saturate((exp2(log2(abs(_183)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _404 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _191;
          _405 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _191;
          _406 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _191;
          _413 = (_371 * 2.0f) * (_404 + 0.5f);
          _414 = (_372 * 2.0f) * (_405 + 0.5f);
          _415 = (_373 * 2.0f) * (_406 + 0.5f);
          _443 = (((1.0f - (((1.0f - _371) * 2.0f) * (0.5f - _404))) - _413) * select((_371 < 0.5f), 0.0f, 1.0f)) + _413;
          _444 = (((1.0f - (((1.0f - _372) * 2.0f) * (0.5f - _405))) - _414) * select((_372 < 0.5f), 0.0f, 1.0f)) + _414;
          _445 = (((1.0f - (((1.0f - _373) * 2.0f) * (0.5f - _406))) - _415) * select((_373 < 0.5f), 0.0f, 1.0f)) + _415;
          _475 = (((((_443 * 0.30530601739883423f) + 0.682171106338501f) * _443) + 0.012522878125309944f) * _443);
          _476 = (((((_444 * 0.30530601739883423f) + 0.682171106338501f) * _444) + 0.012522878125309944f) * _444);
          _477 = (((((_445 * 0.30530601739883423f) + 0.682171106338501f) * _445) + 0.012522878125309944f) * _445);
        } else {
          _475 = (_181 * ((_191 * (VREffectsCBuffer_096.x + -1.0f)) + 1.0f));
          _476 = (_182 * ((_191 * (VREffectsCBuffer_096.y + -1.0f)) + 1.0f));
          _477 = (_183 * ((_191 * (VREffectsCBuffer_096.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  _485 = VREffectsCBuffer_112.w * (1.0f - _50);
  [branch]
  if (VREffectsCBuffer_128.y < 0.5f) {
    _769 = ((_485 * (VREffectsCBuffer_112.x - _475)) + _475);
    _770 = ((_485 * (VREffectsCBuffer_112.y - _476)) + _476);
    _771 = ((_485 * (VREffectsCBuffer_112.z - _477)) + _477);
  } else {
    if (VREffectsCBuffer_128.y < 1.5f) {
      _769 = ((_485 * VREffectsCBuffer_112.x) + _475);
      _770 = ((_485 * VREffectsCBuffer_112.y) + _476);
      _771 = ((_485 * VREffectsCBuffer_112.z) + _477);
    } else {
      if (VREffectsCBuffer_128.y < 2.5f) {
        _533 = select((_475 > 1.0f), _475, saturate((exp2(log2(abs(_475)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _534 = select((_476 > 1.0f), _476, saturate((exp2(log2(abs(_476)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _535 = select((_477 > 1.0f), _477, saturate((exp2(log2(abs(_477)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _566 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _485;
        _567 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _485;
        _568 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _485;
        _572 = (_566 + 0.5f) * 2.0f;
        _573 = (_567 + 0.5f) * 2.0f;
        _574 = (_568 + 0.5f) * 2.0f;
        _582 = (lerp(_572, 1.0f, _533)) * _533;
        _584 = (lerp(_573, 1.0f, _534)) * _534;
        _586 = (lerp(_574, 1.0f, _535)) * _535;
        _620 = (((((_572 + -1.0f) * sqrt(_533)) + ((_533 * 2.0f) * (0.5f - _566))) - _582) * select((_533 < 0.5f), 0.0f, 1.0f)) + _582;
        _621 = (((((_573 + -1.0f) * sqrt(_534)) + ((_534 * 2.0f) * (0.5f - _567))) - _584) * select((_534 < 0.5f), 0.0f, 1.0f)) + _584;
        _622 = (((((_574 + -1.0f) * sqrt(_535)) + ((_535 * 2.0f) * (0.5f - _568))) - _586) * select((_535 < 0.5f), 0.0f, 1.0f)) + _586;
        _769 = (((((_620 * 0.30530601739883423f) + 0.682171106338501f) * _620) + 0.012522878125309944f) * _620);
        _770 = (((((_621 * 0.30530601739883423f) + 0.682171106338501f) * _621) + 0.012522878125309944f) * _621);
        _771 = (((((_622 * 0.30530601739883423f) + 0.682171106338501f) * _622) + 0.012522878125309944f) * _622);
      } else {
        if (VREffectsCBuffer_128.y < 3.5f) {
          _665 = select((_475 > 1.0f), _475, saturate((exp2(log2(abs(_475)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _666 = select((_476 > 1.0f), _476, saturate((exp2(log2(abs(_476)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _667 = select((_477 > 1.0f), _477, saturate((exp2(log2(abs(_477)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _698 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _485;
          _699 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _485;
          _700 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _485;
          _707 = (_665 * 2.0f) * (_698 + 0.5f);
          _708 = (_666 * 2.0f) * (_699 + 0.5f);
          _709 = (_667 * 2.0f) * (_700 + 0.5f);
          _737 = (((1.0f - (((1.0f - _665) * 2.0f) * (0.5f - _698))) - _707) * select((_665 < 0.5f), 0.0f, 1.0f)) + _707;
          _738 = (((1.0f - (((1.0f - _666) * 2.0f) * (0.5f - _699))) - _708) * select((_666 < 0.5f), 0.0f, 1.0f)) + _708;
          _739 = (((1.0f - (((1.0f - _667) * 2.0f) * (0.5f - _700))) - _709) * select((_667 < 0.5f), 0.0f, 1.0f)) + _709;
          _769 = (((((_737 * 0.30530601739883423f) + 0.682171106338501f) * _737) + 0.012522878125309944f) * _737);
          _770 = (((((_738 * 0.30530601739883423f) + 0.682171106338501f) * _738) + 0.012522878125309944f) * _738);
          _771 = (((((_739 * 0.30530601739883423f) + 0.682171106338501f) * _739) + 0.012522878125309944f) * _739);
        } else {
          _769 = (((_485 * (VREffectsCBuffer_112.x + -1.0f)) + 1.0f) * _475);
          _770 = (((_485 * (VREffectsCBuffer_112.y + -1.0f)) + 1.0f) * _476);
          _771 = (((_485 * (VREffectsCBuffer_112.z + -1.0f)) + 1.0f) * _477);
        }
      }
    }
  }
  _834 = VREffectsCBuffer_240.w * saturate((-0.0f - VREffectsCBuffer_144.x) / (VREffectsCBuffer_160.x - VREffectsCBuffer_144.x));
  _848 = ((VREffectsCBuffer_240.x - VREffectsCBuffer_224.x) * _834) + VREffectsCBuffer_224.x;
  _849 = ((VREffectsCBuffer_240.y - VREffectsCBuffer_224.y) * _834) + VREffectsCBuffer_224.y;
  _850 = ((VREffectsCBuffer_240.z - VREffectsCBuffer_224.z) * _834) + VREffectsCBuffer_224.z;
  _852 = VREffectsCBuffer_224.w * min(saturate(-0.0f - (VREffectsCBuffer_144.x * VREffectsCBuffer_176.x)), saturate(VREffectsCBuffer_192.x * VREffectsCBuffer_160.x));
  _855 = VREffectsCBuffer_272.w * saturate((-0.0f - VREffectsCBuffer_144.y) / (VREffectsCBuffer_160.y - VREffectsCBuffer_144.y));
  _869 = ((VREffectsCBuffer_272.x - VREffectsCBuffer_256.x) * _855) + VREffectsCBuffer_256.x;
  _870 = ((VREffectsCBuffer_272.y - VREffectsCBuffer_256.y) * _855) + VREffectsCBuffer_256.y;
  _871 = ((VREffectsCBuffer_272.z - VREffectsCBuffer_256.z) * _855) + VREffectsCBuffer_256.z;
  _873 = VREffectsCBuffer_256.w * min(saturate(-0.0f - (VREffectsCBuffer_144.y * VREffectsCBuffer_176.y)), saturate(VREffectsCBuffer_192.y * VREffectsCBuffer_160.y));
  _876 = VREffectsCBuffer_304.w * saturate((-0.0f - VREffectsCBuffer_144.z) / (VREffectsCBuffer_160.z - VREffectsCBuffer_144.z));
  _890 = ((VREffectsCBuffer_304.x - VREffectsCBuffer_288.x) * _876) + VREffectsCBuffer_288.x;
  _891 = ((VREffectsCBuffer_304.y - VREffectsCBuffer_288.y) * _876) + VREffectsCBuffer_288.y;
  _892 = ((VREffectsCBuffer_304.z - VREffectsCBuffer_288.z) * _876) + VREffectsCBuffer_288.z;
  _894 = VREffectsCBuffer_288.w * min(saturate(-0.0f - (VREffectsCBuffer_144.z * VREffectsCBuffer_176.z)), saturate(VREffectsCBuffer_192.z * VREffectsCBuffer_160.z));
  _897 = VREffectsCBuffer_336.w * saturate((-0.0f - VREffectsCBuffer_144.w) / (VREffectsCBuffer_160.w - VREffectsCBuffer_144.w));
  _911 = ((VREffectsCBuffer_336.x - VREffectsCBuffer_320.x) * _897) + VREffectsCBuffer_320.x;
  _912 = ((VREffectsCBuffer_336.y - VREffectsCBuffer_320.y) * _897) + VREffectsCBuffer_320.y;
  _913 = ((VREffectsCBuffer_336.z - VREffectsCBuffer_320.z) * _897) + VREffectsCBuffer_320.z;
  _915 = VREffectsCBuffer_320.w * min(saturate(-0.0f - (VREffectsCBuffer_144.w * VREffectsCBuffer_176.w)), saturate(VREffectsCBuffer_192.w * VREffectsCBuffer_160.w));
  [branch]
  if (VREffectsCBuffer_208.x < 0.5f) {
    _1201 = (lerp(_769, _848, _852));
    _1202 = (lerp(_770, _849, _852));
    _1203 = (lerp(_771, _850, _852));
  } else {
    if (VREffectsCBuffer_208.x < 1.5f) {
      _1201 = ((_848 * _852) + _769);
      _1202 = ((_849 * _852) + _770);
      _1203 = ((_850 * _852) + _771);
    } else {
      if (VREffectsCBuffer_208.x < 2.5f) {
        _965 = select((_769 > 1.0f), _769, saturate((exp2(log2(abs(_769)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _966 = select((_770 > 1.0f), _770, saturate((exp2(log2(abs(_770)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _967 = select((_771 > 1.0f), _771, saturate((exp2(log2(abs(_771)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _998 = (select((_848 > 1.0f), _848, saturate((exp2(log2(abs(_848)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _852;
        _999 = (select((_849 > 1.0f), _849, saturate((exp2(log2(abs(_849)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _852;
        _1000 = (select((_850 > 1.0f), _850, saturate((exp2(log2(abs(_850)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _852;
        _1004 = (_998 + 0.5f) * 2.0f;
        _1005 = (_999 + 0.5f) * 2.0f;
        _1006 = (_1000 + 0.5f) * 2.0f;
        _1014 = (lerp(_1004, 1.0f, _965)) * _965;
        _1016 = (lerp(_1005, 1.0f, _966)) * _966;
        _1018 = (lerp(_1006, 1.0f, _967)) * _967;
        _1052 = (((((_1004 + -1.0f) * sqrt(_965)) + ((_965 * 2.0f) * (0.5f - _998))) - _1014) * select((_965 < 0.5f), 0.0f, 1.0f)) + _1014;
        _1053 = (((((_1005 + -1.0f) * sqrt(_966)) + ((_966 * 2.0f) * (0.5f - _999))) - _1016) * select((_966 < 0.5f), 0.0f, 1.0f)) + _1016;
        _1054 = (((((_1006 + -1.0f) * sqrt(_967)) + ((_967 * 2.0f) * (0.5f - _1000))) - _1018) * select((_967 < 0.5f), 0.0f, 1.0f)) + _1018;
        _1201 = (((((_1052 * 0.30530601739883423f) + 0.682171106338501f) * _1052) + 0.012522878125309944f) * _1052);
        _1202 = (((((_1053 * 0.30530601739883423f) + 0.682171106338501f) * _1053) + 0.012522878125309944f) * _1053);
        _1203 = (((((_1054 * 0.30530601739883423f) + 0.682171106338501f) * _1054) + 0.012522878125309944f) * _1054);
      } else {
        if (VREffectsCBuffer_208.x < 3.5f) {
          _1097 = select((_769 > 1.0f), _769, saturate((exp2(log2(abs(_769)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1098 = select((_770 > 1.0f), _770, saturate((exp2(log2(abs(_770)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1099 = select((_771 > 1.0f), _771, saturate((exp2(log2(abs(_771)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1130 = (select((_848 > 1.0f), _848, saturate((exp2(log2(abs(_848)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _852;
          _1131 = (select((_849 > 1.0f), _849, saturate((exp2(log2(abs(_849)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _852;
          _1132 = (select((_850 > 1.0f), _850, saturate((exp2(log2(abs(_850)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _852;
          _1139 = (_1097 * 2.0f) * (_1130 + 0.5f);
          _1140 = (_1098 * 2.0f) * (_1131 + 0.5f);
          _1141 = (_1099 * 2.0f) * (_1132 + 0.5f);
          _1169 = (((1.0f - (((1.0f - _1097) * 2.0f) * (0.5f - _1130))) - _1139) * select((_1097 < 0.5f), 0.0f, 1.0f)) + _1139;
          _1170 = (((1.0f - (((1.0f - _1098) * 2.0f) * (0.5f - _1131))) - _1140) * select((_1098 < 0.5f), 0.0f, 1.0f)) + _1140;
          _1171 = (((1.0f - (((1.0f - _1099) * 2.0f) * (0.5f - _1132))) - _1141) * select((_1099 < 0.5f), 0.0f, 1.0f)) + _1141;
          _1201 = (((((_1169 * 0.30530601739883423f) + 0.682171106338501f) * _1169) + 0.012522878125309944f) * _1169);
          _1202 = (((((_1170 * 0.30530601739883423f) + 0.682171106338501f) * _1170) + 0.012522878125309944f) * _1170);
          _1203 = (((((_1171 * 0.30530601739883423f) + 0.682171106338501f) * _1171) + 0.012522878125309944f) * _1171);
        } else {
          _1201 = ((((_848 + -1.0f) * _852) + 1.0f) * _769);
          _1202 = ((((_849 + -1.0f) * _852) + 1.0f) * _770);
          _1203 = ((((_850 + -1.0f) * _852) + 1.0f) * _771);
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.y < 0.5f) {
    _1488 = (lerp(_1201, _869, _873));
    _1489 = (lerp(_1202, _870, _873));
    _1490 = (lerp(_1203, _871, _873));
  } else {
    if (VREffectsCBuffer_208.y < 1.5f) {
      _1488 = (_1201 + (_869 * _873));
      _1489 = (_1202 + (_870 * _873));
      _1490 = (_1203 + (_871 * _873));
    } else {
      if (VREffectsCBuffer_208.y < 2.5f) {
        _1252 = select((_1201 > 1.0f), _1201, saturate((exp2(log2(abs(_1201)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1253 = select((_1202 > 1.0f), _1202, saturate((exp2(log2(abs(_1202)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1254 = select((_1203 > 1.0f), _1203, saturate((exp2(log2(abs(_1203)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1285 = (select((_869 > 1.0f), _869, saturate((exp2(log2(abs(_869)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _873;
        _1286 = (select((_870 > 1.0f), _870, saturate((exp2(log2(abs(_870)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _873;
        _1287 = (select((_871 > 1.0f), _871, saturate((exp2(log2(abs(_871)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _873;
        _1291 = (_1285 + 0.5f) * 2.0f;
        _1292 = (_1286 + 0.5f) * 2.0f;
        _1293 = (_1287 + 0.5f) * 2.0f;
        _1301 = (lerp(_1291, 1.0f, _1252)) * _1252;
        _1303 = (lerp(_1292, 1.0f, _1253)) * _1253;
        _1305 = (lerp(_1293, 1.0f, _1254)) * _1254;
        _1339 = (((((_1291 + -1.0f) * sqrt(_1252)) + ((_1252 * 2.0f) * (0.5f - _1285))) - _1301) * select((_1252 < 0.5f), 0.0f, 1.0f)) + _1301;
        _1340 = (((((_1292 + -1.0f) * sqrt(_1253)) + ((_1253 * 2.0f) * (0.5f - _1286))) - _1303) * select((_1253 < 0.5f), 0.0f, 1.0f)) + _1303;
        _1341 = (((((_1293 + -1.0f) * sqrt(_1254)) + ((_1254 * 2.0f) * (0.5f - _1287))) - _1305) * select((_1254 < 0.5f), 0.0f, 1.0f)) + _1305;
        _1488 = (((((_1339 * 0.30530601739883423f) + 0.682171106338501f) * _1339) + 0.012522878125309944f) * _1339);
        _1489 = (((((_1340 * 0.30530601739883423f) + 0.682171106338501f) * _1340) + 0.012522878125309944f) * _1340);
        _1490 = (((((_1341 * 0.30530601739883423f) + 0.682171106338501f) * _1341) + 0.012522878125309944f) * _1341);
      } else {
        if (VREffectsCBuffer_208.y < 3.5f) {
          _1384 = select((_1201 > 1.0f), _1201, saturate((exp2(log2(abs(_1201)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1385 = select((_1202 > 1.0f), _1202, saturate((exp2(log2(abs(_1202)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1386 = select((_1203 > 1.0f), _1203, saturate((exp2(log2(abs(_1203)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1417 = (select((_869 > 1.0f), _869, saturate((exp2(log2(abs(_869)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _873;
          _1418 = (select((_870 > 1.0f), _870, saturate((exp2(log2(abs(_870)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _873;
          _1419 = (select((_871 > 1.0f), _871, saturate((exp2(log2(abs(_871)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _873;
          _1426 = (_1384 * 2.0f) * (_1417 + 0.5f);
          _1427 = (_1385 * 2.0f) * (_1418 + 0.5f);
          _1428 = (_1386 * 2.0f) * (_1419 + 0.5f);
          _1456 = (((1.0f - (((1.0f - _1384) * 2.0f) * (0.5f - _1417))) - _1426) * select((_1384 < 0.5f), 0.0f, 1.0f)) + _1426;
          _1457 = (((1.0f - (((1.0f - _1385) * 2.0f) * (0.5f - _1418))) - _1427) * select((_1385 < 0.5f), 0.0f, 1.0f)) + _1427;
          _1458 = (((1.0f - (((1.0f - _1386) * 2.0f) * (0.5f - _1419))) - _1428) * select((_1386 < 0.5f), 0.0f, 1.0f)) + _1428;
          _1488 = (((((_1456 * 0.30530601739883423f) + 0.682171106338501f) * _1456) + 0.012522878125309944f) * _1456);
          _1489 = (((((_1457 * 0.30530601739883423f) + 0.682171106338501f) * _1457) + 0.012522878125309944f) * _1457);
          _1490 = (((((_1458 * 0.30530601739883423f) + 0.682171106338501f) * _1458) + 0.012522878125309944f) * _1458);
        } else {
          _1488 = (_1201 * (((_869 + -1.0f) * _873) + 1.0f));
          _1489 = (_1202 * (((_870 + -1.0f) * _873) + 1.0f));
          _1490 = (_1203 * (((_871 + -1.0f) * _873) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.z < 0.5f) {
    _1775 = (lerp(_1488, _890, _894));
    _1776 = (lerp(_1489, _891, _894));
    _1777 = (lerp(_1490, _892, _894));
  } else {
    if (VREffectsCBuffer_208.z < 1.5f) {
      _1775 = (_1488 + (_890 * _894));
      _1776 = (_1489 + (_891 * _894));
      _1777 = (_1490 + (_892 * _894));
    } else {
      if (VREffectsCBuffer_208.z < 2.5f) {
        _1539 = select((_1488 > 1.0f), _1488, saturate((exp2(log2(abs(_1488)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1540 = select((_1489 > 1.0f), _1489, saturate((exp2(log2(abs(_1489)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1541 = select((_1490 > 1.0f), _1490, saturate((exp2(log2(abs(_1490)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1572 = (select((_890 > 1.0f), _890, saturate((exp2(log2(abs(_890)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _894;
        _1573 = (select((_891 > 1.0f), _891, saturate((exp2(log2(abs(_891)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _894;
        _1574 = (select((_892 > 1.0f), _892, saturate((exp2(log2(abs(_892)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _894;
        _1578 = (_1572 + 0.5f) * 2.0f;
        _1579 = (_1573 + 0.5f) * 2.0f;
        _1580 = (_1574 + 0.5f) * 2.0f;
        _1588 = (lerp(_1578, 1.0f, _1539)) * _1539;
        _1590 = (lerp(_1579, 1.0f, _1540)) * _1540;
        _1592 = (lerp(_1580, 1.0f, _1541)) * _1541;
        _1626 = (((((_1578 + -1.0f) * sqrt(_1539)) + ((_1539 * 2.0f) * (0.5f - _1572))) - _1588) * select((_1539 < 0.5f), 0.0f, 1.0f)) + _1588;
        _1627 = (((((_1579 + -1.0f) * sqrt(_1540)) + ((_1540 * 2.0f) * (0.5f - _1573))) - _1590) * select((_1540 < 0.5f), 0.0f, 1.0f)) + _1590;
        _1628 = (((((_1580 + -1.0f) * sqrt(_1541)) + ((_1541 * 2.0f) * (0.5f - _1574))) - _1592) * select((_1541 < 0.5f), 0.0f, 1.0f)) + _1592;
        _1775 = (((((_1626 * 0.30530601739883423f) + 0.682171106338501f) * _1626) + 0.012522878125309944f) * _1626);
        _1776 = (((((_1627 * 0.30530601739883423f) + 0.682171106338501f) * _1627) + 0.012522878125309944f) * _1627);
        _1777 = (((((_1628 * 0.30530601739883423f) + 0.682171106338501f) * _1628) + 0.012522878125309944f) * _1628);
      } else {
        if (VREffectsCBuffer_208.z < 3.5f) {
          _1671 = select((_1488 > 1.0f), _1488, saturate((exp2(log2(abs(_1488)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1672 = select((_1489 > 1.0f), _1489, saturate((exp2(log2(abs(_1489)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1673 = select((_1490 > 1.0f), _1490, saturate((exp2(log2(abs(_1490)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1704 = (select((_890 > 1.0f), _890, saturate((exp2(log2(abs(_890)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _894;
          _1705 = (select((_891 > 1.0f), _891, saturate((exp2(log2(abs(_891)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _894;
          _1706 = (select((_892 > 1.0f), _892, saturate((exp2(log2(abs(_892)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _894;
          _1713 = (_1671 * 2.0f) * (_1704 + 0.5f);
          _1714 = (_1672 * 2.0f) * (_1705 + 0.5f);
          _1715 = (_1673 * 2.0f) * (_1706 + 0.5f);
          _1743 = (((1.0f - (((1.0f - _1671) * 2.0f) * (0.5f - _1704))) - _1713) * select((_1671 < 0.5f), 0.0f, 1.0f)) + _1713;
          _1744 = (((1.0f - (((1.0f - _1672) * 2.0f) * (0.5f - _1705))) - _1714) * select((_1672 < 0.5f), 0.0f, 1.0f)) + _1714;
          _1745 = (((1.0f - (((1.0f - _1673) * 2.0f) * (0.5f - _1706))) - _1715) * select((_1673 < 0.5f), 0.0f, 1.0f)) + _1715;
          _1775 = (((((_1743 * 0.30530601739883423f) + 0.682171106338501f) * _1743) + 0.012522878125309944f) * _1743);
          _1776 = (((((_1744 * 0.30530601739883423f) + 0.682171106338501f) * _1744) + 0.012522878125309944f) * _1744);
          _1777 = (((((_1745 * 0.30530601739883423f) + 0.682171106338501f) * _1745) + 0.012522878125309944f) * _1745);
        } else {
          _1775 = (_1488 * (((_890 + -1.0f) * _894) + 1.0f));
          _1776 = (_1489 * (((_891 + -1.0f) * _894) + 1.0f));
          _1777 = (_1490 * (((_892 + -1.0f) * _894) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.w < 0.5f) {
    _2062 = (lerp(_1775, _911, _915));
    _2063 = (lerp(_1776, _912, _915));
    _2064 = (lerp(_1777, _913, _915));
  } else {
    if (VREffectsCBuffer_208.w < 1.5f) {
      _2062 = (_1775 + (_911 * _915));
      _2063 = (_1776 + (_912 * _915));
      _2064 = (_1777 + (_913 * _915));
    } else {
      if (VREffectsCBuffer_208.w < 2.5f) {
        _1826 = select((_1775 > 1.0f), _1775, saturate((exp2(log2(abs(_1775)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1827 = select((_1776 > 1.0f), _1776, saturate((exp2(log2(abs(_1776)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1828 = select((_1777 > 1.0f), _1777, saturate((exp2(log2(abs(_1777)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1859 = (select((_911 > 1.0f), _911, saturate((exp2(log2(abs(_911)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _915;
        _1860 = (select((_912 > 1.0f), _912, saturate((exp2(log2(abs(_912)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _915;
        _1861 = (select((_913 > 1.0f), _913, saturate((exp2(log2(abs(_913)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _915;
        _1865 = (_1859 + 0.5f) * 2.0f;
        _1866 = (_1860 + 0.5f) * 2.0f;
        _1867 = (_1861 + 0.5f) * 2.0f;
        _1875 = (lerp(_1865, 1.0f, _1826)) * _1826;
        _1877 = (lerp(_1866, 1.0f, _1827)) * _1827;
        _1879 = (lerp(_1867, 1.0f, _1828)) * _1828;
        _1913 = (((((_1865 + -1.0f) * sqrt(_1826)) + ((_1826 * 2.0f) * (0.5f - _1859))) - _1875) * select((_1826 < 0.5f), 0.0f, 1.0f)) + _1875;
        _1914 = (((((_1866 + -1.0f) * sqrt(_1827)) + ((_1827 * 2.0f) * (0.5f - _1860))) - _1877) * select((_1827 < 0.5f), 0.0f, 1.0f)) + _1877;
        _1915 = (((((_1867 + -1.0f) * sqrt(_1828)) + ((_1828 * 2.0f) * (0.5f - _1861))) - _1879) * select((_1828 < 0.5f), 0.0f, 1.0f)) + _1879;
        _2062 = (((((_1913 * 0.30530601739883423f) + 0.682171106338501f) * _1913) + 0.012522878125309944f) * _1913);
        _2063 = (((((_1914 * 0.30530601739883423f) + 0.682171106338501f) * _1914) + 0.012522878125309944f) * _1914);
        _2064 = (((((_1915 * 0.30530601739883423f) + 0.682171106338501f) * _1915) + 0.012522878125309944f) * _1915);
      } else {
        if (VREffectsCBuffer_208.w < 3.5f) {
          _1958 = select((_1775 > 1.0f), _1775, saturate((exp2(log2(abs(_1775)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1959 = select((_1776 > 1.0f), _1776, saturate((exp2(log2(abs(_1776)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1960 = select((_1777 > 1.0f), _1777, saturate((exp2(log2(abs(_1777)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1991 = (select((_911 > 1.0f), _911, saturate((exp2(log2(abs(_911)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _915;
          _1992 = (select((_912 > 1.0f), _912, saturate((exp2(log2(abs(_912)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _915;
          _1993 = (select((_913 > 1.0f), _913, saturate((exp2(log2(abs(_913)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _915;
          _2000 = (_1958 * 2.0f) * (_1991 + 0.5f);
          _2001 = (_1959 * 2.0f) * (_1992 + 0.5f);
          _2002 = (_1960 * 2.0f) * (_1993 + 0.5f);
          _2030 = (((1.0f - (((1.0f - _1958) * 2.0f) * (0.5f - _1991))) - _2000) * select((_1958 < 0.5f), 0.0f, 1.0f)) + _2000;
          _2031 = (((1.0f - (((1.0f - _1959) * 2.0f) * (0.5f - _1992))) - _2001) * select((_1959 < 0.5f), 0.0f, 1.0f)) + _2001;
          _2032 = (((1.0f - (((1.0f - _1960) * 2.0f) * (0.5f - _1993))) - _2002) * select((_1960 < 0.5f), 0.0f, 1.0f)) + _2002;
          _2062 = (((((_2030 * 0.30530601739883423f) + 0.682171106338501f) * _2030) + 0.012522878125309944f) * _2030);
          _2063 = (((((_2031 * 0.30530601739883423f) + 0.682171106338501f) * _2031) + 0.012522878125309944f) * _2031);
          _2064 = (((((_2032 * 0.30530601739883423f) + 0.682171106338501f) * _2032) + 0.012522878125309944f) * _2032);
        } else {
          _2062 = (_1775 * (((_911 + -1.0f) * _915) + 1.0f));
          _2063 = (_1776 * (((_912 + -1.0f) * _915) + 1.0f));
          _2064 = (_1777 * (((_913 + -1.0f) * _915) + 1.0f));
        }
      }
    }
  }
  _2071 = t0.SampleBias(s0, float2((VREffectsCBuffer_352.x + _24), ((VREffectsCBuffer_352.y * _27) + _45)), (Globals_976), int2(0, 0));
  _2088 = t0.SampleBias(s0, float2((VREffectsCBuffer_352.z + _24), ((VREffectsCBuffer_352.w * _27) + _45)), (Globals_976), int2(0, 0));
  _2105 = t0.SampleBias(s0, float2((VREffectsCBuffer_368.x + _24), ((VREffectsCBuffer_368.y * _27) + _45)), (Globals_976), int2(0, 0));

  _2071.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2071.xyz), 1.0f, 0.5f);
  _2088.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2088.xyz), 1.0f, 0.5f);
  _2105.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2105.xyz), 1.0f, 0.5f);

  _2128 = (((((VREffectsCBuffer_384.x * _2071.x) - _2062) + (VREffectsCBuffer_400.x * _2088.y)) + (VREffectsCBuffer_416.x * _2105.z)) * VREffectsCBuffer_368.z) + _2062;
  _2129 = (((((VREffectsCBuffer_384.y * _2071.x) - _2063) + (VREffectsCBuffer_400.y * _2088.y)) + (VREffectsCBuffer_416.y * _2105.z)) * VREffectsCBuffer_368.z) + _2063;
  _2130 = (((((VREffectsCBuffer_384.z * _2071.x) - _2064) + (VREffectsCBuffer_400.z * _2088.y)) + (VREffectsCBuffer_416.z * _2105.z)) * VREffectsCBuffer_368.z) + _2064;
  _2136 = (((-0.0f - VREffectsCBuffer_064.y) - VREffectsCBuffer_064.y) * _19) + VREffectsCBuffer_064.y;
  if (!(VREffectsCBuffer_064.w < 0.5f)) {
    _2140 = _2136 * 0.5f;
    _2141 = _2140 + 0.5f;
    _2160 = 0.5f - _2140;
    _2164 = 1.0f - (((1.0f - _2128) * 2.0f) * _2160);
    _2165 = 1.0f - (((1.0f - _2129) * 2.0f) * _2160);
    _2166 = 1.0f - (((1.0f - _2130) * 2.0f) * _2160);
    _2180 = ((_2164 - _2128) + ((((_2128 * 2.0f) * _2141) - _2164) * select((_2128 > 0.5f), 0.0f, 1.0f)));
    _2181 = ((_2165 - _2129) + ((((_2129 * 2.0f) * _2141) - _2165) * select((_2129 > 0.5f), 0.0f, 1.0f)));
    _2182 = ((_2166 - _2130) + ((((_2130 * 2.0f) * _2141) - _2166) * select((_2130 > 0.5f), 0.0f, 1.0f)));
  } else {
    _2180 = _2136;
    _2181 = _2136;
    _2182 = _2136;
  }
  _2183 = _2180 + _2128;
  _2184 = _2181 + _2129;
  _2185 = _2182 + _2130;
  if (VREffectsCBuffer_464.w > 0.5f) {
    _2191 = int(VREffectsCBuffer_464.x);
    _2199 = int(VREffectsCBuffer_464.z);
    _2212 = t1.SampleBias(s0, float2(((float((int)(_2199 % _2191)) * (1.0f / float((int)(_2191)))) + (_24 / VREffectsCBuffer_464.x)), ((float((int)(_2199 / _2191)) * (1.0f / float((int)(int(VREffectsCBuffer_464.y))))) + (_45 / VREffectsCBuffer_464.y))), (Globals_976), int2(0, 0));
    _2225 = VREffectsCBuffer_480.w * _2212.w;
    _2226 = 1.0f - _2225;
    _2237 = ((_2226 * _2183) + ((VREffectsCBuffer_480.x * _2212.x) * _2225));
    _2238 = ((_2226 * _2184) + ((VREffectsCBuffer_480.y * _2212.y) * _2225));
    _2239 = ((_2226 * _2185) + ((VREffectsCBuffer_480.z * _2212.z) * _2225));
  } else {
    _2237 = _2183;
    _2238 = _2184;
    _2239 = _2185;
  }
  if (VREffectsCBuffer_784.x > 0.5f) {
    _2248 = _36 * (TEXCOORD.x - VREffectsCBuffer_800.x);
    _2250 = (TEXCOORD.y - VREffectsCBuffer_800.y) * 2.0f;
    _2261 = saturate(sqrt((_2248 * _2248) + (_2250 * _2250)) / (VREffectsCBuffer_800.z * sqrt((_27 * _27) + 1.0f)));
    _2270 = exp2(log2(1.0f - ((_2261 * _2261) * (3.0f - (_2261 * 2.0f)))) * VREffectsCBuffer_784.w);
    _2274 = (VREffectsCBuffer_784.y * (_2270 + -1.0f)) + 1.0f;
    _2275 = _2274 * _2237;
    _2276 = _2274 * _2238;
    _2277 = _2274 * _2239;
    _2279 = VREffectsCBuffer_784.z * _2270;
    _2308 = ((((1.0f - _2275) + (select((_2275 > 0.5f), 0.0f, 1.0f) * ((_2275 * 2.0f) + -1.0f))) * _2279) + _2275);
    _2309 = ((((1.0f - _2276) + (select((_2276 > 0.5f), 0.0f, 1.0f) * ((_2276 * 2.0f) + -1.0f))) * _2279) + _2276);
    _2310 = ((((1.0f - _2277) + (select((_2277 > 0.5f), 0.0f, 1.0f) * ((_2277 * 2.0f) + -1.0f))) * _2279) + _2277);
  } else {
    _2308 = _2237;
    _2309 = _2238;
    _2310 = _2239;
  }
  SV_Target.x = _2308;
  SV_Target.y = _2309;
  SV_Target.z = _2310;
  SV_Target.w = _VR_SourceImage0.w;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _VR_SourceImage0.xyz, SV_Target.xyz));

  return SV_Target;
}
