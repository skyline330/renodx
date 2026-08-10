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
  float _17;
  float _20;
  float _25;
  float _28;
  float _37;
  bool _43;
  float _46;
  float _51;
  float4 _54;
  float _64;
  float _86;
  float _88;
  float _93;
  float _94;
  float _96;
  float _98;
  float _105;
  float _106;
  float _108;
  float _122;
  float _127;
  float _128;
  float _170;
  float _171;
  float _172;
  float _182;
  float _183;
  float _184;
  float _192;
  float _476;
  float _477;
  float _478;
  float _770;
  float _771;
  float _772;
  float _1253;
  float _1254;
  float _1255;
  float _1540;
  float _1541;
  float _1542;
  float _1827;
  float _1828;
  float _1829;
  float _2114;
  float _2115;
  float _2116;
  float _2232;
  float _2233;
  float _2234;
  float _2289;
  float _2290;
  float _2291;
  float _2360;
  float _2361;
  float _2362;
  float _240;
  float _241;
  float _242;
  float _273;
  float _274;
  float _275;
  float _279;
  float _280;
  float _281;
  float _289;
  float _291;
  float _293;
  float _327;
  float _328;
  float _329;
  float _372;
  float _373;
  float _374;
  float _405;
  float _406;
  float _407;
  float _414;
  float _415;
  float _416;
  float _444;
  float _445;
  float _446;
  float _486;
  float _534;
  float _535;
  float _536;
  float _567;
  float _568;
  float _569;
  float _573;
  float _574;
  float _575;
  float _583;
  float _585;
  float _587;
  float _621;
  float _622;
  float _623;
  float _666;
  float _667;
  float _668;
  float _699;
  float _700;
  float _701;
  float _708;
  float _709;
  float _710;
  float _738;
  float _739;
  float _740;
  float4 _855;
  float _871;
  float _886;
  float _900;
  float _901;
  float _902;
  float _904;
  float _907;
  float _921;
  float _922;
  float _923;
  float _925;
  float _928;
  float _942;
  float _943;
  float _944;
  float _946;
  float _949;
  float _963;
  float _964;
  float _965;
  float _967;
  float _1017;
  float _1018;
  float _1019;
  float _1050;
  float _1051;
  float _1052;
  float _1056;
  float _1057;
  float _1058;
  float _1066;
  float _1068;
  float _1070;
  float _1104;
  float _1105;
  float _1106;
  float _1149;
  float _1150;
  float _1151;
  float _1182;
  float _1183;
  float _1184;
  float _1191;
  float _1192;
  float _1193;
  float _1221;
  float _1222;
  float _1223;
  float _1304;
  float _1305;
  float _1306;
  float _1337;
  float _1338;
  float _1339;
  float _1343;
  float _1344;
  float _1345;
  float _1353;
  float _1355;
  float _1357;
  float _1391;
  float _1392;
  float _1393;
  float _1436;
  float _1437;
  float _1438;
  float _1469;
  float _1470;
  float _1471;
  float _1478;
  float _1479;
  float _1480;
  float _1508;
  float _1509;
  float _1510;
  float _1591;
  float _1592;
  float _1593;
  float _1624;
  float _1625;
  float _1626;
  float _1630;
  float _1631;
  float _1632;
  float _1640;
  float _1642;
  float _1644;
  float _1678;
  float _1679;
  float _1680;
  float _1723;
  float _1724;
  float _1725;
  float _1756;
  float _1757;
  float _1758;
  float _1765;
  float _1766;
  float _1767;
  float _1795;
  float _1796;
  float _1797;
  float _1878;
  float _1879;
  float _1880;
  float _1911;
  float _1912;
  float _1913;
  float _1917;
  float _1918;
  float _1919;
  float _1927;
  float _1929;
  float _1931;
  float _1965;
  float _1966;
  float _1967;
  float _2010;
  float _2011;
  float _2012;
  float _2043;
  float _2044;
  float _2045;
  float _2052;
  float _2053;
  float _2054;
  float _2082;
  float _2083;
  float _2084;
  float4 _2123;
  float4 _2140;
  float4 _2157;
  float _2180;
  float _2181;
  float _2182;
  float _2188;
  float _2192;
  float _2193;
  float _2212;
  float _2216;
  float _2217;
  float _2218;
  float _2235;
  float _2236;
  float _2237;
  int _2243;
  int _2251;
  float4 _2264;
  float _2277;
  float _2278;
  float _2300;
  float _2302;
  float _2313;
  float _2322;
  float _2326;
  float _2327;
  float _2328;
  float _2329;
  float _2331;

  _17 = fmod(((((1080.0f / (Globals_2208.y)) * TEXCOORD.y) * (Globals_2208.y)) * VREffectsCBuffer_064.x), 2.0f);
  _20 = select((_17 > 1.0f), (2.0f - _17), _17);
  _25 = (((_20 * 2.0f) + -1.0f) * VREffectsCBuffer_064.z) + TEXCOORD.x;
  _28 = (Globals_2208.w) * (Globals_2208.x);
  _37 = _28 * 2.0f;
  _43 = ((frac((((_25 + abs(VREffectsCBuffer_080.y)) * _28) - (VREffectsCBuffer_080.y * TEXCOORD.y)) / (_37 * VREffectsCBuffer_080.x)) * 2.0f) <= 1.0f);
  _46 = (select(_43, 0.9999899864196777f, -1.0f) * VREffectsCBuffer_080.z) + TEXCOORD.y;
  _51 = select(_43, select((_46 < 1.0f), 0.0f, 1.0f), select((_46 > 0.0f), 0.0f, 1.0f));

  // _54 = t0.SampleBias(s0, float2(_25, _46), (Globals_976), int2(0, 0));
  float4 _VR_SourceImage0 = renodx::draw::InvertIntermediatePass(t0.SampleBias(s0, float2(_25, _46), (Globals_976), int2(0, 0)));
  float4 untonemapped = _VR_SourceImage0;
  _VR_SourceImage0.xyz = renodx::tonemap::dice::BT709(_VR_SourceImage0.xyz, 1.0f, 0.5f);

  _64 = saturate(-0.0f - (VREffectsCBuffer_016.z * VREffectsCBuffer_016.w));
  _86 = ((VREffectsCBuffer_048.w - VREffectsCBuffer_032.w) * _64) + VREffectsCBuffer_032.w;
  _88 = select((_VR_SourceImage0.y < _VR_SourceImage0.z), 0.0f, 1.0f);
  _93 = (_88 * (_VR_SourceImage0.y - _VR_SourceImage0.z)) + _VR_SourceImage0.z;
  _94 = (_88 * (_VR_SourceImage0.z - _VR_SourceImage0.y)) + _VR_SourceImage0.y;
  _96 = 0.6666666865348816f - _88;
  _98 = select((_VR_SourceImage0.x < _93), 0.0f, 1.0f);
  _105 = (_98 * (_VR_SourceImage0.x - _93)) + _93;
  _106 = (_98 * (_93 - _VR_SourceImage0.x)) + _VR_SourceImage0.x;
  _108 = _105 - min(_106, _94);
  _122 = VREffectsCBuffer_000.x + abs((((_106 - _94) / ((_108 * 6.0f) + 9.999999747378752e-05f)) + _96) + (_98 * ((_88 + -1.0f) - _96)));
  _127 = saturate((VREffectsCBuffer_000.y + (_108 / (_105 + 9.999999747378752e-05f))) * (1.0f - _86));
  _128 = saturate(VREffectsCBuffer_000.z + _105);
  _170 = ((((((saturate(abs((frac(_122 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _127) + 1.0f) * _128) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _171 = ((((((saturate(abs((frac(_122 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _127) + 1.0f) * _128) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _172 = ((((((saturate(abs((frac(_122 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _127) + 1.0f) * _128) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _182 = (((_170 * (lerp(VREffectsCBuffer_032.x, VREffectsCBuffer_048.x, _64))) - _170) * _86) + _170;
  _183 = (((_171 * (lerp(VREffectsCBuffer_032.y, VREffectsCBuffer_048.y, _64))) - _171) * _86) + _171;
  _184 = (((_172 * (lerp(VREffectsCBuffer_032.z, VREffectsCBuffer_048.z, _64))) - _172) * _86) + _172;
  _192 = VREffectsCBuffer_096.w * _51;
  [branch]
  if (VREffectsCBuffer_128.x < 0.5f) {
    _476 = (lerp(_182, VREffectsCBuffer_096.x, _192));
    _477 = (lerp(_183, VREffectsCBuffer_096.y, _192));
    _478 = (lerp(_184, VREffectsCBuffer_096.z, _192));
  } else {
    if (VREffectsCBuffer_128.x < 1.5f) {
      _476 = (_182 + (_192 * VREffectsCBuffer_096.x));
      _477 = (_183 + (_192 * VREffectsCBuffer_096.y));
      _478 = (_184 + (_192 * VREffectsCBuffer_096.z));
    } else {
      if (VREffectsCBuffer_128.x < 2.5f) {
        _240 = select((_182 > 1.0f), _182, saturate((exp2(log2(abs(_182)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _241 = select((_183 > 1.0f), _183, saturate((exp2(log2(abs(_183)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _242 = select((_184 > 1.0f), _184, saturate((exp2(log2(abs(_184)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _273 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _192;
        _274 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _192;
        _275 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _192;
        _279 = (_273 + 0.5f) * 2.0f;
        _280 = (_274 + 0.5f) * 2.0f;
        _281 = (_275 + 0.5f) * 2.0f;
        _289 = (lerp(_279, 1.0f, _240)) * _240;
        _291 = (lerp(_280, 1.0f, _241)) * _241;
        _293 = (lerp(_281, 1.0f, _242)) * _242;
        _327 = (((((_279 + -1.0f) * sqrt(_240)) + ((_240 * 2.0f) * (0.5f - _273))) - _289) * select((_240 < 0.5f), 0.0f, 1.0f)) + _289;
        _328 = (((((_280 + -1.0f) * sqrt(_241)) + ((_241 * 2.0f) * (0.5f - _274))) - _291) * select((_241 < 0.5f), 0.0f, 1.0f)) + _291;
        _329 = (((((_281 + -1.0f) * sqrt(_242)) + ((_242 * 2.0f) * (0.5f - _275))) - _293) * select((_242 < 0.5f), 0.0f, 1.0f)) + _293;
        _476 = (((((_327 * 0.30530601739883423f) + 0.682171106338501f) * _327) + 0.012522878125309944f) * _327);
        _477 = (((((_328 * 0.30530601739883423f) + 0.682171106338501f) * _328) + 0.012522878125309944f) * _328);
        _478 = (((((_329 * 0.30530601739883423f) + 0.682171106338501f) * _329) + 0.012522878125309944f) * _329);
      } else {
        if (VREffectsCBuffer_128.x < 3.5f) {
          _372 = select((_182 > 1.0f), _182, saturate((exp2(log2(abs(_182)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _373 = select((_183 > 1.0f), _183, saturate((exp2(log2(abs(_183)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _374 = select((_184 > 1.0f), _184, saturate((exp2(log2(abs(_184)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _405 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _192;
          _406 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _192;
          _407 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _192;
          _414 = (_372 * 2.0f) * (_405 + 0.5f);
          _415 = (_373 * 2.0f) * (_406 + 0.5f);
          _416 = (_374 * 2.0f) * (_407 + 0.5f);
          _444 = (((1.0f - (((1.0f - _372) * 2.0f) * (0.5f - _405))) - _414) * select((_372 < 0.5f), 0.0f, 1.0f)) + _414;
          _445 = (((1.0f - (((1.0f - _373) * 2.0f) * (0.5f - _406))) - _415) * select((_373 < 0.5f), 0.0f, 1.0f)) + _415;
          _446 = (((1.0f - (((1.0f - _374) * 2.0f) * (0.5f - _407))) - _416) * select((_374 < 0.5f), 0.0f, 1.0f)) + _416;
          _476 = (((((_444 * 0.30530601739883423f) + 0.682171106338501f) * _444) + 0.012522878125309944f) * _444);
          _477 = (((((_445 * 0.30530601739883423f) + 0.682171106338501f) * _445) + 0.012522878125309944f) * _445);
          _478 = (((((_446 * 0.30530601739883423f) + 0.682171106338501f) * _446) + 0.012522878125309944f) * _446);
        } else {
          _476 = (_182 * ((_192 * (VREffectsCBuffer_096.x + -1.0f)) + 1.0f));
          _477 = (_183 * ((_192 * (VREffectsCBuffer_096.y + -1.0f)) + 1.0f));
          _478 = (_184 * ((_192 * (VREffectsCBuffer_096.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  _486 = VREffectsCBuffer_112.w * (1.0f - _51);
  [branch]
  if (VREffectsCBuffer_128.y < 0.5f) {
    _770 = ((_486 * (VREffectsCBuffer_112.x - _476)) + _476);
    _771 = ((_486 * (VREffectsCBuffer_112.y - _477)) + _477);
    _772 = ((_486 * (VREffectsCBuffer_112.z - _478)) + _478);
  } else {
    if (VREffectsCBuffer_128.y < 1.5f) {
      _770 = ((_486 * VREffectsCBuffer_112.x) + _476);
      _771 = ((_486 * VREffectsCBuffer_112.y) + _477);
      _772 = ((_486 * VREffectsCBuffer_112.z) + _478);
    } else {
      if (VREffectsCBuffer_128.y < 2.5f) {
        _534 = select((_476 > 1.0f), _476, saturate((exp2(log2(abs(_476)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _535 = select((_477 > 1.0f), _477, saturate((exp2(log2(abs(_477)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _536 = select((_478 > 1.0f), _478, saturate((exp2(log2(abs(_478)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _567 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _486;
        _568 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _486;
        _569 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _486;
        _573 = (_567 + 0.5f) * 2.0f;
        _574 = (_568 + 0.5f) * 2.0f;
        _575 = (_569 + 0.5f) * 2.0f;
        _583 = (lerp(_573, 1.0f, _534)) * _534;
        _585 = (lerp(_574, 1.0f, _535)) * _535;
        _587 = (lerp(_575, 1.0f, _536)) * _536;
        _621 = (((((_573 + -1.0f) * sqrt(_534)) + ((_534 * 2.0f) * (0.5f - _567))) - _583) * select((_534 < 0.5f), 0.0f, 1.0f)) + _583;
        _622 = (((((_574 + -1.0f) * sqrt(_535)) + ((_535 * 2.0f) * (0.5f - _568))) - _585) * select((_535 < 0.5f), 0.0f, 1.0f)) + _585;
        _623 = (((((_575 + -1.0f) * sqrt(_536)) + ((_536 * 2.0f) * (0.5f - _569))) - _587) * select((_536 < 0.5f), 0.0f, 1.0f)) + _587;
        _770 = (((((_621 * 0.30530601739883423f) + 0.682171106338501f) * _621) + 0.012522878125309944f) * _621);
        _771 = (((((_622 * 0.30530601739883423f) + 0.682171106338501f) * _622) + 0.012522878125309944f) * _622);
        _772 = (((((_623 * 0.30530601739883423f) + 0.682171106338501f) * _623) + 0.012522878125309944f) * _623);
      } else {
        if (VREffectsCBuffer_128.y < 3.5f) {
          _666 = select((_476 > 1.0f), _476, saturate((exp2(log2(abs(_476)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _667 = select((_477 > 1.0f), _477, saturate((exp2(log2(abs(_477)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _668 = select((_478 > 1.0f), _478, saturate((exp2(log2(abs(_478)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _699 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _486;
          _700 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _486;
          _701 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _486;
          _708 = (_666 * 2.0f) * (_699 + 0.5f);
          _709 = (_667 * 2.0f) * (_700 + 0.5f);
          _710 = (_668 * 2.0f) * (_701 + 0.5f);
          _738 = (((1.0f - (((1.0f - _666) * 2.0f) * (0.5f - _699))) - _708) * select((_666 < 0.5f), 0.0f, 1.0f)) + _708;
          _739 = (((1.0f - (((1.0f - _667) * 2.0f) * (0.5f - _700))) - _709) * select((_667 < 0.5f), 0.0f, 1.0f)) + _709;
          _740 = (((1.0f - (((1.0f - _668) * 2.0f) * (0.5f - _701))) - _710) * select((_668 < 0.5f), 0.0f, 1.0f)) + _710;
          _770 = (((((_738 * 0.30530601739883423f) + 0.682171106338501f) * _738) + 0.012522878125309944f) * _738);
          _771 = (((((_739 * 0.30530601739883423f) + 0.682171106338501f) * _739) + 0.012522878125309944f) * _739);
          _772 = (((((_740 * 0.30530601739883423f) + 0.682171106338501f) * _740) + 0.012522878125309944f) * _740);
        } else {
          _770 = (((_486 * (VREffectsCBuffer_112.x + -1.0f)) + 1.0f) * _476);
          _771 = (((_486 * (VREffectsCBuffer_112.y + -1.0f)) + 1.0f) * _477);
          _772 = (((_486 * (VREffectsCBuffer_112.z + -1.0f)) + 1.0f) * _478);
        }
      }
    }
  }
  _855 = t2.SampleBias(s0, float2((((VREffectsCBuffer_656.x * _25) + VREffectsCBuffer_656.z) + frac(VREffectsCBuffer_688.x * (Globals_208[1].x))), (((VREffectsCBuffer_656.y * _46) + VREffectsCBuffer_656.w) + frac(VREffectsCBuffer_688.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
  _871 = dot(float4(VREffectsCBuffer_640.x, VREffectsCBuffer_640.y, VREffectsCBuffer_640.z, VREffectsCBuffer_640.w), float4(_855.x, _855.y, _855.z, _855.w)) + -1.0f;
  _886 = VREffectsCBuffer_240.w * saturate((-0.0f - VREffectsCBuffer_144.x) / (VREffectsCBuffer_160.x - VREffectsCBuffer_144.x));
  _900 = ((VREffectsCBuffer_240.x - VREffectsCBuffer_224.x) * _886) + VREffectsCBuffer_224.x;
  _901 = ((VREffectsCBuffer_240.y - VREffectsCBuffer_224.y) * _886) + VREffectsCBuffer_224.y;
  _902 = ((VREffectsCBuffer_240.z - VREffectsCBuffer_224.z) * _886) + VREffectsCBuffer_224.z;
  _904 = (((VREffectsCBuffer_672.x * _871) + 1.0f) * min(saturate(-0.0f - (VREffectsCBuffer_144.x * VREffectsCBuffer_176.x)), saturate(VREffectsCBuffer_192.x * VREffectsCBuffer_160.x))) * VREffectsCBuffer_224.w;
  _907 = VREffectsCBuffer_272.w * saturate((-0.0f - VREffectsCBuffer_144.y) / (VREffectsCBuffer_160.y - VREffectsCBuffer_144.y));
  _921 = ((VREffectsCBuffer_272.x - VREffectsCBuffer_256.x) * _907) + VREffectsCBuffer_256.x;
  _922 = ((VREffectsCBuffer_272.y - VREffectsCBuffer_256.y) * _907) + VREffectsCBuffer_256.y;
  _923 = ((VREffectsCBuffer_272.z - VREffectsCBuffer_256.z) * _907) + VREffectsCBuffer_256.z;
  _925 = (((VREffectsCBuffer_672.y * _871) + 1.0f) * min(saturate(-0.0f - (VREffectsCBuffer_144.y * VREffectsCBuffer_176.y)), saturate(VREffectsCBuffer_192.y * VREffectsCBuffer_160.y))) * VREffectsCBuffer_256.w;
  _928 = VREffectsCBuffer_304.w * saturate((-0.0f - VREffectsCBuffer_144.z) / (VREffectsCBuffer_160.z - VREffectsCBuffer_144.z));
  _942 = ((VREffectsCBuffer_304.x - VREffectsCBuffer_288.x) * _928) + VREffectsCBuffer_288.x;
  _943 = ((VREffectsCBuffer_304.y - VREffectsCBuffer_288.y) * _928) + VREffectsCBuffer_288.y;
  _944 = ((VREffectsCBuffer_304.z - VREffectsCBuffer_288.z) * _928) + VREffectsCBuffer_288.z;
  _946 = (((VREffectsCBuffer_672.z * _871) + 1.0f) * min(saturate(-0.0f - (VREffectsCBuffer_144.z * VREffectsCBuffer_176.z)), saturate(VREffectsCBuffer_192.z * VREffectsCBuffer_160.z))) * VREffectsCBuffer_288.w;
  _949 = VREffectsCBuffer_336.w * saturate((-0.0f - VREffectsCBuffer_144.w) / (VREffectsCBuffer_160.w - VREffectsCBuffer_144.w));
  _963 = ((VREffectsCBuffer_336.x - VREffectsCBuffer_320.x) * _949) + VREffectsCBuffer_320.x;
  _964 = ((VREffectsCBuffer_336.y - VREffectsCBuffer_320.y) * _949) + VREffectsCBuffer_320.y;
  _965 = ((VREffectsCBuffer_336.z - VREffectsCBuffer_320.z) * _949) + VREffectsCBuffer_320.z;
  _967 = (((VREffectsCBuffer_672.w * _871) + 1.0f) * min(saturate(-0.0f - (VREffectsCBuffer_144.w * VREffectsCBuffer_176.w)), saturate(VREffectsCBuffer_192.w * VREffectsCBuffer_160.w))) * VREffectsCBuffer_320.w;
  [branch]
  if (VREffectsCBuffer_208.x < 0.5f) {
    _1253 = (lerp(_770, _900, _904));
    _1254 = (lerp(_771, _901, _904));
    _1255 = (lerp(_772, _902, _904));
  } else {
    if (VREffectsCBuffer_208.x < 1.5f) {
      _1253 = ((_900 * _904) + _770);
      _1254 = ((_901 * _904) + _771);
      _1255 = ((_902 * _904) + _772);
    } else {
      if (VREffectsCBuffer_208.x < 2.5f) {
        _1017 = select((_770 > 1.0f), _770, saturate((exp2(log2(abs(_770)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1018 = select((_771 > 1.0f), _771, saturate((exp2(log2(abs(_771)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1019 = select((_772 > 1.0f), _772, saturate((exp2(log2(abs(_772)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1050 = (select((_900 > 1.0f), _900, saturate((exp2(log2(abs(_900)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _904;
        _1051 = (select((_901 > 1.0f), _901, saturate((exp2(log2(abs(_901)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _904;
        _1052 = (select((_902 > 1.0f), _902, saturate((exp2(log2(abs(_902)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _904;
        _1056 = (_1050 + 0.5f) * 2.0f;
        _1057 = (_1051 + 0.5f) * 2.0f;
        _1058 = (_1052 + 0.5f) * 2.0f;
        _1066 = (lerp(_1056, 1.0f, _1017)) * _1017;
        _1068 = (lerp(_1057, 1.0f, _1018)) * _1018;
        _1070 = (lerp(_1058, 1.0f, _1019)) * _1019;
        _1104 = (((((_1056 + -1.0f) * sqrt(_1017)) + ((_1017 * 2.0f) * (0.5f - _1050))) - _1066) * select((_1017 < 0.5f), 0.0f, 1.0f)) + _1066;
        _1105 = (((((_1057 + -1.0f) * sqrt(_1018)) + ((_1018 * 2.0f) * (0.5f - _1051))) - _1068) * select((_1018 < 0.5f), 0.0f, 1.0f)) + _1068;
        _1106 = (((((_1058 + -1.0f) * sqrt(_1019)) + ((_1019 * 2.0f) * (0.5f - _1052))) - _1070) * select((_1019 < 0.5f), 0.0f, 1.0f)) + _1070;
        _1253 = (((((_1104 * 0.30530601739883423f) + 0.682171106338501f) * _1104) + 0.012522878125309944f) * _1104);
        _1254 = (((((_1105 * 0.30530601739883423f) + 0.682171106338501f) * _1105) + 0.012522878125309944f) * _1105);
        _1255 = (((((_1106 * 0.30530601739883423f) + 0.682171106338501f) * _1106) + 0.012522878125309944f) * _1106);
      } else {
        if (VREffectsCBuffer_208.x < 3.5f) {
          _1149 = select((_770 > 1.0f), _770, saturate((exp2(log2(abs(_770)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1150 = select((_771 > 1.0f), _771, saturate((exp2(log2(abs(_771)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1151 = select((_772 > 1.0f), _772, saturate((exp2(log2(abs(_772)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1182 = (select((_900 > 1.0f), _900, saturate((exp2(log2(abs(_900)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _904;
          _1183 = (select((_901 > 1.0f), _901, saturate((exp2(log2(abs(_901)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _904;
          _1184 = (select((_902 > 1.0f), _902, saturate((exp2(log2(abs(_902)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _904;
          _1191 = (_1149 * 2.0f) * (_1182 + 0.5f);
          _1192 = (_1150 * 2.0f) * (_1183 + 0.5f);
          _1193 = (_1151 * 2.0f) * (_1184 + 0.5f);
          _1221 = (((1.0f - (((1.0f - _1149) * 2.0f) * (0.5f - _1182))) - _1191) * select((_1149 < 0.5f), 0.0f, 1.0f)) + _1191;
          _1222 = (((1.0f - (((1.0f - _1150) * 2.0f) * (0.5f - _1183))) - _1192) * select((_1150 < 0.5f), 0.0f, 1.0f)) + _1192;
          _1223 = (((1.0f - (((1.0f - _1151) * 2.0f) * (0.5f - _1184))) - _1193) * select((_1151 < 0.5f), 0.0f, 1.0f)) + _1193;
          _1253 = (((((_1221 * 0.30530601739883423f) + 0.682171106338501f) * _1221) + 0.012522878125309944f) * _1221);
          _1254 = (((((_1222 * 0.30530601739883423f) + 0.682171106338501f) * _1222) + 0.012522878125309944f) * _1222);
          _1255 = (((((_1223 * 0.30530601739883423f) + 0.682171106338501f) * _1223) + 0.012522878125309944f) * _1223);
        } else {
          _1253 = ((((_900 + -1.0f) * _904) + 1.0f) * _770);
          _1254 = ((((_901 + -1.0f) * _904) + 1.0f) * _771);
          _1255 = ((((_902 + -1.0f) * _904) + 1.0f) * _772);
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.y < 0.5f) {
    _1540 = (lerp(_1253, _921, _925));
    _1541 = (lerp(_1254, _922, _925));
    _1542 = (lerp(_1255, _923, _925));
  } else {
    if (VREffectsCBuffer_208.y < 1.5f) {
      _1540 = (_1253 + (_921 * _925));
      _1541 = (_1254 + (_922 * _925));
      _1542 = (_1255 + (_923 * _925));
    } else {
      if (VREffectsCBuffer_208.y < 2.5f) {
        _1304 = select((_1253 > 1.0f), _1253, saturate((exp2(log2(abs(_1253)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1305 = select((_1254 > 1.0f), _1254, saturate((exp2(log2(abs(_1254)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1306 = select((_1255 > 1.0f), _1255, saturate((exp2(log2(abs(_1255)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1337 = (select((_921 > 1.0f), _921, saturate((exp2(log2(abs(_921)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _925;
        _1338 = (select((_922 > 1.0f), _922, saturate((exp2(log2(abs(_922)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _925;
        _1339 = (select((_923 > 1.0f), _923, saturate((exp2(log2(abs(_923)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _925;
        _1343 = (_1337 + 0.5f) * 2.0f;
        _1344 = (_1338 + 0.5f) * 2.0f;
        _1345 = (_1339 + 0.5f) * 2.0f;
        _1353 = (lerp(_1343, 1.0f, _1304)) * _1304;
        _1355 = (lerp(_1344, 1.0f, _1305)) * _1305;
        _1357 = (lerp(_1345, 1.0f, _1306)) * _1306;
        _1391 = (((((_1343 + -1.0f) * sqrt(_1304)) + ((_1304 * 2.0f) * (0.5f - _1337))) - _1353) * select((_1304 < 0.5f), 0.0f, 1.0f)) + _1353;
        _1392 = (((((_1344 + -1.0f) * sqrt(_1305)) + ((_1305 * 2.0f) * (0.5f - _1338))) - _1355) * select((_1305 < 0.5f), 0.0f, 1.0f)) + _1355;
        _1393 = (((((_1345 + -1.0f) * sqrt(_1306)) + ((_1306 * 2.0f) * (0.5f - _1339))) - _1357) * select((_1306 < 0.5f), 0.0f, 1.0f)) + _1357;
        _1540 = (((((_1391 * 0.30530601739883423f) + 0.682171106338501f) * _1391) + 0.012522878125309944f) * _1391);
        _1541 = (((((_1392 * 0.30530601739883423f) + 0.682171106338501f) * _1392) + 0.012522878125309944f) * _1392);
        _1542 = (((((_1393 * 0.30530601739883423f) + 0.682171106338501f) * _1393) + 0.012522878125309944f) * _1393);
      } else {
        if (VREffectsCBuffer_208.y < 3.5f) {
          _1436 = select((_1253 > 1.0f), _1253, saturate((exp2(log2(abs(_1253)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1437 = select((_1254 > 1.0f), _1254, saturate((exp2(log2(abs(_1254)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1438 = select((_1255 > 1.0f), _1255, saturate((exp2(log2(abs(_1255)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1469 = (select((_921 > 1.0f), _921, saturate((exp2(log2(abs(_921)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _925;
          _1470 = (select((_922 > 1.0f), _922, saturate((exp2(log2(abs(_922)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _925;
          _1471 = (select((_923 > 1.0f), _923, saturate((exp2(log2(abs(_923)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _925;
          _1478 = (_1436 * 2.0f) * (_1469 + 0.5f);
          _1479 = (_1437 * 2.0f) * (_1470 + 0.5f);
          _1480 = (_1438 * 2.0f) * (_1471 + 0.5f);
          _1508 = (((1.0f - (((1.0f - _1436) * 2.0f) * (0.5f - _1469))) - _1478) * select((_1436 < 0.5f), 0.0f, 1.0f)) + _1478;
          _1509 = (((1.0f - (((1.0f - _1437) * 2.0f) * (0.5f - _1470))) - _1479) * select((_1437 < 0.5f), 0.0f, 1.0f)) + _1479;
          _1510 = (((1.0f - (((1.0f - _1438) * 2.0f) * (0.5f - _1471))) - _1480) * select((_1438 < 0.5f), 0.0f, 1.0f)) + _1480;
          _1540 = (((((_1508 * 0.30530601739883423f) + 0.682171106338501f) * _1508) + 0.012522878125309944f) * _1508);
          _1541 = (((((_1509 * 0.30530601739883423f) + 0.682171106338501f) * _1509) + 0.012522878125309944f) * _1509);
          _1542 = (((((_1510 * 0.30530601739883423f) + 0.682171106338501f) * _1510) + 0.012522878125309944f) * _1510);
        } else {
          _1540 = (_1253 * (((_921 + -1.0f) * _925) + 1.0f));
          _1541 = (_1254 * (((_922 + -1.0f) * _925) + 1.0f));
          _1542 = (_1255 * (((_923 + -1.0f) * _925) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.z < 0.5f) {
    _1827 = (lerp(_1540, _942, _946));
    _1828 = (lerp(_1541, _943, _946));
    _1829 = (lerp(_1542, _944, _946));
  } else {
    if (VREffectsCBuffer_208.z < 1.5f) {
      _1827 = (_1540 + (_942 * _946));
      _1828 = (_1541 + (_943 * _946));
      _1829 = (_1542 + (_944 * _946));
    } else {
      if (VREffectsCBuffer_208.z < 2.5f) {
        _1591 = select((_1540 > 1.0f), _1540, saturate((exp2(log2(abs(_1540)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1592 = select((_1541 > 1.0f), _1541, saturate((exp2(log2(abs(_1541)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1593 = select((_1542 > 1.0f), _1542, saturate((exp2(log2(abs(_1542)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1624 = (select((_942 > 1.0f), _942, saturate((exp2(log2(abs(_942)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _946;
        _1625 = (select((_943 > 1.0f), _943, saturate((exp2(log2(abs(_943)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _946;
        _1626 = (select((_944 > 1.0f), _944, saturate((exp2(log2(abs(_944)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _946;
        _1630 = (_1624 + 0.5f) * 2.0f;
        _1631 = (_1625 + 0.5f) * 2.0f;
        _1632 = (_1626 + 0.5f) * 2.0f;
        _1640 = (lerp(_1630, 1.0f, _1591)) * _1591;
        _1642 = (lerp(_1631, 1.0f, _1592)) * _1592;
        _1644 = (lerp(_1632, 1.0f, _1593)) * _1593;
        _1678 = (((((_1630 + -1.0f) * sqrt(_1591)) + ((_1591 * 2.0f) * (0.5f - _1624))) - _1640) * select((_1591 < 0.5f), 0.0f, 1.0f)) + _1640;
        _1679 = (((((_1631 + -1.0f) * sqrt(_1592)) + ((_1592 * 2.0f) * (0.5f - _1625))) - _1642) * select((_1592 < 0.5f), 0.0f, 1.0f)) + _1642;
        _1680 = (((((_1632 + -1.0f) * sqrt(_1593)) + ((_1593 * 2.0f) * (0.5f - _1626))) - _1644) * select((_1593 < 0.5f), 0.0f, 1.0f)) + _1644;
        _1827 = (((((_1678 * 0.30530601739883423f) + 0.682171106338501f) * _1678) + 0.012522878125309944f) * _1678);
        _1828 = (((((_1679 * 0.30530601739883423f) + 0.682171106338501f) * _1679) + 0.012522878125309944f) * _1679);
        _1829 = (((((_1680 * 0.30530601739883423f) + 0.682171106338501f) * _1680) + 0.012522878125309944f) * _1680);
      } else {
        if (VREffectsCBuffer_208.z < 3.5f) {
          _1723 = select((_1540 > 1.0f), _1540, saturate((exp2(log2(abs(_1540)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1724 = select((_1541 > 1.0f), _1541, saturate((exp2(log2(abs(_1541)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1725 = select((_1542 > 1.0f), _1542, saturate((exp2(log2(abs(_1542)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1756 = (select((_942 > 1.0f), _942, saturate((exp2(log2(abs(_942)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _946;
          _1757 = (select((_943 > 1.0f), _943, saturate((exp2(log2(abs(_943)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _946;
          _1758 = (select((_944 > 1.0f), _944, saturate((exp2(log2(abs(_944)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _946;
          _1765 = (_1723 * 2.0f) * (_1756 + 0.5f);
          _1766 = (_1724 * 2.0f) * (_1757 + 0.5f);
          _1767 = (_1725 * 2.0f) * (_1758 + 0.5f);
          _1795 = (((1.0f - (((1.0f - _1723) * 2.0f) * (0.5f - _1756))) - _1765) * select((_1723 < 0.5f), 0.0f, 1.0f)) + _1765;
          _1796 = (((1.0f - (((1.0f - _1724) * 2.0f) * (0.5f - _1757))) - _1766) * select((_1724 < 0.5f), 0.0f, 1.0f)) + _1766;
          _1797 = (((1.0f - (((1.0f - _1725) * 2.0f) * (0.5f - _1758))) - _1767) * select((_1725 < 0.5f), 0.0f, 1.0f)) + _1767;
          _1827 = (((((_1795 * 0.30530601739883423f) + 0.682171106338501f) * _1795) + 0.012522878125309944f) * _1795);
          _1828 = (((((_1796 * 0.30530601739883423f) + 0.682171106338501f) * _1796) + 0.012522878125309944f) * _1796);
          _1829 = (((((_1797 * 0.30530601739883423f) + 0.682171106338501f) * _1797) + 0.012522878125309944f) * _1797);
        } else {
          _1827 = (_1540 * (((_942 + -1.0f) * _946) + 1.0f));
          _1828 = (_1541 * (((_943 + -1.0f) * _946) + 1.0f));
          _1829 = (_1542 * (((_944 + -1.0f) * _946) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.w < 0.5f) {
    _2114 = (lerp(_1827, _963, _967));
    _2115 = (lerp(_1828, _964, _967));
    _2116 = (lerp(_1829, _965, _967));
  } else {
    if (VREffectsCBuffer_208.w < 1.5f) {
      _2114 = (_1827 + (_963 * _967));
      _2115 = (_1828 + (_964 * _967));
      _2116 = (_1829 + (_965 * _967));
    } else {
      if (VREffectsCBuffer_208.w < 2.5f) {
        _1878 = select((_1827 > 1.0f), _1827, saturate((exp2(log2(abs(_1827)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1879 = select((_1828 > 1.0f), _1828, saturate((exp2(log2(abs(_1828)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1880 = select((_1829 > 1.0f), _1829, saturate((exp2(log2(abs(_1829)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1911 = (select((_963 > 1.0f), _963, saturate((exp2(log2(abs(_963)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _967;
        _1912 = (select((_964 > 1.0f), _964, saturate((exp2(log2(abs(_964)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _967;
        _1913 = (select((_965 > 1.0f), _965, saturate((exp2(log2(abs(_965)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _967;
        _1917 = (_1911 + 0.5f) * 2.0f;
        _1918 = (_1912 + 0.5f) * 2.0f;
        _1919 = (_1913 + 0.5f) * 2.0f;
        _1927 = (lerp(_1917, 1.0f, _1878)) * _1878;
        _1929 = (lerp(_1918, 1.0f, _1879)) * _1879;
        _1931 = (lerp(_1919, 1.0f, _1880)) * _1880;
        _1965 = (((((_1917 + -1.0f) * sqrt(_1878)) + ((_1878 * 2.0f) * (0.5f - _1911))) - _1927) * select((_1878 < 0.5f), 0.0f, 1.0f)) + _1927;
        _1966 = (((((_1918 + -1.0f) * sqrt(_1879)) + ((_1879 * 2.0f) * (0.5f - _1912))) - _1929) * select((_1879 < 0.5f), 0.0f, 1.0f)) + _1929;
        _1967 = (((((_1919 + -1.0f) * sqrt(_1880)) + ((_1880 * 2.0f) * (0.5f - _1913))) - _1931) * select((_1880 < 0.5f), 0.0f, 1.0f)) + _1931;
        _2114 = (((((_1965 * 0.30530601739883423f) + 0.682171106338501f) * _1965) + 0.012522878125309944f) * _1965);
        _2115 = (((((_1966 * 0.30530601739883423f) + 0.682171106338501f) * _1966) + 0.012522878125309944f) * _1966);
        _2116 = (((((_1967 * 0.30530601739883423f) + 0.682171106338501f) * _1967) + 0.012522878125309944f) * _1967);
      } else {
        if (VREffectsCBuffer_208.w < 3.5f) {
          _2010 = select((_1827 > 1.0f), _1827, saturate((exp2(log2(abs(_1827)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2011 = select((_1828 > 1.0f), _1828, saturate((exp2(log2(abs(_1828)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2012 = select((_1829 > 1.0f), _1829, saturate((exp2(log2(abs(_1829)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2043 = (select((_963 > 1.0f), _963, saturate((exp2(log2(abs(_963)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _967;
          _2044 = (select((_964 > 1.0f), _964, saturate((exp2(log2(abs(_964)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _967;
          _2045 = (select((_965 > 1.0f), _965, saturate((exp2(log2(abs(_965)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _967;
          _2052 = (_2010 * 2.0f) * (_2043 + 0.5f);
          _2053 = (_2011 * 2.0f) * (_2044 + 0.5f);
          _2054 = (_2012 * 2.0f) * (_2045 + 0.5f);
          _2082 = (((1.0f - (((1.0f - _2010) * 2.0f) * (0.5f - _2043))) - _2052) * select((_2010 < 0.5f), 0.0f, 1.0f)) + _2052;
          _2083 = (((1.0f - (((1.0f - _2011) * 2.0f) * (0.5f - _2044))) - _2053) * select((_2011 < 0.5f), 0.0f, 1.0f)) + _2053;
          _2084 = (((1.0f - (((1.0f - _2012) * 2.0f) * (0.5f - _2045))) - _2054) * select((_2012 < 0.5f), 0.0f, 1.0f)) + _2054;
          _2114 = (((((_2082 * 0.30530601739883423f) + 0.682171106338501f) * _2082) + 0.012522878125309944f) * _2082);
          _2115 = (((((_2083 * 0.30530601739883423f) + 0.682171106338501f) * _2083) + 0.012522878125309944f) * _2083);
          _2116 = (((((_2084 * 0.30530601739883423f) + 0.682171106338501f) * _2084) + 0.012522878125309944f) * _2084);
        } else {
          _2114 = (_1827 * (((_963 + -1.0f) * _967) + 1.0f));
          _2115 = (_1828 * (((_964 + -1.0f) * _967) + 1.0f));
          _2116 = (_1829 * (((_965 + -1.0f) * _967) + 1.0f));
        }
      }
    }
  }
  _2123 = t0.SampleBias(s0, float2((VREffectsCBuffer_352.x + _25), ((VREffectsCBuffer_352.y * _28) + _46)), (Globals_976), int2(0, 0));
  _2140 = t0.SampleBias(s0, float2((VREffectsCBuffer_352.z + _25), ((VREffectsCBuffer_352.w * _28) + _46)), (Globals_976), int2(0, 0));
  _2157 = t0.SampleBias(s0, float2((VREffectsCBuffer_368.x + _25), ((VREffectsCBuffer_368.y * _28) + _46)), (Globals_976), int2(0, 0));

  _2123.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2123.xyz), 1.0f, 0.5f);
  _2140.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2140.xyz), 1.0f, 0.5f);
  _2157.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2157.xyz), 1.0f, 0.5f);

  _2180 = (((((VREffectsCBuffer_384.x * _2123.x) - _2114) + (VREffectsCBuffer_400.x * _2140.y)) + (VREffectsCBuffer_416.x * _2157.z)) * VREffectsCBuffer_368.z) + _2114;
  _2181 = (((((VREffectsCBuffer_384.y * _2123.x) - _2115) + (VREffectsCBuffer_400.y * _2140.y)) + (VREffectsCBuffer_416.y * _2157.z)) * VREffectsCBuffer_368.z) + _2115;
  _2182 = (((((VREffectsCBuffer_384.z * _2123.x) - _2116) + (VREffectsCBuffer_400.z * _2140.y)) + (VREffectsCBuffer_416.z * _2157.z)) * VREffectsCBuffer_368.z) + _2116;
  _2188 = (((-0.0f - VREffectsCBuffer_064.y) - VREffectsCBuffer_064.y) * _20) + VREffectsCBuffer_064.y;
  if (!(VREffectsCBuffer_064.w < 0.5f)) {
    _2192 = _2188 * 0.5f;
    _2193 = _2192 + 0.5f;
    _2212 = 0.5f - _2192;
    _2216 = 1.0f - (((1.0f - _2180) * 2.0f) * _2212);
    _2217 = 1.0f - (((1.0f - _2181) * 2.0f) * _2212);
    _2218 = 1.0f - (((1.0f - _2182) * 2.0f) * _2212);
    _2232 = ((_2216 - _2180) + ((((_2180 * 2.0f) * _2193) - _2216) * select((_2180 > 0.5f), 0.0f, 1.0f)));
    _2233 = ((_2217 - _2181) + ((((_2181 * 2.0f) * _2193) - _2217) * select((_2181 > 0.5f), 0.0f, 1.0f)));
    _2234 = ((_2218 - _2182) + ((((_2182 * 2.0f) * _2193) - _2218) * select((_2182 > 0.5f), 0.0f, 1.0f)));
  } else {
    _2232 = _2188;
    _2233 = _2188;
    _2234 = _2188;
  }
  _2235 = _2232 + _2180;
  _2236 = _2233 + _2181;
  _2237 = _2234 + _2182;
  if (VREffectsCBuffer_464.w > 0.5f) {
    _2243 = int(VREffectsCBuffer_464.x);
    _2251 = int(VREffectsCBuffer_464.z);
    _2264 = t1.SampleBias(s0, float2(((float((int)(_2251 % _2243)) * (1.0f / float((int)(_2243)))) + (_25 / VREffectsCBuffer_464.x)), ((float((int)(_2251 / _2243)) * (1.0f / float((int)(int(VREffectsCBuffer_464.y))))) + (_46 / VREffectsCBuffer_464.y))), (Globals_976), int2(0, 0));
    _2277 = VREffectsCBuffer_480.w * _2264.w;
    _2278 = 1.0f - _2277;
    _2289 = ((_2278 * _2235) + ((VREffectsCBuffer_480.x * _2264.x) * _2277));
    _2290 = ((_2278 * _2236) + ((VREffectsCBuffer_480.y * _2264.y) * _2277));
    _2291 = ((_2278 * _2237) + ((VREffectsCBuffer_480.z * _2264.z) * _2277));
  } else {
    _2289 = _2235;
    _2290 = _2236;
    _2291 = _2237;
  }
  if (VREffectsCBuffer_784.x > 0.5f) {
    _2300 = _37 * (TEXCOORD.x - VREffectsCBuffer_800.x);
    _2302 = (TEXCOORD.y - VREffectsCBuffer_800.y) * 2.0f;
    _2313 = saturate(sqrt((_2300 * _2300) + (_2302 * _2302)) / (VREffectsCBuffer_800.z * sqrt((_28 * _28) + 1.0f)));
    _2322 = exp2(log2(1.0f - ((_2313 * _2313) * (3.0f - (_2313 * 2.0f)))) * VREffectsCBuffer_784.w);
    _2326 = (VREffectsCBuffer_784.y * (_2322 + -1.0f)) + 1.0f;
    _2327 = _2326 * _2289;
    _2328 = _2326 * _2290;
    _2329 = _2326 * _2291;
    _2331 = VREffectsCBuffer_784.z * _2322;
    _2360 = ((((1.0f - _2327) + (select((_2327 > 0.5f), 0.0f, 1.0f) * ((_2327 * 2.0f) + -1.0f))) * _2331) + _2327);
    _2361 = ((((1.0f - _2328) + (select((_2328 > 0.5f), 0.0f, 1.0f) * ((_2328 * 2.0f) + -1.0f))) * _2331) + _2328);
    _2362 = ((((1.0f - _2329) + (select((_2329 > 0.5f), 0.0f, 1.0f) * ((_2329 * 2.0f) + -1.0f))) * _2331) + _2329);
  } else {
    _2360 = _2289;
    _2361 = _2290;
    _2362 = _2291;
  }
  SV_Target.x = _2360;
  SV_Target.y = _2361;
  SV_Target.z = _2362;
  SV_Target.w = _VR_SourceImage0.w;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _VR_SourceImage0.xyz, SV_Target.xyz));

  return SV_Target;
}
