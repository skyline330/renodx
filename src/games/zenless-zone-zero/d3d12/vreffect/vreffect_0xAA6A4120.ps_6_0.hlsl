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
  float _127;
  float _129;
  float _131;
  float _137;
  float _143;
  float _165;
  float _167;
  float _172;
  float _173;
  float _175;
  float _177;
  float _184;
  float _186;
  float _188;
  float _201;
  float _206;
  float _207;
  float _249;
  float _250;
  float _251;
  float _261;
  float _262;
  float _263;
  float _271;
  float _555;
  float _556;
  float _557;
  float _849;
  float _850;
  float _851;
  float _1281;
  float _1282;
  float _1283;
  float _1568;
  float _1569;
  float _1570;
  float _1855;
  float _1856;
  float _1857;
  float _2142;
  float _2143;
  float _2144;
  float _2260;
  float _2261;
  float _2262;
  float _2317;
  float _2318;
  float _2319;
  float _2388;
  float _2389;
  float _2390;
  float _319;
  float _320;
  float _321;
  float _352;
  float _353;
  float _354;
  float _358;
  float _359;
  float _360;
  float _368;
  float _370;
  float _372;
  float _406;
  float _407;
  float _408;
  float _451;
  float _452;
  float _453;
  float _484;
  float _485;
  float _486;
  float _493;
  float _494;
  float _495;
  float _523;
  float _524;
  float _525;
  float _565;
  float _613;
  float _614;
  float _615;
  float _646;
  float _647;
  float _648;
  float _652;
  float _653;
  float _654;
  float _662;
  float _664;
  float _666;
  float _700;
  float _701;
  float _702;
  float _745;
  float _746;
  float _747;
  float _778;
  float _779;
  float _780;
  float _787;
  float _788;
  float _789;
  float _817;
  float _818;
  float _819;
  float _879;
  float _880;
  float _881;
  float _882;
  float _914;
  float _928;
  float _929;
  float _930;
  float _932;
  float _935;
  float _949;
  float _950;
  float _951;
  float _953;
  float _956;
  float _970;
  float _971;
  float _972;
  float _974;
  float _977;
  float _991;
  float _992;
  float _993;
  float _995;
  float _1045;
  float _1046;
  float _1047;
  float _1078;
  float _1079;
  float _1080;
  float _1084;
  float _1085;
  float _1086;
  float _1094;
  float _1096;
  float _1098;
  float _1132;
  float _1133;
  float _1134;
  float _1177;
  float _1178;
  float _1179;
  float _1210;
  float _1211;
  float _1212;
  float _1219;
  float _1220;
  float _1221;
  float _1249;
  float _1250;
  float _1251;
  float _1332;
  float _1333;
  float _1334;
  float _1365;
  float _1366;
  float _1367;
  float _1371;
  float _1372;
  float _1373;
  float _1381;
  float _1383;
  float _1385;
  float _1419;
  float _1420;
  float _1421;
  float _1464;
  float _1465;
  float _1466;
  float _1497;
  float _1498;
  float _1499;
  float _1506;
  float _1507;
  float _1508;
  float _1536;
  float _1537;
  float _1538;
  float _1619;
  float _1620;
  float _1621;
  float _1652;
  float _1653;
  float _1654;
  float _1658;
  float _1659;
  float _1660;
  float _1668;
  float _1670;
  float _1672;
  float _1706;
  float _1707;
  float _1708;
  float _1751;
  float _1752;
  float _1753;
  float _1784;
  float _1785;
  float _1786;
  float _1793;
  float _1794;
  float _1795;
  float _1823;
  float _1824;
  float _1825;
  float _1906;
  float _1907;
  float _1908;
  float _1939;
  float _1940;
  float _1941;
  float _1945;
  float _1946;
  float _1947;
  float _1955;
  float _1957;
  float _1959;
  float _1993;
  float _1994;
  float _1995;
  float _2038;
  float _2039;
  float _2040;
  float _2071;
  float _2072;
  float _2073;
  float _2080;
  float _2081;
  float _2082;
  float _2110;
  float _2111;
  float _2112;
  float4 _2151;
  float4 _2168;
  float4 _2185;
  float _2208;
  float _2209;
  float _2210;
  float _2216;
  float _2220;
  float _2221;
  float _2240;
  float _2244;
  float _2245;
  float _2246;
  float _2263;
  float _2264;
  float _2265;
  int _2271;
  int _2279;
  float4 _2292;
  float _2305;
  float _2306;
  float _2328;
  float _2330;
  float _2341;
  float _2350;
  float _2354;
  float _2355;
  float _2356;
  float _2357;
  float _2359;

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
  _127 = (((mad((Globals_2144[2].x), _65.x, mad((Globals_2144[1].x), _91, ((Globals_2144[0].x) * _89))) + (Globals_2144[3].x)) / _107) - (Globals_352.x)) - ((VREffectsCBuffer_496.x - (Globals_352.x)) * VREffectsCBuffer_496.w);
  _129 = (((mad((Globals_2144[2].y), _65.x, mad((Globals_2144[1].y), _91, ((Globals_2144[0].y) * _89))) + (Globals_2144[3].y)) / _107) - (Globals_352.y)) - ((VREffectsCBuffer_496.y - (Globals_352.y)) * VREffectsCBuffer_496.w);
  _131 = (((mad((Globals_2144[2].z), _65.x, mad((Globals_2144[1].z), _91, ((Globals_2144[0].z) * _89))) + (Globals_2144[3].z)) / _107) - (Globals_352.z)) - ((VREffectsCBuffer_496.z - (Globals_352.z)) * VREffectsCBuffer_496.w);
  _137 = sqrt(((_127 * _127) + (_129 * _129)) + (_131 * _131));
  _143 = saturate((_137 - VREffectsCBuffer_016.z) * VREffectsCBuffer_016.w);
  _165 = ((VREffectsCBuffer_048.w - VREffectsCBuffer_032.w) * _143) + VREffectsCBuffer_032.w;
  _167 = select((_VR_SourceImage0.y < _VR_SourceImage0.z), 0.0f, 1.0f);
  _172 = (_167 * (_VR_SourceImage0.y - _VR_SourceImage0.z)) + _VR_SourceImage0.z;
  _173 = (_167 * (_VR_SourceImage0.z - _VR_SourceImage0.y)) + _VR_SourceImage0.y;
  _175 = 0.6666666865348816f - _167;
  _177 = select((_VR_SourceImage0.x < _172), 0.0f, 1.0f);
  _184 = (_177 * (_VR_SourceImage0.x - _172)) + _172;
  _186 = (_177 * (_172 - _VR_SourceImage0.x)) + _VR_SourceImage0.x;
  _188 = _184 - min(_186, _173);
  _201 = VREffectsCBuffer_000.x + abs(((_177 * ((_167 + -1.0f) - _175)) + _175) + ((_186 - _173) / ((_188 * 6.0f) + 9.999999747378752e-05f)));
  _206 = saturate((VREffectsCBuffer_000.y + (_188 / (_184 + 9.999999747378752e-05f))) * (1.0f - _165));
  _207 = saturate(VREffectsCBuffer_000.z + _184);
  _249 = ((((((saturate(abs((frac(_201 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _206) + 1.0f) * _207) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _250 = ((((((saturate(abs((frac(_201 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _206) + 1.0f) * _207) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _251 = ((((((saturate(abs((frac(_201 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _206) + 1.0f) * _207) - VREffectsCBuffer_016.y) * VREffectsCBuffer_016.x) + VREffectsCBuffer_016.y;
  _261 = (((_249 * (lerp(VREffectsCBuffer_032.x, VREffectsCBuffer_048.x, _143))) - _249) * _165) + _249;
  _262 = (((_250 * (lerp(VREffectsCBuffer_032.y, VREffectsCBuffer_048.y, _143))) - _250) * _165) + _250;
  _263 = (((_251 * (lerp(VREffectsCBuffer_032.z, VREffectsCBuffer_048.z, _143))) - _251) * _165) + _251;
  _271 = VREffectsCBuffer_096.w * _52;
  [branch]
  if (VREffectsCBuffer_128.x < 0.5f) {
    _555 = (lerp(_261, VREffectsCBuffer_096.x, _271));
    _556 = (lerp(_262, VREffectsCBuffer_096.y, _271));
    _557 = (lerp(_263, VREffectsCBuffer_096.z, _271));
  } else {
    if (VREffectsCBuffer_128.x < 1.5f) {
      _555 = (_261 + (_271 * VREffectsCBuffer_096.x));
      _556 = (_262 + (_271 * VREffectsCBuffer_096.y));
      _557 = (_263 + (_271 * VREffectsCBuffer_096.z));
    } else {
      if (VREffectsCBuffer_128.x < 2.5f) {
        _319 = select((_261 > 1.0f), _261, saturate((exp2(log2(abs(_261)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _320 = select((_262 > 1.0f), _262, saturate((exp2(log2(abs(_262)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _321 = select((_263 > 1.0f), _263, saturate((exp2(log2(abs(_263)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _352 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _271;
        _353 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _271;
        _354 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _271;
        _358 = (_352 + 0.5f) * 2.0f;
        _359 = (_353 + 0.5f) * 2.0f;
        _360 = (_354 + 0.5f) * 2.0f;
        _368 = (lerp(_358, 1.0f, _319)) * _319;
        _370 = (lerp(_359, 1.0f, _320)) * _320;
        _372 = (lerp(_360, 1.0f, _321)) * _321;
        _406 = (((((_358 + -1.0f) * sqrt(_319)) + ((_319 * 2.0f) * (0.5f - _352))) - _368) * select((_319 < 0.5f), 0.0f, 1.0f)) + _368;
        _407 = (((((_359 + -1.0f) * sqrt(_320)) + ((_320 * 2.0f) * (0.5f - _353))) - _370) * select((_320 < 0.5f), 0.0f, 1.0f)) + _370;
        _408 = (((((_360 + -1.0f) * sqrt(_321)) + ((_321 * 2.0f) * (0.5f - _354))) - _372) * select((_321 < 0.5f), 0.0f, 1.0f)) + _372;
        _555 = (((((_406 * 0.30530601739883423f) + 0.682171106338501f) * _406) + 0.012522878125309944f) * _406);
        _556 = (((((_407 * 0.30530601739883423f) + 0.682171106338501f) * _407) + 0.012522878125309944f) * _407);
        _557 = (((((_408 * 0.30530601739883423f) + 0.682171106338501f) * _408) + 0.012522878125309944f) * _408);
      } else {
        if (VREffectsCBuffer_128.x < 3.5f) {
          _451 = select((_261 > 1.0f), _261, saturate((exp2(log2(abs(_261)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _452 = select((_262 > 1.0f), _262, saturate((exp2(log2(abs(_262)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _453 = select((_263 > 1.0f), _263, saturate((exp2(log2(abs(_263)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _484 = (select((VREffectsCBuffer_096.x > 1.0f), VREffectsCBuffer_096.x, saturate((exp2(log2(abs(VREffectsCBuffer_096.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _271;
          _485 = (select((VREffectsCBuffer_096.y > 1.0f), VREffectsCBuffer_096.y, saturate((exp2(log2(abs(VREffectsCBuffer_096.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _271;
          _486 = (select((VREffectsCBuffer_096.z > 1.0f), VREffectsCBuffer_096.z, saturate((exp2(log2(abs(VREffectsCBuffer_096.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _271;
          _493 = (_451 * 2.0f) * (_484 + 0.5f);
          _494 = (_452 * 2.0f) * (_485 + 0.5f);
          _495 = (_453 * 2.0f) * (_486 + 0.5f);
          _523 = (((1.0f - (((1.0f - _451) * 2.0f) * (0.5f - _484))) - _493) * select((_451 < 0.5f), 0.0f, 1.0f)) + _493;
          _524 = (((1.0f - (((1.0f - _452) * 2.0f) * (0.5f - _485))) - _494) * select((_452 < 0.5f), 0.0f, 1.0f)) + _494;
          _525 = (((1.0f - (((1.0f - _453) * 2.0f) * (0.5f - _486))) - _495) * select((_453 < 0.5f), 0.0f, 1.0f)) + _495;
          _555 = (((((_523 * 0.30530601739883423f) + 0.682171106338501f) * _523) + 0.012522878125309944f) * _523);
          _556 = (((((_524 * 0.30530601739883423f) + 0.682171106338501f) * _524) + 0.012522878125309944f) * _524);
          _557 = (((((_525 * 0.30530601739883423f) + 0.682171106338501f) * _525) + 0.012522878125309944f) * _525);
        } else {
          _555 = (_261 * ((_271 * (VREffectsCBuffer_096.x + -1.0f)) + 1.0f));
          _556 = (_262 * ((_271 * (VREffectsCBuffer_096.y + -1.0f)) + 1.0f));
          _557 = (_263 * ((_271 * (VREffectsCBuffer_096.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  _565 = VREffectsCBuffer_112.w * (1.0f - _52);
  [branch]
  if (VREffectsCBuffer_128.y < 0.5f) {
    _849 = ((_565 * (VREffectsCBuffer_112.x - _555)) + _555);
    _850 = ((_565 * (VREffectsCBuffer_112.y - _556)) + _556);
    _851 = ((_565 * (VREffectsCBuffer_112.z - _557)) + _557);
  } else {
    if (VREffectsCBuffer_128.y < 1.5f) {
      _849 = ((_565 * VREffectsCBuffer_112.x) + _555);
      _850 = ((_565 * VREffectsCBuffer_112.y) + _556);
      _851 = ((_565 * VREffectsCBuffer_112.z) + _557);
    } else {
      if (VREffectsCBuffer_128.y < 2.5f) {
        _613 = select((_555 > 1.0f), _555, saturate((exp2(log2(abs(_555)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _614 = select((_556 > 1.0f), _556, saturate((exp2(log2(abs(_556)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _615 = select((_557 > 1.0f), _557, saturate((exp2(log2(abs(_557)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _646 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _565;
        _647 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _565;
        _648 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _565;
        _652 = (_646 + 0.5f) * 2.0f;
        _653 = (_647 + 0.5f) * 2.0f;
        _654 = (_648 + 0.5f) * 2.0f;
        _662 = (lerp(_652, 1.0f, _613)) * _613;
        _664 = (lerp(_653, 1.0f, _614)) * _614;
        _666 = (lerp(_654, 1.0f, _615)) * _615;
        _700 = (((((_652 + -1.0f) * sqrt(_613)) + ((_613 * 2.0f) * (0.5f - _646))) - _662) * select((_613 < 0.5f), 0.0f, 1.0f)) + _662;
        _701 = (((((_653 + -1.0f) * sqrt(_614)) + ((_614 * 2.0f) * (0.5f - _647))) - _664) * select((_614 < 0.5f), 0.0f, 1.0f)) + _664;
        _702 = (((((_654 + -1.0f) * sqrt(_615)) + ((_615 * 2.0f) * (0.5f - _648))) - _666) * select((_615 < 0.5f), 0.0f, 1.0f)) + _666;
        _849 = (((((_700 * 0.30530601739883423f) + 0.682171106338501f) * _700) + 0.012522878125309944f) * _700);
        _850 = (((((_701 * 0.30530601739883423f) + 0.682171106338501f) * _701) + 0.012522878125309944f) * _701);
        _851 = (((((_702 * 0.30530601739883423f) + 0.682171106338501f) * _702) + 0.012522878125309944f) * _702);
      } else {
        if (VREffectsCBuffer_128.y < 3.5f) {
          _745 = select((_555 > 1.0f), _555, saturate((exp2(log2(abs(_555)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _746 = select((_556 > 1.0f), _556, saturate((exp2(log2(abs(_556)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _747 = select((_557 > 1.0f), _557, saturate((exp2(log2(abs(_557)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _778 = (select((VREffectsCBuffer_112.x > 1.0f), VREffectsCBuffer_112.x, saturate((exp2(log2(abs(VREffectsCBuffer_112.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _565;
          _779 = (select((VREffectsCBuffer_112.y > 1.0f), VREffectsCBuffer_112.y, saturate((exp2(log2(abs(VREffectsCBuffer_112.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _565;
          _780 = (select((VREffectsCBuffer_112.z > 1.0f), VREffectsCBuffer_112.z, saturate((exp2(log2(abs(VREffectsCBuffer_112.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _565;
          _787 = (_745 * 2.0f) * (_778 + 0.5f);
          _788 = (_746 * 2.0f) * (_779 + 0.5f);
          _789 = (_747 * 2.0f) * (_780 + 0.5f);
          _817 = (((1.0f - (((1.0f - _745) * 2.0f) * (0.5f - _778))) - _787) * select((_745 < 0.5f), 0.0f, 1.0f)) + _787;
          _818 = (((1.0f - (((1.0f - _746) * 2.0f) * (0.5f - _779))) - _788) * select((_746 < 0.5f), 0.0f, 1.0f)) + _788;
          _819 = (((1.0f - (((1.0f - _747) * 2.0f) * (0.5f - _780))) - _789) * select((_747 < 0.5f), 0.0f, 1.0f)) + _789;
          _849 = (((((_817 * 0.30530601739883423f) + 0.682171106338501f) * _817) + 0.012522878125309944f) * _817);
          _850 = (((((_818 * 0.30530601739883423f) + 0.682171106338501f) * _818) + 0.012522878125309944f) * _818);
          _851 = (((((_819 * 0.30530601739883423f) + 0.682171106338501f) * _819) + 0.012522878125309944f) * _819);
        } else {
          _849 = (((_565 * (VREffectsCBuffer_112.x + -1.0f)) + 1.0f) * _555);
          _850 = (((_565 * (VREffectsCBuffer_112.y + -1.0f)) + 1.0f) * _556);
          _851 = (((_565 * (VREffectsCBuffer_112.z + -1.0f)) + 1.0f) * _557);
        }
      }
    }
  }
  _879 = _137 - VREffectsCBuffer_144.x;
  _880 = _137 - VREffectsCBuffer_144.y;
  _881 = _137 - VREffectsCBuffer_144.z;
  _882 = _137 - VREffectsCBuffer_144.w;
  _914 = VREffectsCBuffer_240.w * saturate(_879 / (VREffectsCBuffer_160.x - VREffectsCBuffer_144.x));
  _928 = ((VREffectsCBuffer_240.x - VREffectsCBuffer_224.x) * _914) + VREffectsCBuffer_224.x;
  _929 = ((VREffectsCBuffer_240.y - VREffectsCBuffer_224.y) * _914) + VREffectsCBuffer_224.y;
  _930 = ((VREffectsCBuffer_240.z - VREffectsCBuffer_224.z) * _914) + VREffectsCBuffer_224.z;
  _932 = VREffectsCBuffer_224.w * min(saturate(_879 * VREffectsCBuffer_176.x), saturate((VREffectsCBuffer_160.x - _137) * VREffectsCBuffer_192.x));
  _935 = VREffectsCBuffer_272.w * saturate(_880 / (VREffectsCBuffer_160.y - VREffectsCBuffer_144.y));
  _949 = ((VREffectsCBuffer_272.x - VREffectsCBuffer_256.x) * _935) + VREffectsCBuffer_256.x;
  _950 = ((VREffectsCBuffer_272.y - VREffectsCBuffer_256.y) * _935) + VREffectsCBuffer_256.y;
  _951 = ((VREffectsCBuffer_272.z - VREffectsCBuffer_256.z) * _935) + VREffectsCBuffer_256.z;
  _953 = VREffectsCBuffer_256.w * min(saturate(_880 * VREffectsCBuffer_176.y), saturate((VREffectsCBuffer_160.y - _137) * VREffectsCBuffer_192.y));
  _956 = VREffectsCBuffer_304.w * saturate(_881 / (VREffectsCBuffer_160.z - VREffectsCBuffer_144.z));
  _970 = ((VREffectsCBuffer_304.x - VREffectsCBuffer_288.x) * _956) + VREffectsCBuffer_288.x;
  _971 = ((VREffectsCBuffer_304.y - VREffectsCBuffer_288.y) * _956) + VREffectsCBuffer_288.y;
  _972 = ((VREffectsCBuffer_304.z - VREffectsCBuffer_288.z) * _956) + VREffectsCBuffer_288.z;
  _974 = VREffectsCBuffer_288.w * min(saturate(_881 * VREffectsCBuffer_176.z), saturate((VREffectsCBuffer_160.z - _137) * VREffectsCBuffer_192.z));
  _977 = VREffectsCBuffer_336.w * saturate(_882 / (VREffectsCBuffer_160.w - VREffectsCBuffer_144.w));
  _991 = ((VREffectsCBuffer_336.x - VREffectsCBuffer_320.x) * _977) + VREffectsCBuffer_320.x;
  _992 = ((VREffectsCBuffer_336.y - VREffectsCBuffer_320.y) * _977) + VREffectsCBuffer_320.y;
  _993 = ((VREffectsCBuffer_336.z - VREffectsCBuffer_320.z) * _977) + VREffectsCBuffer_320.z;
  _995 = VREffectsCBuffer_320.w * min(saturate(_882 * VREffectsCBuffer_176.w), saturate((VREffectsCBuffer_160.w - _137) * VREffectsCBuffer_192.w));
  [branch]
  if (VREffectsCBuffer_208.x < 0.5f) {
    _1281 = (lerp(_849, _928, _932));
    _1282 = (lerp(_850, _929, _932));
    _1283 = (lerp(_851, _930, _932));
  } else {
    if (VREffectsCBuffer_208.x < 1.5f) {
      _1281 = ((_928 * _932) + _849);
      _1282 = ((_929 * _932) + _850);
      _1283 = ((_930 * _932) + _851);
    } else {
      if (VREffectsCBuffer_208.x < 2.5f) {
        _1045 = select((_849 > 1.0f), _849, saturate((exp2(log2(abs(_849)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1046 = select((_850 > 1.0f), _850, saturate((exp2(log2(abs(_850)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1047 = select((_851 > 1.0f), _851, saturate((exp2(log2(abs(_851)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1078 = (select((_928 > 1.0f), _928, saturate((exp2(log2(abs(_928)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _932;
        _1079 = (select((_929 > 1.0f), _929, saturate((exp2(log2(abs(_929)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _932;
        _1080 = (select((_930 > 1.0f), _930, saturate((exp2(log2(abs(_930)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _932;
        _1084 = (_1078 + 0.5f) * 2.0f;
        _1085 = (_1079 + 0.5f) * 2.0f;
        _1086 = (_1080 + 0.5f) * 2.0f;
        _1094 = (lerp(_1084, 1.0f, _1045)) * _1045;
        _1096 = (lerp(_1085, 1.0f, _1046)) * _1046;
        _1098 = (lerp(_1086, 1.0f, _1047)) * _1047;
        _1132 = (((((_1084 + -1.0f) * sqrt(_1045)) + ((_1045 * 2.0f) * (0.5f - _1078))) - _1094) * select((_1045 < 0.5f), 0.0f, 1.0f)) + _1094;
        _1133 = (((((_1085 + -1.0f) * sqrt(_1046)) + ((_1046 * 2.0f) * (0.5f - _1079))) - _1096) * select((_1046 < 0.5f), 0.0f, 1.0f)) + _1096;
        _1134 = (((((_1086 + -1.0f) * sqrt(_1047)) + ((_1047 * 2.0f) * (0.5f - _1080))) - _1098) * select((_1047 < 0.5f), 0.0f, 1.0f)) + _1098;
        _1281 = (((((_1132 * 0.30530601739883423f) + 0.682171106338501f) * _1132) + 0.012522878125309944f) * _1132);
        _1282 = (((((_1133 * 0.30530601739883423f) + 0.682171106338501f) * _1133) + 0.012522878125309944f) * _1133);
        _1283 = (((((_1134 * 0.30530601739883423f) + 0.682171106338501f) * _1134) + 0.012522878125309944f) * _1134);
      } else {
        if (VREffectsCBuffer_208.x < 3.5f) {
          _1177 = select((_849 > 1.0f), _849, saturate((exp2(log2(abs(_849)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1178 = select((_850 > 1.0f), _850, saturate((exp2(log2(abs(_850)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1179 = select((_851 > 1.0f), _851, saturate((exp2(log2(abs(_851)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1210 = (select((_928 > 1.0f), _928, saturate((exp2(log2(abs(_928)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _932;
          _1211 = (select((_929 > 1.0f), _929, saturate((exp2(log2(abs(_929)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _932;
          _1212 = (select((_930 > 1.0f), _930, saturate((exp2(log2(abs(_930)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _932;
          _1219 = (_1177 * 2.0f) * (_1210 + 0.5f);
          _1220 = (_1178 * 2.0f) * (_1211 + 0.5f);
          _1221 = (_1179 * 2.0f) * (_1212 + 0.5f);
          _1249 = (((1.0f - (((1.0f - _1177) * 2.0f) * (0.5f - _1210))) - _1219) * select((_1177 < 0.5f), 0.0f, 1.0f)) + _1219;
          _1250 = (((1.0f - (((1.0f - _1178) * 2.0f) * (0.5f - _1211))) - _1220) * select((_1178 < 0.5f), 0.0f, 1.0f)) + _1220;
          _1251 = (((1.0f - (((1.0f - _1179) * 2.0f) * (0.5f - _1212))) - _1221) * select((_1179 < 0.5f), 0.0f, 1.0f)) + _1221;
          _1281 = (((((_1249 * 0.30530601739883423f) + 0.682171106338501f) * _1249) + 0.012522878125309944f) * _1249);
          _1282 = (((((_1250 * 0.30530601739883423f) + 0.682171106338501f) * _1250) + 0.012522878125309944f) * _1250);
          _1283 = (((((_1251 * 0.30530601739883423f) + 0.682171106338501f) * _1251) + 0.012522878125309944f) * _1251);
        } else {
          _1281 = ((((_928 + -1.0f) * _932) + 1.0f) * _849);
          _1282 = ((((_929 + -1.0f) * _932) + 1.0f) * _850);
          _1283 = ((((_930 + -1.0f) * _932) + 1.0f) * _851);
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.y < 0.5f) {
    _1568 = (lerp(_1281, _949, _953));
    _1569 = (lerp(_1282, _950, _953));
    _1570 = (lerp(_1283, _951, _953));
  } else {
    if (VREffectsCBuffer_208.y < 1.5f) {
      _1568 = (_1281 + (_949 * _953));
      _1569 = (_1282 + (_950 * _953));
      _1570 = (_1283 + (_951 * _953));
    } else {
      if (VREffectsCBuffer_208.y < 2.5f) {
        _1332 = select((_1281 > 1.0f), _1281, saturate((exp2(log2(abs(_1281)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1333 = select((_1282 > 1.0f), _1282, saturate((exp2(log2(abs(_1282)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1334 = select((_1283 > 1.0f), _1283, saturate((exp2(log2(abs(_1283)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1365 = (select((_949 > 1.0f), _949, saturate((exp2(log2(abs(_949)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _953;
        _1366 = (select((_950 > 1.0f), _950, saturate((exp2(log2(abs(_950)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _953;
        _1367 = (select((_951 > 1.0f), _951, saturate((exp2(log2(abs(_951)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _953;
        _1371 = (_1365 + 0.5f) * 2.0f;
        _1372 = (_1366 + 0.5f) * 2.0f;
        _1373 = (_1367 + 0.5f) * 2.0f;
        _1381 = (lerp(_1371, 1.0f, _1332)) * _1332;
        _1383 = (lerp(_1372, 1.0f, _1333)) * _1333;
        _1385 = (lerp(_1373, 1.0f, _1334)) * _1334;
        _1419 = (((((_1371 + -1.0f) * sqrt(_1332)) + ((_1332 * 2.0f) * (0.5f - _1365))) - _1381) * select((_1332 < 0.5f), 0.0f, 1.0f)) + _1381;
        _1420 = (((((_1372 + -1.0f) * sqrt(_1333)) + ((_1333 * 2.0f) * (0.5f - _1366))) - _1383) * select((_1333 < 0.5f), 0.0f, 1.0f)) + _1383;
        _1421 = (((((_1373 + -1.0f) * sqrt(_1334)) + ((_1334 * 2.0f) * (0.5f - _1367))) - _1385) * select((_1334 < 0.5f), 0.0f, 1.0f)) + _1385;
        _1568 = (((((_1419 * 0.30530601739883423f) + 0.682171106338501f) * _1419) + 0.012522878125309944f) * _1419);
        _1569 = (((((_1420 * 0.30530601739883423f) + 0.682171106338501f) * _1420) + 0.012522878125309944f) * _1420);
        _1570 = (((((_1421 * 0.30530601739883423f) + 0.682171106338501f) * _1421) + 0.012522878125309944f) * _1421);
      } else {
        if (VREffectsCBuffer_208.y < 3.5f) {
          _1464 = select((_1281 > 1.0f), _1281, saturate((exp2(log2(abs(_1281)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1465 = select((_1282 > 1.0f), _1282, saturate((exp2(log2(abs(_1282)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1466 = select((_1283 > 1.0f), _1283, saturate((exp2(log2(abs(_1283)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1497 = (select((_949 > 1.0f), _949, saturate((exp2(log2(abs(_949)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _953;
          _1498 = (select((_950 > 1.0f), _950, saturate((exp2(log2(abs(_950)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _953;
          _1499 = (select((_951 > 1.0f), _951, saturate((exp2(log2(abs(_951)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _953;
          _1506 = (_1464 * 2.0f) * (_1497 + 0.5f);
          _1507 = (_1465 * 2.0f) * (_1498 + 0.5f);
          _1508 = (_1466 * 2.0f) * (_1499 + 0.5f);
          _1536 = (((1.0f - (((1.0f - _1464) * 2.0f) * (0.5f - _1497))) - _1506) * select((_1464 < 0.5f), 0.0f, 1.0f)) + _1506;
          _1537 = (((1.0f - (((1.0f - _1465) * 2.0f) * (0.5f - _1498))) - _1507) * select((_1465 < 0.5f), 0.0f, 1.0f)) + _1507;
          _1538 = (((1.0f - (((1.0f - _1466) * 2.0f) * (0.5f - _1499))) - _1508) * select((_1466 < 0.5f), 0.0f, 1.0f)) + _1508;
          _1568 = (((((_1536 * 0.30530601739883423f) + 0.682171106338501f) * _1536) + 0.012522878125309944f) * _1536);
          _1569 = (((((_1537 * 0.30530601739883423f) + 0.682171106338501f) * _1537) + 0.012522878125309944f) * _1537);
          _1570 = (((((_1538 * 0.30530601739883423f) + 0.682171106338501f) * _1538) + 0.012522878125309944f) * _1538);
        } else {
          _1568 = (_1281 * (((_949 + -1.0f) * _953) + 1.0f));
          _1569 = (_1282 * (((_950 + -1.0f) * _953) + 1.0f));
          _1570 = (_1283 * (((_951 + -1.0f) * _953) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.z < 0.5f) {
    _1855 = (lerp(_1568, _970, _974));
    _1856 = (lerp(_1569, _971, _974));
    _1857 = (lerp(_1570, _972, _974));
  } else {
    if (VREffectsCBuffer_208.z < 1.5f) {
      _1855 = (_1568 + (_970 * _974));
      _1856 = (_1569 + (_971 * _974));
      _1857 = (_1570 + (_972 * _974));
    } else {
      if (VREffectsCBuffer_208.z < 2.5f) {
        _1619 = select((_1568 > 1.0f), _1568, saturate((exp2(log2(abs(_1568)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1620 = select((_1569 > 1.0f), _1569, saturate((exp2(log2(abs(_1569)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1621 = select((_1570 > 1.0f), _1570, saturate((exp2(log2(abs(_1570)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1652 = (select((_970 > 1.0f), _970, saturate((exp2(log2(abs(_970)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _974;
        _1653 = (select((_971 > 1.0f), _971, saturate((exp2(log2(abs(_971)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _974;
        _1654 = (select((_972 > 1.0f), _972, saturate((exp2(log2(abs(_972)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _974;
        _1658 = (_1652 + 0.5f) * 2.0f;
        _1659 = (_1653 + 0.5f) * 2.0f;
        _1660 = (_1654 + 0.5f) * 2.0f;
        _1668 = (lerp(_1658, 1.0f, _1619)) * _1619;
        _1670 = (lerp(_1659, 1.0f, _1620)) * _1620;
        _1672 = (lerp(_1660, 1.0f, _1621)) * _1621;
        _1706 = (((((_1658 + -1.0f) * sqrt(_1619)) + ((_1619 * 2.0f) * (0.5f - _1652))) - _1668) * select((_1619 < 0.5f), 0.0f, 1.0f)) + _1668;
        _1707 = (((((_1659 + -1.0f) * sqrt(_1620)) + ((_1620 * 2.0f) * (0.5f - _1653))) - _1670) * select((_1620 < 0.5f), 0.0f, 1.0f)) + _1670;
        _1708 = (((((_1660 + -1.0f) * sqrt(_1621)) + ((_1621 * 2.0f) * (0.5f - _1654))) - _1672) * select((_1621 < 0.5f), 0.0f, 1.0f)) + _1672;
        _1855 = (((((_1706 * 0.30530601739883423f) + 0.682171106338501f) * _1706) + 0.012522878125309944f) * _1706);
        _1856 = (((((_1707 * 0.30530601739883423f) + 0.682171106338501f) * _1707) + 0.012522878125309944f) * _1707);
        _1857 = (((((_1708 * 0.30530601739883423f) + 0.682171106338501f) * _1708) + 0.012522878125309944f) * _1708);
      } else {
        if (VREffectsCBuffer_208.z < 3.5f) {
          _1751 = select((_1568 > 1.0f), _1568, saturate((exp2(log2(abs(_1568)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1752 = select((_1569 > 1.0f), _1569, saturate((exp2(log2(abs(_1569)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1753 = select((_1570 > 1.0f), _1570, saturate((exp2(log2(abs(_1570)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _1784 = (select((_970 > 1.0f), _970, saturate((exp2(log2(abs(_970)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _974;
          _1785 = (select((_971 > 1.0f), _971, saturate((exp2(log2(abs(_971)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _974;
          _1786 = (select((_972 > 1.0f), _972, saturate((exp2(log2(abs(_972)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _974;
          _1793 = (_1751 * 2.0f) * (_1784 + 0.5f);
          _1794 = (_1752 * 2.0f) * (_1785 + 0.5f);
          _1795 = (_1753 * 2.0f) * (_1786 + 0.5f);
          _1823 = (((1.0f - (((1.0f - _1751) * 2.0f) * (0.5f - _1784))) - _1793) * select((_1751 < 0.5f), 0.0f, 1.0f)) + _1793;
          _1824 = (((1.0f - (((1.0f - _1752) * 2.0f) * (0.5f - _1785))) - _1794) * select((_1752 < 0.5f), 0.0f, 1.0f)) + _1794;
          _1825 = (((1.0f - (((1.0f - _1753) * 2.0f) * (0.5f - _1786))) - _1795) * select((_1753 < 0.5f), 0.0f, 1.0f)) + _1795;
          _1855 = (((((_1823 * 0.30530601739883423f) + 0.682171106338501f) * _1823) + 0.012522878125309944f) * _1823);
          _1856 = (((((_1824 * 0.30530601739883423f) + 0.682171106338501f) * _1824) + 0.012522878125309944f) * _1824);
          _1857 = (((((_1825 * 0.30530601739883423f) + 0.682171106338501f) * _1825) + 0.012522878125309944f) * _1825);
        } else {
          _1855 = (_1568 * (((_970 + -1.0f) * _974) + 1.0f));
          _1856 = (_1569 * (((_971 + -1.0f) * _974) + 1.0f));
          _1857 = (_1570 * (((_972 + -1.0f) * _974) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (VREffectsCBuffer_208.w < 0.5f) {
    _2142 = (lerp(_1855, _991, _995));
    _2143 = (lerp(_1856, _992, _995));
    _2144 = (lerp(_1857, _993, _995));
  } else {
    if (VREffectsCBuffer_208.w < 1.5f) {
      _2142 = (_1855 + (_991 * _995));
      _2143 = (_1856 + (_992 * _995));
      _2144 = (_1857 + (_993 * _995));
    } else {
      if (VREffectsCBuffer_208.w < 2.5f) {
        _1906 = select((_1855 > 1.0f), _1855, saturate((exp2(log2(abs(_1855)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1907 = select((_1856 > 1.0f), _1856, saturate((exp2(log2(abs(_1856)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1908 = select((_1857 > 1.0f), _1857, saturate((exp2(log2(abs(_1857)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        _1939 = (select((_991 > 1.0f), _991, saturate((exp2(log2(abs(_991)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _995;
        _1940 = (select((_992 > 1.0f), _992, saturate((exp2(log2(abs(_992)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _995;
        _1941 = (select((_993 > 1.0f), _993, saturate((exp2(log2(abs(_993)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _995;
        _1945 = (_1939 + 0.5f) * 2.0f;
        _1946 = (_1940 + 0.5f) * 2.0f;
        _1947 = (_1941 + 0.5f) * 2.0f;
        _1955 = (lerp(_1945, 1.0f, _1906)) * _1906;
        _1957 = (lerp(_1946, 1.0f, _1907)) * _1907;
        _1959 = (lerp(_1947, 1.0f, _1908)) * _1908;
        _1993 = (((((_1945 + -1.0f) * sqrt(_1906)) + ((_1906 * 2.0f) * (0.5f - _1939))) - _1955) * select((_1906 < 0.5f), 0.0f, 1.0f)) + _1955;
        _1994 = (((((_1946 + -1.0f) * sqrt(_1907)) + ((_1907 * 2.0f) * (0.5f - _1940))) - _1957) * select((_1907 < 0.5f), 0.0f, 1.0f)) + _1957;
        _1995 = (((((_1947 + -1.0f) * sqrt(_1908)) + ((_1908 * 2.0f) * (0.5f - _1941))) - _1959) * select((_1908 < 0.5f), 0.0f, 1.0f)) + _1959;
        _2142 = (((((_1993 * 0.30530601739883423f) + 0.682171106338501f) * _1993) + 0.012522878125309944f) * _1993);
        _2143 = (((((_1994 * 0.30530601739883423f) + 0.682171106338501f) * _1994) + 0.012522878125309944f) * _1994);
        _2144 = (((((_1995 * 0.30530601739883423f) + 0.682171106338501f) * _1995) + 0.012522878125309944f) * _1995);
      } else {
        if (VREffectsCBuffer_208.w < 3.5f) {
          _2038 = select((_1855 > 1.0f), _1855, saturate((exp2(log2(abs(_1855)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2039 = select((_1856 > 1.0f), _1856, saturate((exp2(log2(abs(_1856)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2040 = select((_1857 > 1.0f), _1857, saturate((exp2(log2(abs(_1857)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          _2071 = (select((_991 > 1.0f), _991, saturate((exp2(log2(abs(_991)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _995;
          _2072 = (select((_992 > 1.0f), _992, saturate((exp2(log2(abs(_992)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _995;
          _2073 = (select((_993 > 1.0f), _993, saturate((exp2(log2(abs(_993)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _995;
          _2080 = (_2038 * 2.0f) * (_2071 + 0.5f);
          _2081 = (_2039 * 2.0f) * (_2072 + 0.5f);
          _2082 = (_2040 * 2.0f) * (_2073 + 0.5f);
          _2110 = (((1.0f - (((1.0f - _2038) * 2.0f) * (0.5f - _2071))) - _2080) * select((_2038 < 0.5f), 0.0f, 1.0f)) + _2080;
          _2111 = (((1.0f - (((1.0f - _2039) * 2.0f) * (0.5f - _2072))) - _2081) * select((_2039 < 0.5f), 0.0f, 1.0f)) + _2081;
          _2112 = (((1.0f - (((1.0f - _2040) * 2.0f) * (0.5f - _2073))) - _2082) * select((_2040 < 0.5f), 0.0f, 1.0f)) + _2082;
          _2142 = (((((_2110 * 0.30530601739883423f) + 0.682171106338501f) * _2110) + 0.012522878125309944f) * _2110);
          _2143 = (((((_2111 * 0.30530601739883423f) + 0.682171106338501f) * _2111) + 0.012522878125309944f) * _2111);
          _2144 = (((((_2112 * 0.30530601739883423f) + 0.682171106338501f) * _2112) + 0.012522878125309944f) * _2112);
        } else {
          _2142 = (_1855 * (((_991 + -1.0f) * _995) + 1.0f));
          _2143 = (_1856 * (((_992 + -1.0f) * _995) + 1.0f));
          _2144 = (_1857 * (((_993 + -1.0f) * _995) + 1.0f));
        }
      }
    }
  }
  _2151 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.x + _26), ((VREffectsCBuffer_352.y * _29) + _47)), (Globals_976), int2(0, 0));
  _2168 = t1.SampleBias(s1, float2((VREffectsCBuffer_352.z + _26), ((VREffectsCBuffer_352.w * _29) + _47)), (Globals_976), int2(0, 0));
  _2185 = t1.SampleBias(s1, float2((VREffectsCBuffer_368.x + _26), ((VREffectsCBuffer_368.y * _29) + _47)), (Globals_976), int2(0, 0));

  _2151.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2151.xyz), 1.0f, 0.5f);
  _2168.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2168.xyz), 1.0f, 0.5f);
  _2185.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2185.xyz), 1.0f, 0.5f);

  _2208 = (((((VREffectsCBuffer_384.x * _2151.x) - _2142) + (VREffectsCBuffer_400.x * _2168.y)) + (VREffectsCBuffer_416.x * _2185.z)) * VREffectsCBuffer_368.z) + _2142;
  _2209 = (((((VREffectsCBuffer_384.y * _2151.x) - _2143) + (VREffectsCBuffer_400.y * _2168.y)) + (VREffectsCBuffer_416.y * _2185.z)) * VREffectsCBuffer_368.z) + _2143;
  _2210 = (((((VREffectsCBuffer_384.z * _2151.x) - _2144) + (VREffectsCBuffer_400.z * _2168.y)) + (VREffectsCBuffer_416.z * _2185.z)) * VREffectsCBuffer_368.z) + _2144;
  _2216 = (((-0.0f - VREffectsCBuffer_064.y) - VREffectsCBuffer_064.y) * _21) + VREffectsCBuffer_064.y;
  if (!(VREffectsCBuffer_064.w < 0.5f)) {
    _2220 = _2216 * 0.5f;
    _2221 = _2220 + 0.5f;
    _2240 = 0.5f - _2220;
    _2244 = 1.0f - (((1.0f - _2208) * 2.0f) * _2240);
    _2245 = 1.0f - (((1.0f - _2209) * 2.0f) * _2240);
    _2246 = 1.0f - (((1.0f - _2210) * 2.0f) * _2240);
    _2260 = ((_2244 - _2208) + ((((_2208 * 2.0f) * _2221) - _2244) * select((_2208 > 0.5f), 0.0f, 1.0f)));
    _2261 = ((_2245 - _2209) + ((((_2209 * 2.0f) * _2221) - _2245) * select((_2209 > 0.5f), 0.0f, 1.0f)));
    _2262 = ((_2246 - _2210) + ((((_2210 * 2.0f) * _2221) - _2246) * select((_2210 > 0.5f), 0.0f, 1.0f)));
  } else {
    _2260 = _2216;
    _2261 = _2216;
    _2262 = _2216;
  }
  _2263 = _2260 + _2208;
  _2264 = _2261 + _2209;
  _2265 = _2262 + _2210;
  if (VREffectsCBuffer_464.w > 0.5f) {
    _2271 = int(VREffectsCBuffer_464.x);
    _2279 = int(VREffectsCBuffer_464.z);
    _2292 = t2.SampleBias(s1, float2(((float((int)(_2279 % _2271)) * (1.0f / float((int)(_2271)))) + (_26 / VREffectsCBuffer_464.x)), ((float((int)(_2279 / _2271)) * (1.0f / float((int)(int(VREffectsCBuffer_464.y))))) + (_47 / VREffectsCBuffer_464.y))), (Globals_976), int2(0, 0));
    _2305 = VREffectsCBuffer_480.w * _2292.w;
    _2306 = 1.0f - _2305;
    _2317 = ((_2306 * _2263) + ((VREffectsCBuffer_480.x * _2292.x) * _2305));
    _2318 = ((_2306 * _2264) + ((VREffectsCBuffer_480.y * _2292.y) * _2305));
    _2319 = ((_2306 * _2265) + ((VREffectsCBuffer_480.z * _2292.z) * _2305));
  } else {
    _2317 = _2263;
    _2318 = _2264;
    _2319 = _2265;
  }
  if (VREffectsCBuffer_784.x > 0.5f) {
    _2328 = _38 * (TEXCOORD.x - VREffectsCBuffer_800.x);
    _2330 = (TEXCOORD.y - VREffectsCBuffer_800.y) * 2.0f;
    _2341 = saturate(sqrt((_2328 * _2328) + (_2330 * _2330)) / (VREffectsCBuffer_800.z * sqrt((_29 * _29) + 1.0f)));
    _2350 = exp2(log2(1.0f - ((_2341 * _2341) * (3.0f - (_2341 * 2.0f)))) * VREffectsCBuffer_784.w);
    _2354 = (VREffectsCBuffer_784.y * (_2350 + -1.0f)) + 1.0f;
    _2355 = _2354 * _2317;
    _2356 = _2354 * _2318;
    _2357 = _2354 * _2319;
    _2359 = VREffectsCBuffer_784.z * _2350;
    _2388 = ((((1.0f - _2355) + (select((_2355 > 0.5f), 0.0f, 1.0f) * ((_2355 * 2.0f) + -1.0f))) * _2359) + _2355);
    _2389 = ((((1.0f - _2356) + (select((_2356 > 0.5f), 0.0f, 1.0f) * ((_2356 * 2.0f) + -1.0f))) * _2359) + _2356);
    _2390 = ((((1.0f - _2357) + (select((_2357 > 0.5f), 0.0f, 1.0f) * ((_2357 * 2.0f) + -1.0f))) * _2359) + _2357);
  } else {
    _2388 = _2317;
    _2389 = _2318;
    _2390 = _2319;
  }
  SV_Target.x = _2388;
  SV_Target.y = _2389;
  SV_Target.z = _2390;
  SV_Target.w = _VR_SourceImage0.w;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _VR_SourceImage0.xyz, SV_Target.xyz));

  return SV_Target;
}
