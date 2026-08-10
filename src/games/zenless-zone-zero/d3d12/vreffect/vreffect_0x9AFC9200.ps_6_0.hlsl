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
  float _123;
  float _129;
  float _151;
  float _153;
  float _158;
  float _159;
  float _161;
  float _163;
  float _170;
  float _172;
  float _174;
  float _187;
  float _192;
  float _193;
  float _235;
  float _236;
  float _237;
  float _247;
  float _248;
  float _249;
  float _257;
  float _541;
  float _542;
  float _543;
  float _835;
  float _836;
  float _837;
  float _1267;
  float _1268;
  float _1269;
  float _1554;
  float _1555;
  float _1556;
  float _1841;
  float _1842;
  float _1843;
  float _2128;
  float _2129;
  float _2130;
  float _2246;
  float _2247;
  float _2248;
  float _2303;
  float _2304;
  float _2305;
  float _2374;
  float _2375;
  float _2376;
  float _305;
  float _306;
  float _307;
  float _338;
  float _339;
  float _340;
  float _344;
  float _345;
  float _346;
  float _354;
  float _356;
  float _358;
  float _392;
  float _393;
  float _394;
  float _437;
  float _438;
  float _439;
  float _470;
  float _471;
  float _472;
  float _479;
  float _480;
  float _481;
  float _509;
  float _510;
  float _511;
  float _551;
  float _599;
  float _600;
  float _601;
  float _632;
  float _633;
  float _634;
  float _638;
  float _639;
  float _640;
  float _648;
  float _650;
  float _652;
  float _686;
  float _687;
  float _688;
  float _731;
  float _732;
  float _733;
  float _764;
  float _765;
  float _766;
  float _773;
  float _774;
  float _775;
  float _803;
  float _804;
  float _805;
  float _865;
  float _866;
  float _867;
  float _868;
  float _900;
  float _914;
  float _915;
  float _916;
  float _918;
  float _921;
  float _935;
  float _936;
  float _937;
  float _939;
  float _942;
  float _956;
  float _957;
  float _958;
  float _960;
  float _963;
  float _977;
  float _978;
  float _979;
  float _981;
  float _1031;
  float _1032;
  float _1033;
  float _1064;
  float _1065;
  float _1066;
  float _1070;
  float _1071;
  float _1072;
  float _1080;
  float _1082;
  float _1084;
  float _1118;
  float _1119;
  float _1120;
  float _1163;
  float _1164;
  float _1165;
  float _1196;
  float _1197;
  float _1198;
  float _1205;
  float _1206;
  float _1207;
  float _1235;
  float _1236;
  float _1237;
  float _1318;
  float _1319;
  float _1320;
  float _1351;
  float _1352;
  float _1353;
  float _1357;
  float _1358;
  float _1359;
  float _1367;
  float _1369;
  float _1371;
  float _1405;
  float _1406;
  float _1407;
  float _1450;
  float _1451;
  float _1452;
  float _1483;
  float _1484;
  float _1485;
  float _1492;
  float _1493;
  float _1494;
  float _1522;
  float _1523;
  float _1524;
  float _1605;
  float _1606;
  float _1607;
  float _1638;
  float _1639;
  float _1640;
  float _1644;
  float _1645;
  float _1646;
  float _1654;
  float _1656;
  float _1658;
  float _1692;
  float _1693;
  float _1694;
  float _1737;
  float _1738;
  float _1739;
  float _1770;
  float _1771;
  float _1772;
  float _1779;
  float _1780;
  float _1781;
  float _1809;
  float _1810;
  float _1811;
  float _1892;
  float _1893;
  float _1894;
  float _1925;
  float _1926;
  float _1927;
  float _1931;
  float _1932;
  float _1933;
  float _1941;
  float _1943;
  float _1945;
  float _1979;
  float _1980;
  float _1981;
  float _2024;
  float _2025;
  float _2026;
  float _2057;
  float _2058;
  float _2059;
  float _2066;
  float _2067;
  float _2068;
  float _2096;
  float _2097;
  float _2098;
  float4 _2137;
  float4 _2154;
  float4 _2171;
  float _2194;
  float _2195;
  float _2196;
  float _2202;
  float _2206;
  float _2207;
  float _2226;
  float _2230;
  float _2231;
  float _2232;
  float _2249;
  float _2250;
  float _2251;
  int _2257;
  int _2265;
  float4 _2278;
  float _2291;
  float _2292;
  float _2314;
  float _2316;
  float _2327;
  float _2336;
  float _2340;
  float _2341;
  float _2342;
  float _2343;
  float _2345;

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
  _123 = sqrt(((_115 * _115) + (_116 * _116)) + (_117 * _117));
  _129 = saturate((_123 - VREffectsCBuffer_016.z) * VREffectsCBuffer_016.w);
  _151 = ((VREffectsCBuffer_048.w - VREffectsCBuffer_032.w) * _129) + VREffectsCBuffer_032.w;
  _153 = select((_VR_SourceImage0.y < _VR_SourceImage0.z), 0.0f, 1.0f);
  _158 = (_153 * (_VR_SourceImage0.y - _VR_SourceImage0.z)) + _VR_SourceImage0.z;
  _159 = (_153 * (_VR_SourceImage0.z - _VR_SourceImage0.y)) + _VR_SourceImage0.y;
  _161 = 0.6666666865348816f - _153;
  _163 = select((_VR_SourceImage0.x < _158), 0.0f, 1.0f);
  _170 = (_163 * (_VR_SourceImage0.x - _158)) + _158;
  _172 = (_163 * (_158 - _VR_SourceImage0.x)) + _VR_SourceImage0.x;
  _174 = _170 - min(_172, _159);
  _187 = VREffectsCBuffer_000.x + abs(((_163 * ((_153 + -1.0f) - _161)) + _161) + ((_172 - _159) / ((_174 * 6.0f) + 9.999999747378752e-05f)));
  _192 = saturate((VREffectsCBuffer_000.y + (_174 / (_170 + 9.999999747378752e-05f))) * (1.0f - _151));
  _193 = saturate(VREffectsCBuffer_000.z + _170);
  _235 = ((((((saturate(abs((frac(_187 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _192) + 1.0f) * _193) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _236 = ((((((saturate(abs((frac(_187 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _192) + 1.0f) * _193) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _237 = ((((((saturate(abs((frac(_187 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _192) + 1.0f) * _193) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _247 = (((_235 * (lerp(VREffectsCBuffer_032.x, VREffectsCBuffer_048.x, _129))) - _235) * _151) + _235;
  _248 = (((_236 * (lerp(VREffectsCBuffer_032.y, VREffectsCBuffer_048.y, _129))) - _236) * _151) + _236;
  _249 = (((_237 * (lerp(VREffectsCBuffer_032.z, VREffectsCBuffer_048.z, _129))) - _237) * _151) + _237;
  _257 = VREffectsCBuffer_096.w * _52;
  [branch]
  if (VREffectsCBuffer_128.x < 0.5f) {
    _541 = (lerp(_247, VREffectsCBuffer_096.x, _257));
    _542 = (lerp(_248, VREffectsCBuffer_096.y, _257));
    _543 = (lerp(_249, VREffectsCBuffer_096.z, _257));
  } else {
    if (VREffectsCBuffer_128.x < 1.5f) {
      _541 = (_247 + (_257 * VREffectsCBuffer_096.x));
      _542 = (_248 + (_257 * VREffectsCBuffer_096.y));
      _543 = (_249 + (_257 * VREffectsCBuffer_096.z));
    } else {
      if (VREffectsCBuffer_128.x < 2.5f) {
        _305 = select((_247 > 1.0f), _247, saturate((exp2(log2(abs(_247)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _306 = select((_248 > 1.0f), _248, saturate((exp2(log2(abs(_248)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _307 = select((_249 > 1.0f), _249, saturate((exp2(log2(abs(_249)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _338 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _257;
        _339 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _257;
        _340 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _257;
        _344 = (_338 + 0.5f) * 2.0f;
        _345 = (_339 + 0.5f) * 2.0f;
        _346 = (_340 + 0.5f) * 2.0f;
        _354 = (lerp(_344, 1.0f, _305)) * _305;
        _356 = (lerp(_345, 1.0f, _306)) * _306;
        _358 = (lerp(_346, 1.0f, _307)) * _307;
        _392 = (((((_344 + -1.0f) * sqrt(_305)) + ((_305 * 2.0f) * (0.5f - _338))) - _354) * select((_305 < 0.5f), 0.0f, 1.0f)) + _354;
        _393 = (((((_345 + -1.0f) * sqrt(_306)) + ((_306 * 2.0f) * (0.5f - _339))) - _356) * select((_306 < 0.5f), 0.0f, 1.0f)) + _356;
        _394 = (((((_346 + -1.0f) * sqrt(_307)) + ((_307 * 2.0f) * (0.5f - _340))) - _358) * select((_307 < 0.5f), 0.0f, 1.0f)) + _358;
        _541 = (((((_392 * 0.30530601739883423f) + 0.682171106338501f) * _392) + 0.012522878125309944f) * _392);
        _542 = (((((_393 * 0.30530601739883423f) + 0.682171106338501f) * _393) + 0.012522878125309944f) * _393);
        _543 = (((((_394 * 0.30530601739883423f) + 0.682171106338501f) * _394) + 0.012522878125309944f) * _394);
      } else {
        if (VREffectsCBuffer_128.x < 3.5f) {
          _437 = select((_247 > 1.0f), _247, saturate((exp2(log2(abs(_247)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _438 = select((_248 > 1.0f), _248, saturate((exp2(log2(abs(_248)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _439 = select((_249 > 1.0f), _249, saturate((exp2(log2(abs(_249)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _470 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _257;
          _471 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _257;
          _472 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _257;
          _479 = (_437 * 2.0f) * (_470 + 0.5f);
          _480 = (_438 * 2.0f) * (_471 + 0.5f);
          _481 = (_439 * 2.0f) * (_472 + 0.5f);
          _509 = (((1.0f - (((1.0f - _437) * 2.0f) * (0.5f - _470))) - _479) * select((_437 < 0.5f), 0.0f, 1.0f)) + _479;
          _510 = (((1.0f - (((1.0f - _438) * 2.0f) * (0.5f - _471))) - _480) * select((_438 < 0.5f), 0.0f, 1.0f)) + _480;
          _511 = (((1.0f - (((1.0f - _439) * 2.0f) * (0.5f - _472))) - _481) * select((_439 < 0.5f), 0.0f, 1.0f)) + _481;
          _541 = (((((_509 * 0.30530601739883423f) + 0.682171106338501f) * _509) + 0.012522878125309944f) * _509);
          _542 = (((((_510 * 0.30530601739883423f) + 0.682171106338501f) * _510) + 0.012522878125309944f) * _510);
          _543 = (((((_511 * 0.30530601739883423f) + 0.682171106338501f) * _511) + 0.012522878125309944f) * _511);
        } else {
          _541 = (_247 * ((_257 * (VREffectsCBuffer_096.x + -1.0f)) + 1.0f));
          _542 = (_248 * ((_257 * (VREffectsCBuffer_096.y + -1.0f)) + 1.0f));
          _543 = (_249 * ((_257 * (VREffectsCBuffer_096.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  _551 = VREffectsCBuffer_112.w * (1.0f - _52);
  [branch]
  if (VREffectsCBuffer_128.y < 0.5f) {
    _835 = ((_551 * (VREffectsCBuffer_112.x - _541)) + _541);
    _836 = ((_551 * (VREffectsCBuffer_112.y - _542)) + _542);
    _837 = ((_551 * (VREffectsCBuffer_112.z - _543)) + _543);
  } else {
    if (VREffectsCBuffer_128.y < 1.5f) {
      _835 = ((_551 * VREffectsCBuffer_112.x) + _541);
      _836 = ((_551 * VREffectsCBuffer_112.y) + _542);
      _837 = ((_551 * VREffectsCBuffer_112.z) + _543);
    } else {
      if (VREffectsCBuffer_128.y < 2.5f) {
        _599 = select((_541 > 1.0f), _541, saturate((exp2(log2(abs(_541)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _600 = select((_542 > 1.0f), _542, saturate((exp2(log2(abs(_542)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _601 = select((_543 > 1.0f), _543, saturate((exp2(log2(abs(_543)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _632 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _551;
        _633 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _551;
        _634 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _551;
        _638 = (_632 + 0.5f) * 2.0f;
        _639 = (_633 + 0.5f) * 2.0f;
        _640 = (_634 + 0.5f) * 2.0f;
        _648 = (lerp(_638, 1.0f, _599)) * _599;
        _650 = (lerp(_639, 1.0f, _600)) * _600;
        _652 = (lerp(_640, 1.0f, _601)) * _601;
        _686 = (((((_638 + -1.0f) * sqrt(_599)) + ((_599 * 2.0f) * (0.5f - _632))) - _648) * select((_599 < 0.5f), 0.0f, 1.0f)) + _648;
        _687 = (((((_639 + -1.0f) * sqrt(_600)) + ((_600 * 2.0f) * (0.5f - _633))) - _650) * select((_600 < 0.5f), 0.0f, 1.0f)) + _650;
        _688 = (((((_640 + -1.0f) * sqrt(_601)) + ((_601 * 2.0f) * (0.5f - _634))) - _652) * select((_601 < 0.5f), 0.0f, 1.0f)) + _652;
        _835 = (((((_686 * 0.30530601739883423f) + 0.682171106338501f) * _686) + 0.012522878125309944f) * _686);
        _836 = (((((_687 * 0.30530601739883423f) + 0.682171106338501f) * _687) + 0.012522878125309944f) * _687);
        _837 = (((((_688 * 0.30530601739883423f) + 0.682171106338501f) * _688) + 0.012522878125309944f) * _688);
      } else {
        if (VREffectsCBuffer_128.y < 3.5f) {
          _731 = select((_541 > 1.0f), _541, saturate((exp2(log2(abs(_541)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _732 = select((_542 > 1.0f), _542, saturate((exp2(log2(abs(_542)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _733 = select((_543 > 1.0f), _543, saturate((exp2(log2(abs(_543)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _764 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _551;
          _765 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _551;
          _766 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _551;
          _773 = (_731 * 2.0f) * (_764 + 0.5f);
          _774 = (_732 * 2.0f) * (_765 + 0.5f);
          _775 = (_733 * 2.0f) * (_766 + 0.5f);
          _803 = (((1.0f - (((1.0f - _731) * 2.0f) * (0.5f - _764))) - _773) * select((_731 < 0.5f), 0.0f, 1.0f)) + _773;
          _804 = (((1.0f - (((1.0f - _732) * 2.0f) * (0.5f - _765))) - _774) * select((_732 < 0.5f), 0.0f, 1.0f)) + _774;
          _805 = (((1.0f - (((1.0f - _733) * 2.0f) * (0.5f - _766))) - _775) * select((_733 < 0.5f), 0.0f, 1.0f)) + _775;
          _835 = (((((_803 * 0.30530601739883423f) + 0.682171106338501f) * _803) + 0.012522878125309944f) * _803);
          _836 = (((((_804 * 0.30530601739883423f) + 0.682171106338501f) * _804) + 0.012522878125309944f) * _804);
          _837 = (((((_805 * 0.30530601739883423f) + 0.682171106338501f) * _805) + 0.012522878125309944f) * _805);
        } else {
          _835 = (((_551 * (VREffectsCBuffer_112.x + -1.0f)) + 1.0f) * _541);
          _836 = (((_551 * (VREffectsCBuffer_112.y + -1.0f)) + 1.0f) * _542);
          _837 = (((_551 * (VREffectsCBuffer_112.z + -1.0f)) + 1.0f) * _543);
        }
      }
    }
  }
  _865 = _123 - VREffectsCBuffer_144.x;
  _866 = _123 - VREffectsCBuffer_144.y;
  _867 = _123 - VREffectsCBuffer_144.z;
  _868 = _123 - VREffectsCBuffer_144.w;
  _900 = VREffectsCBuffer_240.w * saturate(_865 / (VREffectsCBuffer_160.x - VREffectsCBuffer_144.x));
  _914 = ((VREffectsCBuffer_240.x - VREffectsCBuffer_224.x) * _900) + VREffectsCBuffer_224.x;
  _915 = ((VREffectsCBuffer_240.y - VREffectsCBuffer_224.y) * _900) + VREffectsCBuffer_224.y;
  _916 = ((VREffectsCBuffer_240.z - VREffectsCBuffer_224.z) * _900) + VREffectsCBuffer_224.z;
  _918 = VREffectsCBuffer_224.w * min(saturate(_865 * VREffectsCBuffer_176.x), saturate((VREffectsCBuffer_160.x - _123) * VREffectsCBuffer_192.x));
  _921 = VREffectsCBuffer_272.w * saturate(_866 / (VREffectsCBuffer_160.y - VREffectsCBuffer_144.y));
  _935 = ((VREffectsCBuffer_272.x - VREffectsCBuffer_256.x) * _921) + VREffectsCBuffer_256.x;
  _936 = ((VREffectsCBuffer_272.y - VREffectsCBuffer_256.y) * _921) + VREffectsCBuffer_256.y;
  _937 = ((VREffectsCBuffer_272.z - VREffectsCBuffer_256.z) * _921) + VREffectsCBuffer_256.z;
  _939 = VREffectsCBuffer_256.w * min(saturate(_866 * VREffectsCBuffer_176.y), saturate((VREffectsCBuffer_160.y - _123) * VREffectsCBuffer_192.y));
  _942 = VREffectsCBuffer_304.w * saturate(_867 / (VREffectsCBuffer_160.z - VREffectsCBuffer_144.z));
  _956 = ((VREffectsCBuffer_304.x - VREffectsCBuffer_288.x) * _942) + VREffectsCBuffer_288.x;
  _957 = ((VREffectsCBuffer_304.y - VREffectsCBuffer_288.y) * _942) + VREffectsCBuffer_288.y;
  _958 = ((VREffectsCBuffer_304.z - VREffectsCBuffer_288.z) * _942) + VREffectsCBuffer_288.z;
  _960 = VREffectsCBuffer_288.w * min(saturate(_867 * VREffectsCBuffer_176.z), saturate((VREffectsCBuffer_160.z - _123) * VREffectsCBuffer_192.z));
  _963 = VREffectsCBuffer_336.w * saturate(_868 / (VREffectsCBuffer_160.w - VREffectsCBuffer_144.w));
  _977 = ((VREffectsCBuffer_336.x - VREffectsCBuffer_320.x) * _963) + VREffectsCBuffer_320.x;
  _978 = ((VREffectsCBuffer_336.y - VREffectsCBuffer_320.y) * _963) + VREffectsCBuffer_320.y;
  _979 = ((VREffectsCBuffer_336.z - VREffectsCBuffer_320.z) * _963) + VREffectsCBuffer_320.z;
  _981 = VREffectsCBuffer_320.w * min(saturate(_868 * VREffectsCBuffer_176.w), saturate((VREffectsCBuffer_160.w - _123) * VREffectsCBuffer_192.w));
  [branch]
  if (VREffectsCBuffer_208.x < 0.5f) {
    _1267 = (lerp(_835, _914, _918));
    _1268 = (lerp(_836, _915, _918));
    _1269 = (lerp(_837, _916, _918));
  } else {
    if (VREffectsCBuffer_208.x < 1.5f) {
      _1267 = ((_914 * _918) + _835);
      _1268 = ((_915 * _918) + _836);
      _1269 = ((_916 * _918) + _837);
    } else {
      if (VREffectsCBuffer_208.x < 2.5f) {
        _1031 = select((_835 > 1.0f), _835, saturate((exp2(log2(abs(_835)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1032 = select((_836 > 1.0f), _836, saturate((exp2(log2(abs(_836)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1033 = select((_837 > 1.0f), _837, saturate((exp2(log2(abs(_837)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1064 = (select((_914 > 1.0f), _914, saturate((exp2(log2(abs(_914)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _918;
        _1065 = (select((_915 > 1.0f), _915, saturate((exp2(log2(abs(_915)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _918;
        _1066 = (select((_916 > 1.0f), _916, saturate((exp2(log2(abs(_916)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _918;
        _1070 = (_1064 + 0.5f) * 2.0f;
        _1071 = (_1065 + 0.5f) * 2.0f;
        _1072 = (_1066 + 0.5f) * 2.0f;
        _1080 = (lerp(_1070, 1.0f, _1031)) * _1031;
        _1082 = (lerp(_1071, 1.0f, _1032)) * _1032;
        _1084 = (lerp(_1072, 1.0f, _1033)) * _1033;
        _1118 = (((((_1070 + -1.0f) * sqrt(_1031)) + ((_1031 * 2.0f) * (0.5f - _1064))) - _1080) * select((_1031 < 0.5f), 0.0f, 1.0f)) + _1080;
        _1119 = (((((_1071 + -1.0f) * sqrt(_1032)) + ((_1032 * 2.0f) * (0.5f - _1065))) - _1082) * select((_1032 < 0.5f), 0.0f, 1.0f)) + _1082;
        _1120 = (((((_1072 + -1.0f) * sqrt(_1033)) + ((_1033 * 2.0f) * (0.5f - _1066))) - _1084) * select((_1033 < 0.5f), 0.0f, 1.0f)) + _1084;
        _1267 = (((((_1118 * 0.30530601739883423f) + 0.682171106338501f) * _1118) + 0.012522878125309944f) * _1118);
        _1268 = (((((_1119 * 0.30530601739883423f) + 0.682171106338501f) * _1119) + 0.012522878125309944f) * _1119);
        _1269 = (((((_1120 * 0.30530601739883423f) + 0.682171106338501f) * _1120) + 0.012522878125309944f) * _1120);
      } else {
        if (VREffectsCBuffer_208.x < 3.5f) {
          _1163 = select((_835 > 1.0f), _835, saturate((exp2(log2(abs(_835)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1164 = select((_836 > 1.0f), _836, saturate((exp2(log2(abs(_836)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1165 = select((_837 > 1.0f), _837, saturate((exp2(log2(abs(_837)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1196 = (select((_914 > 1.0f), _914, saturate((exp2(log2(abs(_914)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _918;
          _1197 = (select((_915 > 1.0f), _915, saturate((exp2(log2(abs(_915)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _918;
          _1198 = (select((_916 > 1.0f), _916, saturate((exp2(log2(abs(_916)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _918;
          _1205 = (_1163 * 2.0f) * (_1196 + 0.5f);
          _1206 = (_1164 * 2.0f) * (_1197 + 0.5f);
          _1207 = (_1165 * 2.0f) * (_1198 + 0.5f);
          _1235 = (((1.0f - (((1.0f - _1163) * 2.0f) * (0.5f - _1196))) - _1205) * select((_1163 < 0.5f), 0.0f, 1.0f)) + _1205;
          _1236 = (((1.0f - (((1.0f - _1164) * 2.0f) * (0.5f - _1197))) - _1206) * select((_1164 < 0.5f), 0.0f, 1.0f)) + _1206;
          _1237 = (((1.0f - (((1.0f - _1165) * 2.0f) * (0.5f - _1198))) - _1207) * select((_1165 < 0.5f), 0.0f, 1.0f)) + _1207;
          _1267 = (((((_1235 * 0.30530601739883423f) + 0.682171106338501f) * _1235) + 0.012522878125309944f) * _1235);
          _1268 = (((((_1236 * 0.30530601739883423f) + 0.682171106338501f) * _1236) + 0.012522878125309944f) * _1236);
          _1269 = (((((_1237 * 0.30530601739883423f) + 0.682171106338501f) * _1237) + 0.012522878125309944f) * _1237);
        } else {
          _1267 = ((((_914 + -1.0f) * _918) + 1.0f) * _835);
          _1268 = ((((_915 + -1.0f) * _918) + 1.0f) * _836);
          _1269 = ((((_916 + -1.0f) * _918) + 1.0f) * _837);
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.y < 0.5f) {
    _1554 = (lerp(_1267, _935, _939));
    _1555 = (lerp(_1268, _936, _939));
    _1556 = (lerp(_1269, _937, _939));
  } else {
    if (VREffectsCBuffer_208.y < 1.5f) {
      _1554 = (_1267 + (_935 * _939));
      _1555 = (_1268 + (_936 * _939));
      _1556 = (_1269 + (_937 * _939));
    } else {
      if (VREffectsCBuffer_208.y < 2.5f) {
        _1318 = select((_1267 > 1.0f), _1267, saturate((exp2(log2(abs(_1267)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1319 = select((_1268 > 1.0f), _1268, saturate((exp2(log2(abs(_1268)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1320 = select((_1269 > 1.0f), _1269, saturate((exp2(log2(abs(_1269)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1351 = (select((_935 > 1.0f), _935, saturate((exp2(log2(abs(_935)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _939;
        _1352 = (select((_936 > 1.0f), _936, saturate((exp2(log2(abs(_936)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _939;
        _1353 = (select((_937 > 1.0f), _937, saturate((exp2(log2(abs(_937)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _939;
        _1357 = (_1351 + 0.5f) * 2.0f;
        _1358 = (_1352 + 0.5f) * 2.0f;
        _1359 = (_1353 + 0.5f) * 2.0f;
        _1367 = (lerp(_1357, 1.0f, _1318)) * _1318;
        _1369 = (lerp(_1358, 1.0f, _1319)) * _1319;
        _1371 = (lerp(_1359, 1.0f, _1320)) * _1320;
        _1405 = (((((_1357 + -1.0f) * sqrt(_1318)) + ((_1318 * 2.0f) * (0.5f - _1351))) - _1367) * select((_1318 < 0.5f), 0.0f, 1.0f)) + _1367;
        _1406 = (((((_1358 + -1.0f) * sqrt(_1319)) + ((_1319 * 2.0f) * (0.5f - _1352))) - _1369) * select((_1319 < 0.5f), 0.0f, 1.0f)) + _1369;
        _1407 = (((((_1359 + -1.0f) * sqrt(_1320)) + ((_1320 * 2.0f) * (0.5f - _1353))) - _1371) * select((_1320 < 0.5f), 0.0f, 1.0f)) + _1371;
        _1554 = (((((_1405 * 0.30530601739883423f) + 0.682171106338501f) * _1405) + 0.012522878125309944f) * _1405);
        _1555 = (((((_1406 * 0.30530601739883423f) + 0.682171106338501f) * _1406) + 0.012522878125309944f) * _1406);
        _1556 = (((((_1407 * 0.30530601739883423f) + 0.682171106338501f) * _1407) + 0.012522878125309944f) * _1407);
      } else {
        if (VREffectsCBuffer_208.y < 3.5f) {
          _1450 = select((_1267 > 1.0f), _1267, saturate((exp2(log2(abs(_1267)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1451 = select((_1268 > 1.0f), _1268, saturate((exp2(log2(abs(_1268)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1452 = select((_1269 > 1.0f), _1269, saturate((exp2(log2(abs(_1269)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1483 = (select((_935 > 1.0f), _935, saturate((exp2(log2(abs(_935)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _939;
          _1484 = (select((_936 > 1.0f), _936, saturate((exp2(log2(abs(_936)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _939;
          _1485 = (select((_937 > 1.0f), _937, saturate((exp2(log2(abs(_937)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _939;
          _1492 = (_1450 * 2.0f) * (_1483 + 0.5f);
          _1493 = (_1451 * 2.0f) * (_1484 + 0.5f);
          _1494 = (_1452 * 2.0f) * (_1485 + 0.5f);
          _1522 = (((1.0f - (((1.0f - _1450) * 2.0f) * (0.5f - _1483))) - _1492) * select((_1450 < 0.5f), 0.0f, 1.0f)) + _1492;
          _1523 = (((1.0f - (((1.0f - _1451) * 2.0f) * (0.5f - _1484))) - _1493) * select((_1451 < 0.5f), 0.0f, 1.0f)) + _1493;
          _1524 = (((1.0f - (((1.0f - _1452) * 2.0f) * (0.5f - _1485))) - _1494) * select((_1452 < 0.5f), 0.0f, 1.0f)) + _1494;
          _1554 = (((((_1522 * 0.30530601739883423f) + 0.682171106338501f) * _1522) + 0.012522878125309944f) * _1522);
          _1555 = (((((_1523 * 0.30530601739883423f) + 0.682171106338501f) * _1523) + 0.012522878125309944f) * _1523);
          _1556 = (((((_1524 * 0.30530601739883423f) + 0.682171106338501f) * _1524) + 0.012522878125309944f) * _1524);
        } else {
          _1554 = (_1267 * (((_935 + -1.0f) * _939) + 1.0f));
          _1555 = (_1268 * (((_936 + -1.0f) * _939) + 1.0f));
          _1556 = (_1269 * (((_937 + -1.0f) * _939) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.z < 0.5f) {
    _1841 = (lerp(_1554, _956, _960));
    _1842 = (lerp(_1555, _957, _960));
    _1843 = (lerp(_1556, _958, _960));
  } else {
    if (VREffectsCBuffer_208.z < 1.5f) {
      _1841 = (_1554 + (_956 * _960));
      _1842 = (_1555 + (_957 * _960));
      _1843 = (_1556 + (_958 * _960));
    } else {
      if (VREffectsCBuffer_208.z < 2.5f) {
        _1605 = select((_1554 > 1.0f), _1554, saturate((exp2(log2(abs(_1554)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1606 = select((_1555 > 1.0f), _1555, saturate((exp2(log2(abs(_1555)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1607 = select((_1556 > 1.0f), _1556, saturate((exp2(log2(abs(_1556)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1638 = (select((_956 > 1.0f), _956, saturate((exp2(log2(abs(_956)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _960;
        _1639 = (select((_957 > 1.0f), _957, saturate((exp2(log2(abs(_957)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _960;
        _1640 = (select((_958 > 1.0f), _958, saturate((exp2(log2(abs(_958)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _960;
        _1644 = (_1638 + 0.5f) * 2.0f;
        _1645 = (_1639 + 0.5f) * 2.0f;
        _1646 = (_1640 + 0.5f) * 2.0f;
        _1654 = (lerp(_1644, 1.0f, _1605)) * _1605;
        _1656 = (lerp(_1645, 1.0f, _1606)) * _1606;
        _1658 = (lerp(_1646, 1.0f, _1607)) * _1607;
        _1692 = (((((_1644 + -1.0f) * sqrt(_1605)) + ((_1605 * 2.0f) * (0.5f - _1638))) - _1654) * select((_1605 < 0.5f), 0.0f, 1.0f)) + _1654;
        _1693 = (((((_1645 + -1.0f) * sqrt(_1606)) + ((_1606 * 2.0f) * (0.5f - _1639))) - _1656) * select((_1606 < 0.5f), 0.0f, 1.0f)) + _1656;
        _1694 = (((((_1646 + -1.0f) * sqrt(_1607)) + ((_1607 * 2.0f) * (0.5f - _1640))) - _1658) * select((_1607 < 0.5f), 0.0f, 1.0f)) + _1658;
        _1841 = (((((_1692 * 0.30530601739883423f) + 0.682171106338501f) * _1692) + 0.012522878125309944f) * _1692);
        _1842 = (((((_1693 * 0.30530601739883423f) + 0.682171106338501f) * _1693) + 0.012522878125309944f) * _1693);
        _1843 = (((((_1694 * 0.30530601739883423f) + 0.682171106338501f) * _1694) + 0.012522878125309944f) * _1694);
      } else {
        if (VREffectsCBuffer_208.z < 3.5f) {
          _1737 = select((_1554 > 1.0f), _1554, saturate((exp2(log2(abs(_1554)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1738 = select((_1555 > 1.0f), _1555, saturate((exp2(log2(abs(_1555)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1739 = select((_1556 > 1.0f), _1556, saturate((exp2(log2(abs(_1556)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1770 = (select((_956 > 1.0f), _956, saturate((exp2(log2(abs(_956)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _960;
          _1771 = (select((_957 > 1.0f), _957, saturate((exp2(log2(abs(_957)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _960;
          _1772 = (select((_958 > 1.0f), _958, saturate((exp2(log2(abs(_958)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _960;
          _1779 = (_1737 * 2.0f) * (_1770 + 0.5f);
          _1780 = (_1738 * 2.0f) * (_1771 + 0.5f);
          _1781 = (_1739 * 2.0f) * (_1772 + 0.5f);
          _1809 = (((1.0f - (((1.0f - _1737) * 2.0f) * (0.5f - _1770))) - _1779) * select((_1737 < 0.5f), 0.0f, 1.0f)) + _1779;
          _1810 = (((1.0f - (((1.0f - _1738) * 2.0f) * (0.5f - _1771))) - _1780) * select((_1738 < 0.5f), 0.0f, 1.0f)) + _1780;
          _1811 = (((1.0f - (((1.0f - _1739) * 2.0f) * (0.5f - _1772))) - _1781) * select((_1739 < 0.5f), 0.0f, 1.0f)) + _1781;
          _1841 = (((((_1809 * 0.30530601739883423f) + 0.682171106338501f) * _1809) + 0.012522878125309944f) * _1809);
          _1842 = (((((_1810 * 0.30530601739883423f) + 0.682171106338501f) * _1810) + 0.012522878125309944f) * _1810);
          _1843 = (((((_1811 * 0.30530601739883423f) + 0.682171106338501f) * _1811) + 0.012522878125309944f) * _1811);
        } else {
          _1841 = (_1554 * (((_956 + -1.0f) * _960) + 1.0f));
          _1842 = (_1555 * (((_957 + -1.0f) * _960) + 1.0f));
          _1843 = (_1556 * (((_958 + -1.0f) * _960) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.w < 0.5f) {
    _2128 = (lerp(_1841, _977, _981));
    _2129 = (lerp(_1842, _978, _981));
    _2130 = (lerp(_1843, _979, _981));
  } else {
    if (VREffectsCBuffer_208.w < 1.5f) {
      _2128 = (_1841 + (_977 * _981));
      _2129 = (_1842 + (_978 * _981));
      _2130 = (_1843 + (_979 * _981));
    } else {
      if (VREffectsCBuffer_208.w < 2.5f) {
        _1892 = select((_1841 > 1.0f), _1841, saturate((exp2(log2(abs(_1841)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1893 = select((_1842 > 1.0f), _1842, saturate((exp2(log2(abs(_1842)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1894 = select((_1843 > 1.0f), _1843, saturate((exp2(log2(abs(_1843)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1925 = (select((_977 > 1.0f), _977, saturate((exp2(log2(abs(_977)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _981;
        _1926 = (select((_978 > 1.0f), _978, saturate((exp2(log2(abs(_978)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _981;
        _1927 = (select((_979 > 1.0f), _979, saturate((exp2(log2(abs(_979)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _981;
        _1931 = (_1925 + 0.5f) * 2.0f;
        _1932 = (_1926 + 0.5f) * 2.0f;
        _1933 = (_1927 + 0.5f) * 2.0f;
        _1941 = (lerp(_1931, 1.0f, _1892)) * _1892;
        _1943 = (lerp(_1932, 1.0f, _1893)) * _1893;
        _1945 = (lerp(_1933, 1.0f, _1894)) * _1894;
        _1979 = (((((_1931 + -1.0f) * sqrt(_1892)) + ((_1892 * 2.0f) * (0.5f - _1925))) - _1941) * select((_1892 < 0.5f), 0.0f, 1.0f)) + _1941;
        _1980 = (((((_1932 + -1.0f) * sqrt(_1893)) + ((_1893 * 2.0f) * (0.5f - _1926))) - _1943) * select((_1893 < 0.5f), 0.0f, 1.0f)) + _1943;
        _1981 = (((((_1933 + -1.0f) * sqrt(_1894)) + ((_1894 * 2.0f) * (0.5f - _1927))) - _1945) * select((_1894 < 0.5f), 0.0f, 1.0f)) + _1945;
        _2128 = (((((_1979 * 0.30530601739883423f) + 0.682171106338501f) * _1979) + 0.012522878125309944f) * _1979);
        _2129 = (((((_1980 * 0.30530601739883423f) + 0.682171106338501f) * _1980) + 0.012522878125309944f) * _1980);
        _2130 = (((((_1981 * 0.30530601739883423f) + 0.682171106338501f) * _1981) + 0.012522878125309944f) * _1981);
      } else {
        if (VREffectsCBuffer_208.w < 3.5f) {
          _2024 = select((_1841 > 1.0f), _1841, saturate((exp2(log2(abs(_1841)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2025 = select((_1842 > 1.0f), _1842, saturate((exp2(log2(abs(_1842)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2026 = select((_1843 > 1.0f), _1843, saturate((exp2(log2(abs(_1843)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2057 = (select((_977 > 1.0f), _977, saturate((exp2(log2(abs(_977)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _981;
          _2058 = (select((_978 > 1.0f), _978, saturate((exp2(log2(abs(_978)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _981;
          _2059 = (select((_979 > 1.0f), _979, saturate((exp2(log2(abs(_979)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _981;
          _2066 = (_2024 * 2.0f) * (_2057 + 0.5f);
          _2067 = (_2025 * 2.0f) * (_2058 + 0.5f);
          _2068 = (_2026 * 2.0f) * (_2059 + 0.5f);
          _2096 = (((1.0f - (((1.0f - _2024) * 2.0f) * (0.5f - _2057))) - _2066) * select((_2024 < 0.5f), 0.0f, 1.0f)) + _2066;
          _2097 = (((1.0f - (((1.0f - _2025) * 2.0f) * (0.5f - _2058))) - _2067) * select((_2025 < 0.5f), 0.0f, 1.0f)) + _2067;
          _2098 = (((1.0f - (((1.0f - _2026) * 2.0f) * (0.5f - _2059))) - _2068) * select((_2026 < 0.5f), 0.0f, 1.0f)) + _2068;
          _2128 = (((((_2096 * 0.30530601739883423f) + 0.682171106338501f) * _2096) + 0.012522878125309944f) * _2096);
          _2129 = (((((_2097 * 0.30530601739883423f) + 0.682171106338501f) * _2097) + 0.012522878125309944f) * _2097);
          _2130 = (((((_2098 * 0.30530601739883423f) + 0.682171106338501f) * _2098) + 0.012522878125309944f) * _2098);
        } else {
          _2128 = (_1841 * (((_977 + -1.0f) * _981) + 1.0f));
          _2129 = (_1842 * (((_978 + -1.0f) * _981) + 1.0f));
          _2130 = (_1843 * (((_979 + -1.0f) * _981) + 1.0f));
        }
      }
    }
  }
  _2137 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.x + _26), ((VREffectsCBuffer_352.y * _29) + _47)), (Globals_976), int2(0, 0));
  _2154 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.z + _26), ((VREffectsCBuffer_352.w * _29) + _47)), (Globals_976), int2(0, 0));
  _2171 = t1.SampleBias(s1, float2((VREffectsCBuffer_368.x + _26), ((VREffectsCBuffer_368.y * _29) + _47)), (Globals_976), int2(0, 0));

  _2137.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2137.xyz), 1.0f, 0.5f);
  _2154.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2154.xyz), 1.0f, 0.5f);
  _2171.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2171.xyz), 1.0f, 0.5f);

  _2194 = (((((VREffectsCBuffer_384.x * _2137.x) - _2128) + (VREffectsCBuffer_400.x * _2154.y)) + (VREffectsCBuffer_416.x * _2171.z)) * VREffectsCBuffer_368.z) + _2128;
  _2195 = (((((VREffectsCBuffer_384.y * _2137.x) - _2129) + (VREffectsCBuffer_400.y * _2154.y)) + (VREffectsCBuffer_416.y * _2171.z)) * VREffectsCBuffer_368.z) + _2129;
  _2196 = (((((VREffectsCBuffer_384.z * _2137.x) - _2130) + (VREffectsCBuffer_400.z * _2154.y)) + (VREffectsCBuffer_416.z * _2171.z)) * VREffectsCBuffer_368.z) + _2130;
  _2202 = (((-0.0f - VREffectsCBuffer_064.y) - VREffectsCBuffer_064.y) * _21) + VREffectsCBuffer_064.y;
  if (!(VREffectsCBuffer_064.w < 0.5f)) {
    _2206 = _2202 * 0.5f;
    _2207 = _2206 + 0.5f;
    _2226 = 0.5f - _2206;
    _2230 = 1.0f - (((1.0f - _2194) * 2.0f) * _2226);
    _2231 = 1.0f - (((1.0f - _2195) * 2.0f) * _2226);
    _2232 = 1.0f - (((1.0f - _2196) * 2.0f) * _2226);
    _2246 = ((_2230 - _2194) + ((((_2194 * 2.0f) * _2207) - _2230) * select((_2194 > 0.5f), 0.0f, 1.0f)));
    _2247 = ((_2231 - _2195) + ((((_2195 * 2.0f) * _2207) - _2231) * select((_2195 > 0.5f), 0.0f, 1.0f)));
    _2248 = ((_2232 - _2196) + ((((_2196 * 2.0f) * _2207) - _2232) * select((_2196 > 0.5f), 0.0f, 1.0f)));
  } else {
    _2246 = _2202;
    _2247 = _2202;
    _2248 = _2202;
  }
  _2249 = _2246 + _2194;
  _2250 = _2247 + _2195;
  _2251 = _2248 + _2196;
  if (VREffectsCBuffer_464.w > 0.5f) {
    _2257 = int(VREffectsCBuffer_464.x);
    _2265 = int(VREffectsCBuffer_464.z);
    _2278 = t2.SampleBias(s1, float2(((float((int)(_2265 % _2257)) * (1.0f / float((int)(_2257)))) + (_26 / VREffectsCBuffer_464.x)), ((float((int)(_2265 / _2257)) * (1.0f / float((int)(int(VREffectsCBuffer_464.y))))) + (_47 / VREffectsCBuffer_464.y))), (Globals_976), int2(0, 0));
    _2291 = VREffectsCBuffer_480.w * _2278.w;
    _2292 = 1.0f - _2291;
    _2303 = ((_2292 * _2249) + ((VREffectsCBuffer_480.x * _2278.x) * _2291));
    _2304 = ((_2292 * _2250) + ((VREffectsCBuffer_480.y * _2278.y) * _2291));
    _2305 = ((_2292 * _2251) + ((VREffectsCBuffer_480.z * _2278.z) * _2291));
  } else {
    _2303 = _2249;
    _2304 = _2250;
    _2305 = _2251;
  }
  if (VREffectsCBuffer_784.x > 0.5f) {
    _2314 = _38 * (TEXCOORD.x - VREffectsCBuffer_800.x);
    _2316 = (TEXCOORD.y - VREffectsCBuffer_800.y) * 2.0f;
    _2327 = saturate(sqrt((_2314 * _2314) + (_2316 * _2316)) / (VREffectsCBuffer_800.z * sqrt((_29 * _29) + 1.0f)));
    _2336 = exp2(log2(1.0f - ((_2327 * _2327) * (3.0f - (_2327 * 2.0f)))) * VREffectsCBuffer_784.w);
    _2340 = (VREffectsCBuffer_784.y * (_2336 + -1.0f)) + 1.0f;
    _2341 = _2340 * _2303;
    _2342 = _2340 * _2304;
    _2343 = _2340 * _2305;
    _2345 = VREffectsCBuffer_784.z * _2336;
    _2374 = ((((1.0f - _2341) + (select((_2341 > 0.5f), 0.0f, 1.0f) * ((_2341 * 2.0f) + -1.0f))) * _2345) + _2341);
    _2375 = ((((1.0f - _2342) + (select((_2342 > 0.5f), 0.0f, 1.0f) * ((_2342 * 2.0f) + -1.0f))) * _2345) + _2342);
    _2376 = ((((1.0f - _2343) + (select((_2343 > 0.5f), 0.0f, 1.0f) * ((_2343 * 2.0f) + -1.0f))) * _2345) + _2343);
  } else {
    _2374 = _2303;
    _2375 = _2304;
    _2376 = _2305;
  }
  SV_Target.x = _2374;
  SV_Target.y = _2375;
  SV_Target.z = _2376;
  SV_Target.w = _VR_SourceImage0.w;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _VR_SourceImage0.xyz, SV_Target.xyz));

  return SV_Target;
}
