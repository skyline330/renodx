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

SamplerState s2 : register(s2);

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
  float _20;
  float _23;
  float _28;
  float _31;
  float _40;
  bool _46;
  float _49;
  float _54;
  float4 _57;
  float _77;
  float _78;
  float _571;
  float _572;
  float _573;
  float _865;
  float _866;
  float _867;
  float _1297;
  float _1298;
  float _1299;
  float _1584;
  float _1585;
  float _1586;
  float _1871;
  float _1872;
  float _1873;
  float _2158;
  float _2159;
  float _2160;
  float _2276;
  float _2277;
  float _2278;
  float _2333;
  float _2334;
  float _2335;
  float _2404;
  float _2405;
  float _2406;
  float4 _69;
  float _79;
  float _80;
  float4 _81;
  float _105;
  float _107;
  float _123;
  float _143;
  float _145;
  float _147;
  float _153;
  float _159;
  float _181;
  float _183;
  float _188;
  float _189;
  float _191;
  float _193;
  float _200;
  float _202;
  float _204;
  float _217;
  float _222;
  float _223;
  float _265;
  float _266;
  float _267;
  float _277;
  float _278;
  float _279;
  float _287;
  float _335;
  float _336;
  float _337;
  float _368;
  float _369;
  float _370;
  float _374;
  float _375;
  float _376;
  float _384;
  float _386;
  float _388;
  float _422;
  float _423;
  float _424;
  float _467;
  float _468;
  float _469;
  float _500;
  float _501;
  float _502;
  float _509;
  float _510;
  float _511;
  float _539;
  float _540;
  float _541;
  float _581;
  float _629;
  float _630;
  float _631;
  float _662;
  float _663;
  float _664;
  float _668;
  float _669;
  float _670;
  float _678;
  float _680;
  float _682;
  float _716;
  float _717;
  float _718;
  float _761;
  float _762;
  float _763;
  float _794;
  float _795;
  float _796;
  float _803;
  float _804;
  float _805;
  float _833;
  float _834;
  float _835;
  float _895;
  float _896;
  float _897;
  float _898;
  float _930;
  float _944;
  float _945;
  float _946;
  float _948;
  float _951;
  float _965;
  float _966;
  float _967;
  float _969;
  float _972;
  float _986;
  float _987;
  float _988;
  float _990;
  float _993;
  float _1007;
  float _1008;
  float _1009;
  float _1011;
  float _1061;
  float _1062;
  float _1063;
  float _1094;
  float _1095;
  float _1096;
  float _1100;
  float _1101;
  float _1102;
  float _1110;
  float _1112;
  float _1114;
  float _1148;
  float _1149;
  float _1150;
  float _1193;
  float _1194;
  float _1195;
  float _1226;
  float _1227;
  float _1228;
  float _1235;
  float _1236;
  float _1237;
  float _1265;
  float _1266;
  float _1267;
  float _1348;
  float _1349;
  float _1350;
  float _1381;
  float _1382;
  float _1383;
  float _1387;
  float _1388;
  float _1389;
  float _1397;
  float _1399;
  float _1401;
  float _1435;
  float _1436;
  float _1437;
  float _1480;
  float _1481;
  float _1482;
  float _1513;
  float _1514;
  float _1515;
  float _1522;
  float _1523;
  float _1524;
  float _1552;
  float _1553;
  float _1554;
  float _1635;
  float _1636;
  float _1637;
  float _1668;
  float _1669;
  float _1670;
  float _1674;
  float _1675;
  float _1676;
  float _1684;
  float _1686;
  float _1688;
  float _1722;
  float _1723;
  float _1724;
  float _1767;
  float _1768;
  float _1769;
  float _1800;
  float _1801;
  float _1802;
  float _1809;
  float _1810;
  float _1811;
  float _1839;
  float _1840;
  float _1841;
  float _1922;
  float _1923;
  float _1924;
  float _1955;
  float _1956;
  float _1957;
  float _1961;
  float _1962;
  float _1963;
  float _1971;
  float _1973;
  float _1975;
  float _2009;
  float _2010;
  float _2011;
  float _2054;
  float _2055;
  float _2056;
  float _2087;
  float _2088;
  float _2089;
  float _2096;
  float _2097;
  float _2098;
  float _2126;
  float _2127;
  float _2128;
  float4 _2167;
  float4 _2184;
  float4 _2201;
  float _2224;
  float _2225;
  float _2226;
  float _2232;
  float _2236;
  float _2237;
  float _2256;
  float _2260;
  float _2261;
  float _2262;
  float _2279;
  float _2280;
  float _2281;
  int _2287;
  int _2295;
  float4 _2308;
  float _2321;
  float _2322;
  float _2344;
  float _2346;
  float _2357;
  float _2366;
  float _2370;
  float _2371;
  float _2372;
  float _2373;
  float _2375;

  _20 = fmod(((((1080.0f / (Globals_2208.y)) * TEXCOORD.y) * (Globals_2208.y)) * VREffectsCBuffer_064.x), 2.0f);
  _23 = select((_20 > 1.0f), (2.0f - _20), _20);
  _28 = (((_23 * 2.0f) + -1.0f) * VREffectsCBuffer_064.z) + TEXCOORD.x;
  _31 = (Globals_2208.w) * (Globals_2208.x);
  _40 = _31 * 2.0f;
  _46 = ((frac((((_28 + abs(VREffectsCBuffer_080.y)) * _31) - (VREffectsCBuffer_080.y * TEXCOORD.y)) / (_40 * VREffectsCBuffer_080.x)) * 2.0f) <= 1.0f);
  _49 = (select(_46, 0.9999899864196777f, -1.0f) * VREffectsCBuffer_080.z) + TEXCOORD.y;
  _54 = select(_46, select((_49 < 1.0f), 0.0f, 1.0f), select((_49 > 0.0f), 0.0f, 1.0f));

  // _57 = t1.SampleBias(s1, float2(_28, _49), (Globals_976), int2(0, 0));
  float4 _VR_SourceImage0 = renodx::draw::InvertIntermediatePass(t1.SampleBias(s1, float2(_28, _49), (Globals_976), int2(0, 0)));
  float4 untonemapped = _VR_SourceImage0;
  _VR_SourceImage0.xyz = renodx::tonemap::dice::BT709(_VR_SourceImage0.xyz, 1.0f, 0.5f);

  if (VREffectsCBuffer_624.w > 0.0f) {
    _69 = t3.SampleBias(s2, float2(_28, _49), (Globals_976), int2(0, 0));
    _77 = ((_69.x * 0.10000000149011612f) + _28);
    _78 = ((_69.y * 0.10000000149011612f) + _49);
  } else {
    _77 = _28;
    _78 = _49;
  }
  _79 = _77 - (Globals_2240.z);
  _80 = _78 - (Globals_2240.w);
  _81 = t0.SampleLevel(s0, float2(_79, _80), 0.0f);
  _105 = (_79 * 2.0f) + -1.0f;
  _107 = -0.0f - ((_80 * 2.0f) + -1.0f);
  _123 = mad((Globals_2144[2].w), _81.x, mad((Globals_2144[1].w), _107, ((Globals_2144[0].w) * _105))) + (Globals_2144[3].w);
  _143 = (((mad((Globals_2144[2].x), _81.x, mad((Globals_2144[1].x), _107, ((Globals_2144[0].x) * _105))) + (Globals_2144[3].x)) / _123) - (Globals_352.x)) - ((VREffectsCBuffer_496.x - (Globals_352.x)) * VREffectsCBuffer_496.w);
  _145 = (((mad((Globals_2144[2].y), _81.x, mad((Globals_2144[1].y), _107, ((Globals_2144[0].y) * _105))) + (Globals_2144[3].y)) / _123) - (Globals_352.y)) - ((VREffectsCBuffer_496.y - (Globals_352.y)) * VREffectsCBuffer_496.w);
  _147 = (((mad((Globals_2144[2].z), _81.x, mad((Globals_2144[1].z), _107, ((Globals_2144[0].z) * _105))) + (Globals_2144[3].z)) / _123) - (Globals_352.z)) - ((VREffectsCBuffer_496.z - (Globals_352.z)) * VREffectsCBuffer_496.w);
  _153 = sqrt(((_143 * _143) + (_145 * _145)) + (_147 * _147));
  _159 = saturate((_153 - VREffectsCBuffer_016.z) * VREffectsCBuffer_016.w);
  _181 = ((VREffectsCBuffer_048.w - VREffectsCBuffer_032.w) * _159) + VREffectsCBuffer_032.w;
  _183 = select((_VR_SourceImage0.y < _VR_SourceImage0.z), 0.0f, 1.0f);
  _188 = (_183 * (_VR_SourceImage0.y - _VR_SourceImage0.z)) + _VR_SourceImage0.z;
  _189 = (_183 * (_VR_SourceImage0.z - _VR_SourceImage0.y)) + _VR_SourceImage0.y;
  _191 = 0.6666666865348816f - _183;
  _193 = select((_VR_SourceImage0.x < _188), 0.0f, 1.0f);
  _200 = (_193 * (_VR_SourceImage0.x - _188)) + _188;
  _202 = (_193 * (_188 - _VR_SourceImage0.x)) + _VR_SourceImage0.x;
  _204 = _200 - min(_202, _189);
  _217 = VREffectsCBuffer_000.x + abs(((_193 * ((_183 + -1.0f) - _191)) + _191) + ((_202 - _189) / ((_204 * 6.0f) + 9.999999747378752e-05f)));
  _222 = saturate((VREffectsCBuffer_000.y + (_204 / (_200 + 9.999999747378752e-05f))) * (1.0f - _181));
  _223 = saturate(VREffectsCBuffer_000.z + _200);
  _265 = ((((((saturate(abs((frac(_217 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _222) + 1.0f) * _223) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _266 = ((((((saturate(abs((frac(_217 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _222) + 1.0f) * _223) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _267 = ((((((saturate(abs((frac(_217 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _222) + 1.0f) * _223) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _277 = (((_265 * (lerp(VREffectsCBuffer_032.x, VREffectsCBuffer_048.x, _159))) - _265) * _181) + _265;
  _278 = (((_266 * (lerp(VREffectsCBuffer_032.y, VREffectsCBuffer_048.y, _159))) - _266) * _181) + _266;
  _279 = (((_267 * (lerp(VREffectsCBuffer_032.z, VREffectsCBuffer_048.z, _159))) - _267) * _181) + _267;
  _287 = VREffectsCBuffer_096.w * _54;
  [branch]
  if (VREffectsCBuffer_128.x < 0.5f) {
    _571 = (lerp(_277, VREffectsCBuffer_096.x, _287));
    _572 = (lerp(_278, VREffectsCBuffer_096.y, _287));
    _573 = (lerp(_279, VREffectsCBuffer_096.z, _287));
  } else {
    if (VREffectsCBuffer_128.x < 1.5f) {
      _571 = (_277 + (_287 * VREffectsCBuffer_096.x));
      _572 = (_278 + (_287 * VREffectsCBuffer_096.y));
      _573 = (_279 + (_287 * VREffectsCBuffer_096.z));
    } else {
      if (VREffectsCBuffer_128.x < 2.5f) {
        _335 = select((_277 > 1.0f), _277, saturate((exp2(log2(abs(_277)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _336 = select((_278 > 1.0f), _278, saturate((exp2(log2(abs(_278)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _337 = select((_279 > 1.0f), _279, saturate((exp2(log2(abs(_279)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _368 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _287;
        _369 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _287;
        _370 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _287;
        _374 = (_368 + 0.5f) * 2.0f;
        _375 = (_369 + 0.5f) * 2.0f;
        _376 = (_370 + 0.5f) * 2.0f;
        _384 = (lerp(_374, 1.0f, _335)) * _335;
        _386 = (lerp(_375, 1.0f, _336)) * _336;
        _388 = (lerp(_376, 1.0f, _337)) * _337;
        _422 = (((((_374 + -1.0f) * sqrt(_335)) + ((_335 * 2.0f) * (0.5f - _368))) - _384) * select((_335 < 0.5f), 0.0f, 1.0f)) + _384;
        _423 = (((((_375 + -1.0f) * sqrt(_336)) + ((_336 * 2.0f) * (0.5f - _369))) - _386) * select((_336 < 0.5f), 0.0f, 1.0f)) + _386;
        _424 = (((((_376 + -1.0f) * sqrt(_337)) + ((_337 * 2.0f) * (0.5f - _370))) - _388) * select((_337 < 0.5f), 0.0f, 1.0f)) + _388;
        _571 = (((((_422 * 0.30530601739883423f) + 0.682171106338501f) * _422) + 0.012522878125309944f) * _422);
        _572 = (((((_423 * 0.30530601739883423f) + 0.682171106338501f) * _423) + 0.012522878125309944f) * _423);
        _573 = (((((_424 * 0.30530601739883423f) + 0.682171106338501f) * _424) + 0.012522878125309944f) * _424);
      } else {
        if (VREffectsCBuffer_128.x < 3.5f) {
          _467 = select((_277 > 1.0f), _277, saturate((exp2(log2(abs(_277)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _468 = select((_278 > 1.0f), _278, saturate((exp2(log2(abs(_278)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _469 = select((_279 > 1.0f), _279, saturate((exp2(log2(abs(_279)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _500 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _287;
          _501 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _287;
          _502 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _287;
          _509 = (_467 * 2.0f) * (_500 + 0.5f);
          _510 = (_468 * 2.0f) * (_501 + 0.5f);
          _511 = (_469 * 2.0f) * (_502 + 0.5f);
          _539 = (((1.0f - (((1.0f - _467) * 2.0f) * (0.5f - _500))) - _509) * select((_467 < 0.5f), 0.0f, 1.0f)) + _509;
          _540 = (((1.0f - (((1.0f - _468) * 2.0f) * (0.5f - _501))) - _510) * select((_468 < 0.5f), 0.0f, 1.0f)) + _510;
          _541 = (((1.0f - (((1.0f - _469) * 2.0f) * (0.5f - _502))) - _511) * select((_469 < 0.5f), 0.0f, 1.0f)) + _511;
          _571 = (((((_539 * 0.30530601739883423f) + 0.682171106338501f) * _539) + 0.012522878125309944f) * _539);
          _572 = (((((_540 * 0.30530601739883423f) + 0.682171106338501f) * _540) + 0.012522878125309944f) * _540);
          _573 = (((((_541 * 0.30530601739883423f) + 0.682171106338501f) * _541) + 0.012522878125309944f) * _541);
        } else {
          _571 = (_277 * ((_287 * (VREffectsCBuffer_096.x + -1.0f)) + 1.0f));
          _572 = (_278 * ((_287 * (VREffectsCBuffer_096.y + -1.0f)) + 1.0f));
          _573 = (_279 * ((_287 * (VREffectsCBuffer_096.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  _581 = VREffectsCBuffer_112.w * (1.0f - _54);
  [branch]
  if (VREffectsCBuffer_128.y < 0.5f) {
    _865 = ((_581 * (VREffectsCBuffer_112.x - _571)) + _571);
    _866 = ((_581 * (VREffectsCBuffer_112.y - _572)) + _572);
    _867 = ((_581 * (VREffectsCBuffer_112.z - _573)) + _573);
  } else {
    if (VREffectsCBuffer_128.y < 1.5f) {
      _865 = ((_581 * VREffectsCBuffer_112.x) + _571);
      _866 = ((_581 * VREffectsCBuffer_112.y) + _572);
      _867 = ((_581 * VREffectsCBuffer_112.z) + _573);
    } else {
      if (VREffectsCBuffer_128.y < 2.5f) {
        _629 = select((_571 > 1.0f), _571, saturate((exp2(log2(abs(_571)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _630 = select((_572 > 1.0f), _572, saturate((exp2(log2(abs(_572)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _631 = select((_573 > 1.0f), _573, saturate((exp2(log2(abs(_573)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _662 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _581;
        _663 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _581;
        _664 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _581;
        _668 = (_662 + 0.5f) * 2.0f;
        _669 = (_663 + 0.5f) * 2.0f;
        _670 = (_664 + 0.5f) * 2.0f;
        _678 = (lerp(_668, 1.0f, _629)) * _629;
        _680 = (lerp(_669, 1.0f, _630)) * _630;
        _682 = (lerp(_670, 1.0f, _631)) * _631;
        _716 = (((((_668 + -1.0f) * sqrt(_629)) + ((_629 * 2.0f) * (0.5f - _662))) - _678) * select((_629 < 0.5f), 0.0f, 1.0f)) + _678;
        _717 = (((((_669 + -1.0f) * sqrt(_630)) + ((_630 * 2.0f) * (0.5f - _663))) - _680) * select((_630 < 0.5f), 0.0f, 1.0f)) + _680;
        _718 = (((((_670 + -1.0f) * sqrt(_631)) + ((_631 * 2.0f) * (0.5f - _664))) - _682) * select((_631 < 0.5f), 0.0f, 1.0f)) + _682;
        _865 = (((((_716 * 0.30530601739883423f) + 0.682171106338501f) * _716) + 0.012522878125309944f) * _716);
        _866 = (((((_717 * 0.30530601739883423f) + 0.682171106338501f) * _717) + 0.012522878125309944f) * _717);
        _867 = (((((_718 * 0.30530601739883423f) + 0.682171106338501f) * _718) + 0.012522878125309944f) * _718);
      } else {
        if (VREffectsCBuffer_128.y < 3.5f) {
          _761 = select((_571 > 1.0f), _571, saturate((exp2(log2(abs(_571)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _762 = select((_572 > 1.0f), _572, saturate((exp2(log2(abs(_572)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _763 = select((_573 > 1.0f), _573, saturate((exp2(log2(abs(_573)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _794 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _581;
          _795 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _581;
          _796 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _581;
          _803 = (_761 * 2.0f) * (_794 + 0.5f);
          _804 = (_762 * 2.0f) * (_795 + 0.5f);
          _805 = (_763 * 2.0f) * (_796 + 0.5f);
          _833 = (((1.0f - (((1.0f - _761) * 2.0f) * (0.5f - _794))) - _803) * select((_761 < 0.5f), 0.0f, 1.0f)) + _803;
          _834 = (((1.0f - (((1.0f - _762) * 2.0f) * (0.5f - _795))) - _804) * select((_762 < 0.5f), 0.0f, 1.0f)) + _804;
          _835 = (((1.0f - (((1.0f - _763) * 2.0f) * (0.5f - _796))) - _805) * select((_763 < 0.5f), 0.0f, 1.0f)) + _805;
          _865 = (((((_833 * 0.30530601739883423f) + 0.682171106338501f) * _833) + 0.012522878125309944f) * _833);
          _866 = (((((_834 * 0.30530601739883423f) + 0.682171106338501f) * _834) + 0.012522878125309944f) * _834);
          _867 = (((((_835 * 0.30530601739883423f) + 0.682171106338501f) * _835) + 0.012522878125309944f) * _835);
        } else {
          _865 = (((_581 * (VREffectsCBuffer_112.x + -1.0f)) + 1.0f) * _571);
          _866 = (((_581 * (VREffectsCBuffer_112.y + -1.0f)) + 1.0f) * _572);
          _867 = (((_581 * (VREffectsCBuffer_112.z + -1.0f)) + 1.0f) * _573);
        }
      }
    }
  }
  _895 = _153 - VREffectsCBuffer_144.x;
  _896 = _153 - VREffectsCBuffer_144.y;
  _897 = _153 - VREffectsCBuffer_144.z;
  _898 = _153 - VREffectsCBuffer_144.w;
  _930 = VREffectsCBuffer_240.w * saturate(_895 / (VREffectsCBuffer_160.x - VREffectsCBuffer_144.x));
  _944 = ((VREffectsCBuffer_240.x - VREffectsCBuffer_224.x) * _930) + VREffectsCBuffer_224.x;
  _945 = ((VREffectsCBuffer_240.y - VREffectsCBuffer_224.y) * _930) + VREffectsCBuffer_224.y;
  _946 = ((VREffectsCBuffer_240.z - VREffectsCBuffer_224.z) * _930) + VREffectsCBuffer_224.z;
  _948 = VREffectsCBuffer_224.w * min(saturate(_895 * VREffectsCBuffer_176.x), saturate((VREffectsCBuffer_160.x - _153) * VREffectsCBuffer_192.x));
  _951 = VREffectsCBuffer_272.w * saturate(_896 / (VREffectsCBuffer_160.y - VREffectsCBuffer_144.y));
  _965 = ((VREffectsCBuffer_272.x - VREffectsCBuffer_256.x) * _951) + VREffectsCBuffer_256.x;
  _966 = ((VREffectsCBuffer_272.y - VREffectsCBuffer_256.y) * _951) + VREffectsCBuffer_256.y;
  _967 = ((VREffectsCBuffer_272.z - VREffectsCBuffer_256.z) * _951) + VREffectsCBuffer_256.z;
  _969 = VREffectsCBuffer_256.w * min(saturate(_896 * VREffectsCBuffer_176.y), saturate((VREffectsCBuffer_160.y - _153) * VREffectsCBuffer_192.y));
  _972 = VREffectsCBuffer_304.w * saturate(_897 / (VREffectsCBuffer_160.z - VREffectsCBuffer_144.z));
  _986 = ((VREffectsCBuffer_304.x - VREffectsCBuffer_288.x) * _972) + VREffectsCBuffer_288.x;
  _987 = ((VREffectsCBuffer_304.y - VREffectsCBuffer_288.y) * _972) + VREffectsCBuffer_288.y;
  _988 = ((VREffectsCBuffer_304.z - VREffectsCBuffer_288.z) * _972) + VREffectsCBuffer_288.z;
  _990 = VREffectsCBuffer_288.w * min(saturate(_897 * VREffectsCBuffer_176.z), saturate((VREffectsCBuffer_160.z - _153) * VREffectsCBuffer_192.z));
  _993 = VREffectsCBuffer_336.w * saturate(_898 / (VREffectsCBuffer_160.w - VREffectsCBuffer_144.w));
  _1007 = ((VREffectsCBuffer_336.x - VREffectsCBuffer_320.x) * _993) + VREffectsCBuffer_320.x;
  _1008 = ((VREffectsCBuffer_336.y - VREffectsCBuffer_320.y) * _993) + VREffectsCBuffer_320.y;
  _1009 = ((VREffectsCBuffer_336.z - VREffectsCBuffer_320.z) * _993) + VREffectsCBuffer_320.z;
  _1011 = VREffectsCBuffer_320.w * min(saturate(_898 * VREffectsCBuffer_176.w), saturate((VREffectsCBuffer_160.w - _153) * VREffectsCBuffer_192.w));
  [branch]
  if (VREffectsCBuffer_208.x < 0.5f) {
    _1297 = (lerp(_865, _944, _948));
    _1298 = (lerp(_866, _945, _948));
    _1299 = (lerp(_867, _946, _948));
  } else {
    if (VREffectsCBuffer_208.x < 1.5f) {
      _1297 = ((_944 * _948) + _865);
      _1298 = ((_945 * _948) + _866);
      _1299 = ((_946 * _948) + _867);
    } else {
      if (VREffectsCBuffer_208.x < 2.5f) {
        _1061 = select((_865 > 1.0f), _865, saturate((exp2(log2(abs(_865)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1062 = select((_866 > 1.0f), _866, saturate((exp2(log2(abs(_866)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1063 = select((_867 > 1.0f), _867, saturate((exp2(log2(abs(_867)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1094 = (select((_944 > 1.0f), _944, saturate((exp2(log2(abs(_944)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _948;
        _1095 = (select((_945 > 1.0f), _945, saturate((exp2(log2(abs(_945)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _948;
        _1096 = (select((_946 > 1.0f), _946, saturate((exp2(log2(abs(_946)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _948;
        _1100 = (_1094 + 0.5f) * 2.0f;
        _1101 = (_1095 + 0.5f) * 2.0f;
        _1102 = (_1096 + 0.5f) * 2.0f;
        _1110 = (lerp(_1100, 1.0f, _1061)) * _1061;
        _1112 = (lerp(_1101, 1.0f, _1062)) * _1062;
        _1114 = (lerp(_1102, 1.0f, _1063)) * _1063;
        _1148 = (((((_1100 + -1.0f) * sqrt(_1061)) + ((_1061 * 2.0f) * (0.5f - _1094))) - _1110) * select((_1061 < 0.5f), 0.0f, 1.0f)) + _1110;
        _1149 = (((((_1101 + -1.0f) * sqrt(_1062)) + ((_1062 * 2.0f) * (0.5f - _1095))) - _1112) * select((_1062 < 0.5f), 0.0f, 1.0f)) + _1112;
        _1150 = (((((_1102 + -1.0f) * sqrt(_1063)) + ((_1063 * 2.0f) * (0.5f - _1096))) - _1114) * select((_1063 < 0.5f), 0.0f, 1.0f)) + _1114;
        _1297 = (((((_1148 * 0.30530601739883423f) + 0.682171106338501f) * _1148) + 0.012522878125309944f) * _1148);
        _1298 = (((((_1149 * 0.30530601739883423f) + 0.682171106338501f) * _1149) + 0.012522878125309944f) * _1149);
        _1299 = (((((_1150 * 0.30530601739883423f) + 0.682171106338501f) * _1150) + 0.012522878125309944f) * _1150);
      } else {
        if (VREffectsCBuffer_208.x < 3.5f) {
          _1193 = select((_865 > 1.0f), _865, saturate((exp2(log2(abs(_865)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1194 = select((_866 > 1.0f), _866, saturate((exp2(log2(abs(_866)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1195 = select((_867 > 1.0f), _867, saturate((exp2(log2(abs(_867)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1226 = (select((_944 > 1.0f), _944, saturate((exp2(log2(abs(_944)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _948;
          _1227 = (select((_945 > 1.0f), _945, saturate((exp2(log2(abs(_945)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _948;
          _1228 = (select((_946 > 1.0f), _946, saturate((exp2(log2(abs(_946)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _948;
          _1235 = (_1193 * 2.0f) * (_1226 + 0.5f);
          _1236 = (_1194 * 2.0f) * (_1227 + 0.5f);
          _1237 = (_1195 * 2.0f) * (_1228 + 0.5f);
          _1265 = (((1.0f - (((1.0f - _1193) * 2.0f) * (0.5f - _1226))) - _1235) * select((_1193 < 0.5f), 0.0f, 1.0f)) + _1235;
          _1266 = (((1.0f - (((1.0f - _1194) * 2.0f) * (0.5f - _1227))) - _1236) * select((_1194 < 0.5f), 0.0f, 1.0f)) + _1236;
          _1267 = (((1.0f - (((1.0f - _1195) * 2.0f) * (0.5f - _1228))) - _1237) * select((_1195 < 0.5f), 0.0f, 1.0f)) + _1237;
          _1297 = (((((_1265 * 0.30530601739883423f) + 0.682171106338501f) * _1265) + 0.012522878125309944f) * _1265);
          _1298 = (((((_1266 * 0.30530601739883423f) + 0.682171106338501f) * _1266) + 0.012522878125309944f) * _1266);
          _1299 = (((((_1267 * 0.30530601739883423f) + 0.682171106338501f) * _1267) + 0.012522878125309944f) * _1267);
        } else {
          _1297 = ((((_944 + -1.0f) * _948) + 1.0f) * _865);
          _1298 = ((((_945 + -1.0f) * _948) + 1.0f) * _866);
          _1299 = ((((_946 + -1.0f) * _948) + 1.0f) * _867);
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.y < 0.5f) {
    _1584 = (lerp(_1297, _965, _969));
    _1585 = (lerp(_1298, _966, _969));
    _1586 = (lerp(_1299, _967, _969));
  } else {
    if (VREffectsCBuffer_208.y < 1.5f) {
      _1584 = (_1297 + (_965 * _969));
      _1585 = (_1298 + (_966 * _969));
      _1586 = (_1299 + (_967 * _969));
    } else {
      if (VREffectsCBuffer_208.y < 2.5f) {
        _1348 = select((_1297 > 1.0f), _1297, saturate((exp2(log2(abs(_1297)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1349 = select((_1298 > 1.0f), _1298, saturate((exp2(log2(abs(_1298)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1350 = select((_1299 > 1.0f), _1299, saturate((exp2(log2(abs(_1299)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1381 = (select((_965 > 1.0f), _965, saturate((exp2(log2(abs(_965)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _969;
        _1382 = (select((_966 > 1.0f), _966, saturate((exp2(log2(abs(_966)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _969;
        _1383 = (select((_967 > 1.0f), _967, saturate((exp2(log2(abs(_967)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _969;
        _1387 = (_1381 + 0.5f) * 2.0f;
        _1388 = (_1382 + 0.5f) * 2.0f;
        _1389 = (_1383 + 0.5f) * 2.0f;
        _1397 = (lerp(_1387, 1.0f, _1348)) * _1348;
        _1399 = (lerp(_1388, 1.0f, _1349)) * _1349;
        _1401 = (lerp(_1389, 1.0f, _1350)) * _1350;
        _1435 = (((((_1387 + -1.0f) * sqrt(_1348)) + ((_1348 * 2.0f) * (0.5f - _1381))) - _1397) * select((_1348 < 0.5f), 0.0f, 1.0f)) + _1397;
        _1436 = (((((_1388 + -1.0f) * sqrt(_1349)) + ((_1349 * 2.0f) * (0.5f - _1382))) - _1399) * select((_1349 < 0.5f), 0.0f, 1.0f)) + _1399;
        _1437 = (((((_1389 + -1.0f) * sqrt(_1350)) + ((_1350 * 2.0f) * (0.5f - _1383))) - _1401) * select((_1350 < 0.5f), 0.0f, 1.0f)) + _1401;
        _1584 = (((((_1435 * 0.30530601739883423f) + 0.682171106338501f) * _1435) + 0.012522878125309944f) * _1435);
        _1585 = (((((_1436 * 0.30530601739883423f) + 0.682171106338501f) * _1436) + 0.012522878125309944f) * _1436);
        _1586 = (((((_1437 * 0.30530601739883423f) + 0.682171106338501f) * _1437) + 0.012522878125309944f) * _1437);
      } else {
        if (VREffectsCBuffer_208.y < 3.5f) {
          _1480 = select((_1297 > 1.0f), _1297, saturate((exp2(log2(abs(_1297)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1481 = select((_1298 > 1.0f), _1298, saturate((exp2(log2(abs(_1298)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1482 = select((_1299 > 1.0f), _1299, saturate((exp2(log2(abs(_1299)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1513 = (select((_965 > 1.0f), _965, saturate((exp2(log2(abs(_965)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _969;
          _1514 = (select((_966 > 1.0f), _966, saturate((exp2(log2(abs(_966)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _969;
          _1515 = (select((_967 > 1.0f), _967, saturate((exp2(log2(abs(_967)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _969;
          _1522 = (_1480 * 2.0f) * (_1513 + 0.5f);
          _1523 = (_1481 * 2.0f) * (_1514 + 0.5f);
          _1524 = (_1482 * 2.0f) * (_1515 + 0.5f);
          _1552 = (((1.0f - (((1.0f - _1480) * 2.0f) * (0.5f - _1513))) - _1522) * select((_1480 < 0.5f), 0.0f, 1.0f)) + _1522;
          _1553 = (((1.0f - (((1.0f - _1481) * 2.0f) * (0.5f - _1514))) - _1523) * select((_1481 < 0.5f), 0.0f, 1.0f)) + _1523;
          _1554 = (((1.0f - (((1.0f - _1482) * 2.0f) * (0.5f - _1515))) - _1524) * select((_1482 < 0.5f), 0.0f, 1.0f)) + _1524;
          _1584 = (((((_1552 * 0.30530601739883423f) + 0.682171106338501f) * _1552) + 0.012522878125309944f) * _1552);
          _1585 = (((((_1553 * 0.30530601739883423f) + 0.682171106338501f) * _1553) + 0.012522878125309944f) * _1553);
          _1586 = (((((_1554 * 0.30530601739883423f) + 0.682171106338501f) * _1554) + 0.012522878125309944f) * _1554);
        } else {
          _1584 = (_1297 * (((_965 + -1.0f) * _969) + 1.0f));
          _1585 = (_1298 * (((_966 + -1.0f) * _969) + 1.0f));
          _1586 = (_1299 * (((_967 + -1.0f) * _969) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.z < 0.5f) {
    _1871 = (lerp(_1584, _986, _990));
    _1872 = (lerp(_1585, _987, _990));
    _1873 = (lerp(_1586, _988, _990));
  } else {
    if (VREffectsCBuffer_208.z < 1.5f) {
      _1871 = (_1584 + (_986 * _990));
      _1872 = (_1585 + (_987 * _990));
      _1873 = (_1586 + (_988 * _990));
    } else {
      if (VREffectsCBuffer_208.z < 2.5f) {
        _1635 = select((_1584 > 1.0f), _1584, saturate((exp2(log2(abs(_1584)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1636 = select((_1585 > 1.0f), _1585, saturate((exp2(log2(abs(_1585)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1637 = select((_1586 > 1.0f), _1586, saturate((exp2(log2(abs(_1586)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1668 = (select((_986 > 1.0f), _986, saturate((exp2(log2(abs(_986)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _990;
        _1669 = (select((_987 > 1.0f), _987, saturate((exp2(log2(abs(_987)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _990;
        _1670 = (select((_988 > 1.0f), _988, saturate((exp2(log2(abs(_988)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _990;
        _1674 = (_1668 + 0.5f) * 2.0f;
        _1675 = (_1669 + 0.5f) * 2.0f;
        _1676 = (_1670 + 0.5f) * 2.0f;
        _1684 = (lerp(_1674, 1.0f, _1635)) * _1635;
        _1686 = (lerp(_1675, 1.0f, _1636)) * _1636;
        _1688 = (lerp(_1676, 1.0f, _1637)) * _1637;
        _1722 = (((((_1674 + -1.0f) * sqrt(_1635)) + ((_1635 * 2.0f) * (0.5f - _1668))) - _1684) * select((_1635 < 0.5f), 0.0f, 1.0f)) + _1684;
        _1723 = (((((_1675 + -1.0f) * sqrt(_1636)) + ((_1636 * 2.0f) * (0.5f - _1669))) - _1686) * select((_1636 < 0.5f), 0.0f, 1.0f)) + _1686;
        _1724 = (((((_1676 + -1.0f) * sqrt(_1637)) + ((_1637 * 2.0f) * (0.5f - _1670))) - _1688) * select((_1637 < 0.5f), 0.0f, 1.0f)) + _1688;
        _1871 = (((((_1722 * 0.30530601739883423f) + 0.682171106338501f) * _1722) + 0.012522878125309944f) * _1722);
        _1872 = (((((_1723 * 0.30530601739883423f) + 0.682171106338501f) * _1723) + 0.012522878125309944f) * _1723);
        _1873 = (((((_1724 * 0.30530601739883423f) + 0.682171106338501f) * _1724) + 0.012522878125309944f) * _1724);
      } else {
        if (VREffectsCBuffer_208.z < 3.5f) {
          _1767 = select((_1584 > 1.0f), _1584, saturate((exp2(log2(abs(_1584)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1768 = select((_1585 > 1.0f), _1585, saturate((exp2(log2(abs(_1585)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1769 = select((_1586 > 1.0f), _1586, saturate((exp2(log2(abs(_1586)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1800 = (select((_986 > 1.0f), _986, saturate((exp2(log2(abs(_986)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _990;
          _1801 = (select((_987 > 1.0f), _987, saturate((exp2(log2(abs(_987)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _990;
          _1802 = (select((_988 > 1.0f), _988, saturate((exp2(log2(abs(_988)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _990;
          _1809 = (_1767 * 2.0f) * (_1800 + 0.5f);
          _1810 = (_1768 * 2.0f) * (_1801 + 0.5f);
          _1811 = (_1769 * 2.0f) * (_1802 + 0.5f);
          _1839 = (((1.0f - (((1.0f - _1767) * 2.0f) * (0.5f - _1800))) - _1809) * select((_1767 < 0.5f), 0.0f, 1.0f)) + _1809;
          _1840 = (((1.0f - (((1.0f - _1768) * 2.0f) * (0.5f - _1801))) - _1810) * select((_1768 < 0.5f), 0.0f, 1.0f)) + _1810;
          _1841 = (((1.0f - (((1.0f - _1769) * 2.0f) * (0.5f - _1802))) - _1811) * select((_1769 < 0.5f), 0.0f, 1.0f)) + _1811;
          _1871 = (((((_1839 * 0.30530601739883423f) + 0.682171106338501f) * _1839) + 0.012522878125309944f) * _1839);
          _1872 = (((((_1840 * 0.30530601739883423f) + 0.682171106338501f) * _1840) + 0.012522878125309944f) * _1840);
          _1873 = (((((_1841 * 0.30530601739883423f) + 0.682171106338501f) * _1841) + 0.012522878125309944f) * _1841);
        } else {
          _1871 = (_1584 * (((_986 + -1.0f) * _990) + 1.0f));
          _1872 = (_1585 * (((_987 + -1.0f) * _990) + 1.0f));
          _1873 = (_1586 * (((_988 + -1.0f) * _990) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.w < 0.5f) {
    _2158 = (lerp(_1871, _1007, _1011));
    _2159 = (lerp(_1872, _1008, _1011));
    _2160 = (lerp(_1873, _1009, _1011));
  } else {
    if (VREffectsCBuffer_208.w < 1.5f) {
      _2158 = (_1871 + (_1007 * _1011));
      _2159 = (_1872 + (_1008 * _1011));
      _2160 = (_1873 + (_1009 * _1011));
    } else {
      if (VREffectsCBuffer_208.w < 2.5f) {
        _1922 = select((_1871 > 1.0f), _1871, saturate((exp2(log2(abs(_1871)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1923 = select((_1872 > 1.0f), _1872, saturate((exp2(log2(abs(_1872)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1924 = select((_1873 > 1.0f), _1873, saturate((exp2(log2(abs(_1873)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1955 = (select((_1007 > 1.0f), _1007, saturate((exp2(log2(abs(_1007)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1011;
        _1956 = (select((_1008 > 1.0f), _1008, saturate((exp2(log2(abs(_1008)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1011;
        _1957 = (select((_1009 > 1.0f), _1009, saturate((exp2(log2(abs(_1009)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1011;
        _1961 = (_1955 + 0.5f) * 2.0f;
        _1962 = (_1956 + 0.5f) * 2.0f;
        _1963 = (_1957 + 0.5f) * 2.0f;
        _1971 = (lerp(_1961, 1.0f, _1922)) * _1922;
        _1973 = (lerp(_1962, 1.0f, _1923)) * _1923;
        _1975 = (lerp(_1963, 1.0f, _1924)) * _1924;
        _2009 = (((((_1961 + -1.0f) * sqrt(_1922)) + ((_1922 * 2.0f) * (0.5f - _1955))) - _1971) * select((_1922 < 0.5f), 0.0f, 1.0f)) + _1971;
        _2010 = (((((_1962 + -1.0f) * sqrt(_1923)) + ((_1923 * 2.0f) * (0.5f - _1956))) - _1973) * select((_1923 < 0.5f), 0.0f, 1.0f)) + _1973;
        _2011 = (((((_1963 + -1.0f) * sqrt(_1924)) + ((_1924 * 2.0f) * (0.5f - _1957))) - _1975) * select((_1924 < 0.5f), 0.0f, 1.0f)) + _1975;
        _2158 = (((((_2009 * 0.30530601739883423f) + 0.682171106338501f) * _2009) + 0.012522878125309944f) * _2009);
        _2159 = (((((_2010 * 0.30530601739883423f) + 0.682171106338501f) * _2010) + 0.012522878125309944f) * _2010);
        _2160 = (((((_2011 * 0.30530601739883423f) + 0.682171106338501f) * _2011) + 0.012522878125309944f) * _2011);
      } else {
        if (VREffectsCBuffer_208.w < 3.5f) {
          _2054 = select((_1871 > 1.0f), _1871, saturate((exp2(log2(abs(_1871)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2055 = select((_1872 > 1.0f), _1872, saturate((exp2(log2(abs(_1872)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2056 = select((_1873 > 1.0f), _1873, saturate((exp2(log2(abs(_1873)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2087 = (select((_1007 > 1.0f), _1007, saturate((exp2(log2(abs(_1007)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1011;
          _2088 = (select((_1008 > 1.0f), _1008, saturate((exp2(log2(abs(_1008)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1011;
          _2089 = (select((_1009 > 1.0f), _1009, saturate((exp2(log2(abs(_1009)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1011;
          _2096 = (_2054 * 2.0f) * (_2087 + 0.5f);
          _2097 = (_2055 * 2.0f) * (_2088 + 0.5f);
          _2098 = (_2056 * 2.0f) * (_2089 + 0.5f);
          _2126 = (((1.0f - (((1.0f - _2054) * 2.0f) * (0.5f - _2087))) - _2096) * select((_2054 < 0.5f), 0.0f, 1.0f)) + _2096;
          _2127 = (((1.0f - (((1.0f - _2055) * 2.0f) * (0.5f - _2088))) - _2097) * select((_2055 < 0.5f), 0.0f, 1.0f)) + _2097;
          _2128 = (((1.0f - (((1.0f - _2056) * 2.0f) * (0.5f - _2089))) - _2098) * select((_2056 < 0.5f), 0.0f, 1.0f)) + _2098;
          _2158 = (((((_2126 * 0.30530601739883423f) + 0.682171106338501f) * _2126) + 0.012522878125309944f) * _2126);
          _2159 = (((((_2127 * 0.30530601739883423f) + 0.682171106338501f) * _2127) + 0.012522878125309944f) * _2127);
          _2160 = (((((_2128 * 0.30530601739883423f) + 0.682171106338501f) * _2128) + 0.012522878125309944f) * _2128);
        } else {
          _2158 = (_1871 * (((_1007 + -1.0f) * _1011) + 1.0f));
          _2159 = (_1872 * (((_1008 + -1.0f) * _1011) + 1.0f));
          _2160 = (_1873 * (((_1009 + -1.0f) * _1011) + 1.0f));
        }
      }
    }
  }
  _2167 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.x + _28), ((VREffectsCBuffer_352.y * _31) + _49)), (Globals_976), int2(0, 0));
  _2184 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.z + _28), ((VREffectsCBuffer_352.w * _31) + _49)), (Globals_976), int2(0, 0));
  _2201 = t1.SampleBias(s1, float2((VREffectsCBuffer_368.x + _28), ((VREffectsCBuffer_368.y * _31) + _49)), (Globals_976), int2(0, 0));

  _2167.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2167.xyz), 1.0f, 0.5f);
  _2184.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2184.xyz), 1.0f, 0.5f);
  _2201.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2201.xyz), 1.0f, 0.5f);

  _2224 = (((((VREffectsCBuffer_384.x * _2167.x) - _2158) + (VREffectsCBuffer_400.x * _2184.y)) + (VREffectsCBuffer_416.x * _2201.z)) * VREffectsCBuffer_368.z) + _2158;
  _2225 = (((((VREffectsCBuffer_384.y * _2167.x) - _2159) + (VREffectsCBuffer_400.y * _2184.y)) + (VREffectsCBuffer_416.y * _2201.z)) * VREffectsCBuffer_368.z) + _2159;
  _2226 = (((((VREffectsCBuffer_384.z * _2167.x) - _2160) + (VREffectsCBuffer_400.z * _2184.y)) + (VREffectsCBuffer_416.z * _2201.z)) * VREffectsCBuffer_368.z) + _2160;
  _2232 = (((-0.0f - VREffectsCBuffer_064.y) - VREffectsCBuffer_064.y) * _23) + VREffectsCBuffer_064.y;
  if (!(VREffectsCBuffer_064.w < 0.5f)) {
    _2236 = _2232 * 0.5f;
    _2237 = _2236 + 0.5f;
    _2256 = 0.5f - _2236;
    _2260 = 1.0f - (((1.0f - _2224) * 2.0f) * _2256);
    _2261 = 1.0f - (((1.0f - _2225) * 2.0f) * _2256);
    _2262 = 1.0f - (((1.0f - _2226) * 2.0f) * _2256);
    _2276 = ((_2260 - _2224) + ((((_2224 * 2.0f) * _2237) - _2260) * select((_2224 > 0.5f), 0.0f, 1.0f)));
    _2277 = ((_2261 - _2225) + ((((_2225 * 2.0f) * _2237) - _2261) * select((_2225 > 0.5f), 0.0f, 1.0f)));
    _2278 = ((_2262 - _2226) + ((((_2226 * 2.0f) * _2237) - _2262) * select((_2226 > 0.5f), 0.0f, 1.0f)));
  } else {
    _2276 = _2232;
    _2277 = _2232;
    _2278 = _2232;
  }
  _2279 = _2276 + _2224;
  _2280 = _2277 + _2225;
  _2281 = _2278 + _2226;
  if (VREffectsCBuffer_464.w > 0.5f) {
    _2287 = int(VREffectsCBuffer_464.x);
    _2295 = int(VREffectsCBuffer_464.z);
    _2308 = t2.SampleBias(s1, float2(((float((int)(_2295 % _2287)) * (1.0f / float((int)(_2287)))) + (_28 / VREffectsCBuffer_464.x)), ((float((int)(_2295 / _2287)) * (1.0f / float((int)(int(VREffectsCBuffer_464.y))))) + (_49 / VREffectsCBuffer_464.y))), (Globals_976), int2(0, 0));
    _2321 = VREffectsCBuffer_480.w * _2308.w;
    _2322 = 1.0f - _2321;
    _2333 = ((_2322 * _2279) + ((VREffectsCBuffer_480.x * _2308.x) * _2321));
    _2334 = ((_2322 * _2280) + ((VREffectsCBuffer_480.y * _2308.y) * _2321));
    _2335 = ((_2322 * _2281) + ((VREffectsCBuffer_480.z * _2308.z) * _2321));
  } else {
    _2333 = _2279;
    _2334 = _2280;
    _2335 = _2281;
  }
  if (VREffectsCBuffer_784.x > 0.5f) {
    _2344 = _40 * (TEXCOORD.x - VREffectsCBuffer_800.x);
    _2346 = (TEXCOORD.y - VREffectsCBuffer_800.y) * 2.0f;
    _2357 = saturate(sqrt((_2344 * _2344) + (_2346 * _2346)) / (VREffectsCBuffer_800.z * sqrt((_31 * _31) + 1.0f)));
    _2366 = exp2(log2(1.0f - ((_2357 * _2357) * (3.0f - (_2357 * 2.0f)))) * VREffectsCBuffer_784.w);
    _2370 = (VREffectsCBuffer_784.y * (_2366 + -1.0f)) + 1.0f;
    _2371 = _2370 * _2333;
    _2372 = _2370 * _2334;
    _2373 = _2370 * _2335;
    _2375 = VREffectsCBuffer_784.z * _2366;
    _2404 = ((((1.0f - _2371) + (select((_2371 > 0.5f), 0.0f, 1.0f) * ((_2371 * 2.0f) + -1.0f))) * _2375) + _2371);
    _2405 = ((((1.0f - _2372) + (select((_2372 > 0.5f), 0.0f, 1.0f) * ((_2372 * 2.0f) + -1.0f))) * _2375) + _2372);
    _2406 = ((((1.0f - _2373) + (select((_2373 > 0.5f), 0.0f, 1.0f) * ((_2373 * 2.0f) + -1.0f))) * _2375) + _2373);
  } else {
    _2404 = _2333;
    _2405 = _2334;
    _2406 = _2335;
  }
  SV_Target.x = _2404;
  SV_Target.y = _2405;
  SV_Target.z = _2406;
  SV_Target.w = _VR_SourceImage0.w;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _VR_SourceImage0.xyz, SV_Target.xyz));

  return SV_Target;
}
