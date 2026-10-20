// The Talos Principle 2 (UE 5.2.0.0)

#include "../lutbuilderoutput.hlsli"

cbuffer _RootShaderParameters : register(b0) {
  float4 LUTWeights[2] : packoffset(c005.x);
  float4 ACESMinMaxData : packoffset(c008.x);
  float4 ACESMidData : packoffset(c009.x);
  float4 ACESCoefsLow_0 : packoffset(c010.x);
  float4 ACESCoefsHigh_0 : packoffset(c011.x);
  float ACESCoefsLow_4 : packoffset(c012.x);
  float ACESCoefsHigh_4 : packoffset(c012.y);
  float ACESSceneColorMultiplier : packoffset(c012.z);
  float4 OverlayColor : packoffset(c013.x);
  float3 ColorScale : packoffset(c014.x);
  float4 ColorSaturation : packoffset(c015.x);
  float4 ColorContrast : packoffset(c016.x);
  float4 ColorGamma : packoffset(c017.x);
  float4 ColorGain : packoffset(c018.x);
  float4 ColorOffset : packoffset(c019.x);
  float4 ColorSaturationShadows : packoffset(c020.x);
  float4 ColorContrastShadows : packoffset(c021.x);
  float4 ColorGammaShadows : packoffset(c022.x);
  float4 ColorGainShadows : packoffset(c023.x);
  float4 ColorOffsetShadows : packoffset(c024.x);
  float4 ColorSaturationMidtones : packoffset(c025.x);
  float4 ColorContrastMidtones : packoffset(c026.x);
  float4 ColorGammaMidtones : packoffset(c027.x);
  float4 ColorGainMidtones : packoffset(c028.x);
  float4 ColorOffsetMidtones : packoffset(c029.x);
  float4 ColorSaturationHighlights : packoffset(c030.x);
  float4 ColorContrastHighlights : packoffset(c031.x);
  float4 ColorGammaHighlights : packoffset(c032.x);
  float4 ColorGainHighlights : packoffset(c033.x);
  float4 ColorOffsetHighlights : packoffset(c034.x);
  float LUTSize : packoffset(c035.x);
  float WhiteTemp : packoffset(c035.y);
  float WhiteTint : packoffset(c035.z);
  float ColorCorrectionShadowsMax : packoffset(c035.w);
  float ColorCorrectionHighlightsMin : packoffset(c036.x);
  float ColorCorrectionHighlightsMax : packoffset(c036.y);
  float BlueCorrection : packoffset(c036.z);
  float ExpandGamut : packoffset(c036.w);
  float ToneCurveAmount : packoffset(c037.x);
  float FilmSlope : packoffset(c037.y);
  float FilmToe : packoffset(c037.z);
  float FilmShoulder : packoffset(c037.w);
  float FilmBlackClip : packoffset(c038.x);
  float FilmWhiteClip : packoffset(c038.y);
  uint bUseMobileTonemapper : packoffset(c038.z);
  uint bIsTemperatureWhiteBalance : packoffset(c038.w);
  float3 MappingPolynomial : packoffset(c039.x);
  float3 InverseGamma : packoffset(c040.x);
  uint OutputDevice : packoffset(c040.w);
  uint OutputGamut : packoffset(c041.x);
  float OutputMaxLuminance : packoffset(c041.y);
};

cbuffer UniformBufferConstants_WorkingColorSpace : register(b1) {
  float4 WorkingColorSpace_ToXYZ[4] : packoffset(c000.x);
  float4 WorkingColorSpace_FromXYZ[4] : packoffset(c004.x);
  float4 WorkingColorSpace_ToAP1[4] : packoffset(c008.x);
  float4 WorkingColorSpace_FromAP1[4] : packoffset(c012.x);
  float4 WorkingColorSpace_ToAP0[4] : packoffset(c016.x);
  uint WorkingColorSpace_bIsSRGB : packoffset(c020.x);
};

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}
uint firstbithigh_msb(uint value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}

float4 main(
    noperspective float2 TEXCOORD: TEXCOORD,
    precise noperspective float4 SV_Position: SV_Position,
    nointerpolation uint SV_RenderTargetArrayIndex: SV_RenderTargetArrayIndex) : SV_Target {
  float4 SV_Target;
  float _14;
  float _19;
  float _20;
  float _21;
  float _23;
  float _43;
  float _44;
  float _45;
  float _46;
  float _47;
  float _48;
  float _49;
  float _50;
  float _51;
  float _109;
  float _110;
  float _111;
  float _159;
  float _887;
  float _920;
  float _934;
  float _998;
  float _1266;
  float _1267;
  float _1268;
  float _1279;
  float _1290;
  float _1462;
  float _1477;
  float _1492;
  float _1500;
  float _1501;
  float _1502;
  float _1560;
  float _1593;
  float _1607;
  float _1646;
  float _1756;
  float _1830;
  float _1904;
  float _1983;
  float _1984;
  float _1985;
  float _2126;
  float _2141;
  float _2156;
  float _2164;
  float _2165;
  float _2166;
  float _2224;
  float _2257;
  float _2271;
  float _2310;
  float _2420;
  float _2494;
  float _2568;
  float _2647;
  float _2648;
  float _2649;
  float _2826;
  float _2827;
  float _2828;
  bool _32;
  float _62;
  float _63;
  float _64;
  bool _138;
  float _142;
  float _173;
  float _180;
  float _183;
  float _188;
  float _189;
  float _191;
  bool _192;
  float _201;
  float _203;
  float _210;
  float _212;
  float _214;
  float _215;
  float _218;
  float _221;
  float _226;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _242;
  float _243;
  float _244;
  float _247;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _272;
  float _273;
  float _274;
  float _277;
  float _280;
  float _283;
  float _286;
  float _289;
  float _292;
  float _295;
  float _298;
  float _301;
  float _304;
  float _307;
  float _310;
  float _313;
  float _316;
  float _319;
  float _322;
  float _325;
  float _328;
  float _358;
  float _361;
  float _364;
  float _379;
  float _382;
  float _385;
  float _386;
  float _390;
  float _391;
  float _392;
  float _404;
  float _420;
  float _421;
  float _422;
  float _423;
  float _437;
  float _451;
  float _465;
  float _479;
  float _493;
  float _497;
  float _498;
  float _499;
  float _556;
  float _560;
  float _561;
  float _570;
  float _579;
  float _588;
  float _597;
  float _606;
  float _669;
  float _673;
  float _682;
  float _691;
  float _700;
  float _709;
  float _718;
  float _776;
  float _787;
  float _789;
  float _791;
  float _827;
  float _828;
  float _829;
  float _832;
  float _835;
  float _838;
  float _842;
  float _847;
  float _860;
  float _861;
  float _862;
  float _863;
  float _867;
  float _878;
  float _888;
  float _889;
  float _890;
  float _891;
  float _898;
  float _901;
  float _903;
  bool _906;
  bool _907;
  bool _908;
  bool _909;
  float _925;
  float _938;
  float _942;
  float _948;
  float _958;
  float _959;
  float _960;
  float _961;
  float _976;
  float _978;
  float _980;
  float _989;
  float _1001;
  float _1003;
  float _1007;
  float _1008;
  float _1009;
  float _1013;
  float _1014;
  float _1015;
  float _1016;
  float _1018;
  float _1019;
  float _1020;
  float _1021;
  float _1040;
  float _1042;
  float _1067;
  float _1068;
  float _1069;
  float _1076;
  float _1080;
  float _1081;
  float _1082;
  bool _1083;
  float _1087;
  float _1088;
  float _1089;
  float _1108;
  float _1109;
  float _1110;
  float _1111;
  float _1131;
  float _1132;
  float _1133;
  float _1149;
  float _1150;
  float _1151;
  float _1161;
  float _1162;
  float _1163;
  float _1189;
  float _1190;
  float _1191;
  float _1198;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1203;
  float _1210;
  float _1211;
  float _1212;
  float _1224;
  float _1225;
  float _1226;
  float _1249;
  float _1252;
  float _1255;
  float _1317;
  float _1320;
  float _1323;
  float _1333;
  float _1334;
  float _1335;
  float _1410;
  float _1411;
  float _1412;
  float _1415;
  float _1418;
  float _1421;
  float _1424;
  float _1427;
  float _1430;
  float _1432;
  float _1442;
  float _1443;
  float _1445;
  float _1447;
  float _1450;
  float _1465;
  float _1480;
  float _1505;
  float _1508;
  float _1511;
  float _1515;
  float _1520;
  float _1533;
  float _1534;
  float _1535;
  float _1536;
  float _1540;
  float _1551;
  float _1561;
  float _1562;
  float _1563;
  float _1564;
  float _1571;
  float _1574;
  float _1576;
  bool _1579;
  bool _1580;
  bool _1581;
  bool _1582;
  float _1598;
  float _1613;
  int _1614;
  float _1616;
  float _1617;
  float _1618;
  float _1655;
  float _1656;
  float _1657;
  float _1670;
  float _1671;
  float _1672;
  float _1673;
  float _1684;
  float _1685;
  float _1686;
  float _1687;
  float _1694;
  float _1695;
  float _1703;
  int _1704;
  float _1706;
  float _1708;
  float _1711;
  float _1716;
  float _1725;
  float _1733;
  int _1734;
  float _1736;
  float _1738;
  float _1741;
  float _1746;
  float _1760;
  float _1761;
  float _1768;
  float _1769;
  float _1777;
  int _1778;
  float _1780;
  float _1782;
  float _1785;
  float _1790;
  float _1799;
  float _1807;
  int _1808;
  float _1810;
  float _1812;
  float _1815;
  float _1820;
  float _1834;
  float _1835;
  float _1842;
  float _1843;
  float _1851;
  int _1852;
  float _1854;
  float _1856;
  float _1859;
  float _1864;
  float _1873;
  float _1881;
  int _1882;
  float _1884;
  float _1886;
  float _1889;
  float _1894;
  float _1908;
  float _1909;
  float _1911;
  float _1913;
  float _1916;
  float _1919;
  float _1922;
  float _1935;
  float _1936;
  float _1937;
  float _1940;
  float _1943;
  float _1946;
  float _1968;
  float _1969;
  float _1970;
  float _1995;
  float _1996;
  float _1997;
  float _2074;
  float _2075;
  float _2076;
  float _2079;
  float _2082;
  float _2085;
  float _2088;
  float _2091;
  float _2094;
  float _2096;
  float _2106;
  float _2107;
  float _2109;
  float _2111;
  float _2114;
  float _2129;
  float _2144;
  float _2169;
  float _2172;
  float _2175;
  float _2179;
  float _2184;
  float _2197;
  float _2198;
  float _2199;
  float _2200;
  float _2204;
  float _2215;
  float _2225;
  float _2226;
  float _2227;
  float _2228;
  float _2235;
  float _2238;
  float _2240;
  bool _2243;
  bool _2244;
  bool _2245;
  bool _2246;
  float _2262;
  float _2277;
  int _2278;
  float _2280;
  float _2281;
  float _2282;
  float _2319;
  float _2320;
  float _2321;
  float _2334;
  float _2335;
  float _2336;
  float _2337;
  float _2348;
  float _2349;
  float _2350;
  float _2351;
  float _2358;
  float _2359;
  float _2367;
  int _2368;
  float _2370;
  float _2372;
  float _2375;
  float _2380;
  float _2389;
  float _2397;
  int _2398;
  float _2400;
  float _2402;
  float _2405;
  float _2410;
  float _2424;
  float _2425;
  float _2432;
  float _2433;
  float _2441;
  int _2442;
  float _2444;
  float _2446;
  float _2449;
  float _2454;
  float _2463;
  float _2471;
  int _2472;
  float _2474;
  float _2476;
  float _2479;
  float _2484;
  float _2498;
  float _2499;
  float _2506;
  float _2507;
  float _2515;
  int _2516;
  float _2518;
  float _2520;
  float _2523;
  float _2528;
  float _2537;
  float _2545;
  int _2546;
  float _2548;
  float _2550;
  float _2553;
  float _2558;
  float _2572;
  float _2573;
  float _2575;
  float _2577;
  float _2580;
  float _2583;
  float _2586;
  float _2599;
  float _2600;
  float _2601;
  float _2604;
  float _2607;
  float _2610;
  float _2632;
  float _2633;
  float _2634;
  float _2659;
  float _2660;
  float _2661;
  float _2706;
  float _2709;
  float _2712;
  float _2731;
  float _2732;
  float _2733;
  float _2780;
  float _2783;
  float _2786;
  float _2799;
  float _2802;
  float _2805;
  float _8[6];
  float _9[6];
  float _10[6];
  float _11[6];
  _14 = 0.5f / LUTSize;
  _19 = LUTSize + -1.0f;
  _20 = (LUTSize * (TEXCOORD.x - _14)) / _19;
  _21 = (LUTSize * (TEXCOORD.y - _14)) / _19;
  _23 = ((float)((uint)(uint)(SV_RenderTargetArrayIndex))) / _19;
  if (!(OutputGamut == 1)) {
    if (!(OutputGamut == 2)) {
      if (!(OutputGamut == 3)) {
        _32 = (OutputGamut == 4);
        _43 = select(_32, 1.0f, 1.7050515413284302f);
        _44 = select(_32, 0.0f, -0.6217905879020691f);
        _45 = select(_32, 0.0f, -0.0832584798336029f);
        _46 = select(_32, 0.0f, -0.13025718927383423f);
        _47 = select(_32, 1.0f, 1.1408027410507202f);
        _48 = select(_32, 0.0f, -0.010548528283834457f);
        _49 = select(_32, 0.0f, -0.024003278464078903f);
        _50 = select(_32, 0.0f, -0.1289687603712082f);
        _51 = select(_32, 1.0f, 1.152971863746643f);
      } else {
        _43 = 0.6954522132873535f;
        _44 = 0.14067870378494263f;
        _45 = 0.16386906802654266f;
        _46 = 0.044794563204050064f;
        _47 = 0.8596711158752441f;
        _48 = 0.0955343171954155f;
        _49 = -0.005525882821530104f;
        _50 = 0.004025210160762072f;
        _51 = 1.0015007257461548f;
      }
    } else {
      _43 = 1.02579927444458f;
      _44 = -0.020052503794431686f;
      _45 = -0.0057713985443115234f;
      _46 = -0.0022350111976265907f;
      _47 = 1.0045825242996216f;
      _48 = -0.002352306619286537f;
      _49 = -0.005014004185795784f;
      _50 = -0.025293385609984398f;
      _51 = 1.0304402112960815f;
    }
  } else {
    _43 = 1.379158854484558f;
    _44 = -0.3088507056236267f;
    _45 = -0.07034677267074585f;
    _46 = -0.06933528929948807f;
    _47 = 1.0822921991348267f;
    _48 = -0.012962047010660172f;
    _49 = -0.002159259282052517f;
    _50 = -0.045465391129255295f;
    _51 = 1.0477596521377563f;
  }
  if ((uint)OutputDevice > (uint)2) {
    _62 = (pow(_20, 0.012683313339948654f));
    _63 = (pow(_21, 0.012683313339948654f));
    _64 = (pow(_23, 0.012683313339948654f));
    _109 = (exp2(log2(max(0.0f, (_62 + -0.8359375f)) / (18.8515625f - (_62 * 18.6875f))) * 6.277394771575928f) * 100.0f);
    _110 = (exp2(log2(max(0.0f, (_63 + -0.8359375f)) / (18.8515625f - (_63 * 18.6875f))) * 6.277394771575928f) * 100.0f);
    _111 = (exp2(log2(max(0.0f, (_64 + -0.8359375f)) / (18.8515625f - (_64 * 18.6875f))) * 6.277394771575928f) * 100.0f);
  } else {
    _109 = ((exp2((_20 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
    _110 = ((exp2((_21 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
    _111 = ((exp2((_23 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
  }
  _138 = (bIsTemperatureWhiteBalance != 0);
  _142 = 0.9994439482688904f / WhiteTemp;
  if (!((WhiteTemp * 1.0005563497543335f) <= 7000.0f)) {
    _159 = (((((1901800.0f - (_142 * 2006400000.0f)) * _142) + 247.47999572753906f) * _142) + 0.23703999817371368f);
  } else {
    _159 = (((((2967800.0f - (_142 * 4607000064.0f)) * _142) + 99.11000061035156f) * _142) + 0.24406300485134125f);
  }
  _173 = ((((WhiteTemp * 1.2864121856637212e-07f) + 0.00015411825734190643f) * WhiteTemp) + 0.8601177334785461f) / ((((WhiteTemp * 7.081451371959702e-07f) + 0.0008424202096648514f) * WhiteTemp) + 1.0f);
  _180 = WhiteTemp * WhiteTemp;
  _183 = ((((WhiteTemp * 4.204816761443908e-08f) + 4.228062607580796e-05f) * WhiteTemp) + 0.31739872694015503f) / ((1.0f - (WhiteTemp * 2.8974181986995973e-05f)) + (_180 * 1.6145605741257896e-07f));
  _188 = ((_173 * 2.0f) + 4.0f) - (_183 * 8.0f);
  _189 = (_173 * 3.0f) / _188;
  _191 = (_183 * 2.0f) / _188;
  _192 = (WhiteTemp < 4000.0f);
  _201 = ((WhiteTemp + 1189.6199951171875f) * WhiteTemp) + 1412139.875f;
  _203 = ((-1137581184.0f - (WhiteTemp * 1916156.25f)) - (_180 * 1.5317699909210205f)) / (_201 * _201);
  _210 = (6193636.0f - (WhiteTemp * 179.45599365234375f)) + _180;
  _212 = ((1974715392.0f - (WhiteTemp * 705674.0f)) - (_180 * 308.60699462890625f)) / (_210 * _210);
  _214 = rsqrt(dot(float2(_203, _212), float2(_203, _212)));
  _215 = WhiteTint * 0.05000000074505806f;
  _218 = ((_215 * _212) * _214) + _173;
  _221 = _183 - ((_215 * _203) * _214);
  _226 = (4.0f - (_221 * 8.0f)) + (_218 * 2.0f);
  _232 = (((_218 * 3.0f) / _226) - _189) + select(_192, _189, _159);
  _233 = (((_221 * 2.0f) / _226) - _191) + select(_192, _191, (((_159 * 2.869999885559082f) + -0.2750000059604645f) - ((_159 * _159) * 3.0f)));
  _234 = select(_138, _232, 0.3127000033855438f);
  _235 = select(_138, _233, 0.32899999618530273f);
  _236 = select(_138, 0.3127000033855438f, _232);
  _237 = select(_138, 0.32899999618530273f, _233);
  _238 = max(_235, 1.000000013351432e-10f);
  _239 = _234 / _238;
  _242 = ((1.0f - _234) - _235) / _238;
  _243 = max(_237, 1.000000013351432e-10f);
  _244 = _236 / _243;
  _247 = ((1.0f - _236) - _237) / _243;
  _266 = mad(-0.16140000522136688f, _247, ((_244 * 0.8950999975204468f) + 0.266400009393692f)) / mad(-0.16140000522136688f, _242, ((_239 * 0.8950999975204468f) + 0.266400009393692f));
  _267 = mad(0.03669999912381172f, _247, (1.7135000228881836f - (_244 * 0.7501999735832214f))) / mad(0.03669999912381172f, _242, (1.7135000228881836f - (_239 * 0.7501999735832214f)));
  _268 = mad(1.0296000242233276f, _247, ((_244 * 0.03889999911189079f) + -0.06849999725818634f)) / mad(1.0296000242233276f, _242, ((_239 * 0.03889999911189079f) + -0.06849999725818634f));
  _269 = mad(_267, -0.7501999735832214f, 0.0f);
  _270 = mad(_267, 1.7135000228881836f, 0.0f);
  _271 = mad(_267, 0.03669999912381172f, -0.0f);
  _272 = mad(_268, 0.03889999911189079f, 0.0f);
  _273 = mad(_268, -0.06849999725818634f, 0.0f);
  _274 = mad(_268, 1.0296000242233276f, 0.0f);
  _277 = mad(0.1599626988172531f, _272, mad(-0.1470542997121811f, _269, (_266 * 0.883457362651825f)));
  _280 = mad(0.1599626988172531f, _273, mad(-0.1470542997121811f, _270, (_266 * 0.26293492317199707f)));
  _283 = mad(0.1599626988172531f, _274, mad(-0.1470542997121811f, _271, (_266 * -0.15930065512657166f)));
  _286 = mad(0.04929120093584061f, _272, mad(0.5183603167533875f, _269, (_266 * 0.38695648312568665f)));
  _289 = mad(0.04929120093584061f, _273, mad(0.5183603167533875f, _270, (_266 * 0.11516613513231277f)));
  _292 = mad(0.04929120093584061f, _274, mad(0.5183603167533875f, _271, (_266 * -0.0697740763425827f)));
  _295 = mad(0.9684867262840271f, _272, mad(0.04004279896616936f, _269, (_266 * -0.007634039502590895f)));
  _298 = mad(0.9684867262840271f, _273, mad(0.04004279896616936f, _270, (_266 * -0.0022720457054674625f)));
  _301 = mad(0.9684867262840271f, _274, mad(0.04004279896616936f, _271, (_266 * 0.0013765322510153055f)));
  _304 = mad(_283, (WorkingColorSpace_ToXYZ[2].x), mad(_280, (WorkingColorSpace_ToXYZ[1].x), (_277 * (WorkingColorSpace_ToXYZ[0].x))));
  _307 = mad(_283, (WorkingColorSpace_ToXYZ[2].y), mad(_280, (WorkingColorSpace_ToXYZ[1].y), (_277 * (WorkingColorSpace_ToXYZ[0].y))));
  _310 = mad(_283, (WorkingColorSpace_ToXYZ[2].z), mad(_280, (WorkingColorSpace_ToXYZ[1].z), (_277 * (WorkingColorSpace_ToXYZ[0].z))));
  _313 = mad(_292, (WorkingColorSpace_ToXYZ[2].x), mad(_289, (WorkingColorSpace_ToXYZ[1].x), (_286 * (WorkingColorSpace_ToXYZ[0].x))));
  _316 = mad(_292, (WorkingColorSpace_ToXYZ[2].y), mad(_289, (WorkingColorSpace_ToXYZ[1].y), (_286 * (WorkingColorSpace_ToXYZ[0].y))));
  _319 = mad(_292, (WorkingColorSpace_ToXYZ[2].z), mad(_289, (WorkingColorSpace_ToXYZ[1].z), (_286 * (WorkingColorSpace_ToXYZ[0].z))));
  _322 = mad(_301, (WorkingColorSpace_ToXYZ[2].x), mad(_298, (WorkingColorSpace_ToXYZ[1].x), (_295 * (WorkingColorSpace_ToXYZ[0].x))));
  _325 = mad(_301, (WorkingColorSpace_ToXYZ[2].y), mad(_298, (WorkingColorSpace_ToXYZ[1].y), (_295 * (WorkingColorSpace_ToXYZ[0].y))));
  _328 = mad(_301, (WorkingColorSpace_ToXYZ[2].z), mad(_298, (WorkingColorSpace_ToXYZ[1].z), (_295 * (WorkingColorSpace_ToXYZ[0].z))));
  _358 = mad(mad((WorkingColorSpace_FromXYZ[0].z), _328, mad((WorkingColorSpace_FromXYZ[0].y), _319, (_310 * (WorkingColorSpace_FromXYZ[0].x)))), _111, mad(mad((WorkingColorSpace_FromXYZ[0].z), _325, mad((WorkingColorSpace_FromXYZ[0].y), _316, (_307 * (WorkingColorSpace_FromXYZ[0].x)))), _110, (mad((WorkingColorSpace_FromXYZ[0].z), _322, mad((WorkingColorSpace_FromXYZ[0].y), _313, (_304 * (WorkingColorSpace_FromXYZ[0].x)))) * _109)));
  _361 = mad(mad((WorkingColorSpace_FromXYZ[1].z), _328, mad((WorkingColorSpace_FromXYZ[1].y), _319, (_310 * (WorkingColorSpace_FromXYZ[1].x)))), _111, mad(mad((WorkingColorSpace_FromXYZ[1].z), _325, mad((WorkingColorSpace_FromXYZ[1].y), _316, (_307 * (WorkingColorSpace_FromXYZ[1].x)))), _110, (mad((WorkingColorSpace_FromXYZ[1].z), _322, mad((WorkingColorSpace_FromXYZ[1].y), _313, (_304 * (WorkingColorSpace_FromXYZ[1].x)))) * _109)));
  _364 = mad(mad((WorkingColorSpace_FromXYZ[2].z), _328, mad((WorkingColorSpace_FromXYZ[2].y), _319, (_310 * (WorkingColorSpace_FromXYZ[2].x)))), _111, mad(mad((WorkingColorSpace_FromXYZ[2].z), _325, mad((WorkingColorSpace_FromXYZ[2].y), _316, (_307 * (WorkingColorSpace_FromXYZ[2].x)))), _110, (mad((WorkingColorSpace_FromXYZ[2].z), _322, mad((WorkingColorSpace_FromXYZ[2].y), _313, (_304 * (WorkingColorSpace_FromXYZ[2].x)))) * _109)));
  _379 = mad((WorkingColorSpace_ToAP1[0].z), _364, mad((WorkingColorSpace_ToAP1[0].y), _361, ((WorkingColorSpace_ToAP1[0].x) * _358)));
  _382 = mad((WorkingColorSpace_ToAP1[1].z), _364, mad((WorkingColorSpace_ToAP1[1].y), _361, ((WorkingColorSpace_ToAP1[1].x) * _358)));
  _385 = mad((WorkingColorSpace_ToAP1[2].z), _364, mad((WorkingColorSpace_ToAP1[2].y), _361, ((WorkingColorSpace_ToAP1[2].x) * _358)));
  _386 = dot(float3(_379, _382, _385), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _390 = (_379 / _386) + -1.0f;
  _391 = (_382 / _386) + -1.0f;
  _392 = (_385 / _386) + -1.0f;

  // _404 = (1.0f - exp2(((_386 * _386) * -4.0f) * ExpandGamut)) * (1.0f - exp2(dot(float3(_390, _391, _392), float3(_390, _391, _392)) * -4.0f));
  _404 = (1.0f - exp2(((_386 * _386) * -4.0f) * 0.f)) * (1.0f - exp2(dot(float3(_390, _391, _392), float3(_390, _391, _392)) * -4.0f));

  _420 = ((mad(-0.06368283927440643f, _385, mad(-0.32929131388664246f, _382, (_379 * 1.370412826538086f))) - _379) * _404) + _379;
  _421 = ((mad(-0.010861567221581936f, _385, mad(1.0970908403396606f, _382, (_379 * -0.08343426138162613f))) - _382) * _404) + _382;
  _422 = ((mad(1.203694462776184f, _385, mad(-0.09862564504146576f, _382, (_379 * -0.02579325996339321f))) - _385) * _404) + _385;
  _423 = dot(float3(_420, _421, _422), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _437 = ColorOffset.w + ColorOffsetShadows.w;
  _451 = ColorGain.w * ColorGainShadows.w;
  _465 = ColorGamma.w * ColorGammaShadows.w;
  _479 = ColorContrast.w * ColorContrastShadows.w;
  _493 = ColorSaturation.w * ColorSaturationShadows.w;
  _497 = _420 - _423;
  _498 = _421 - _423;
  _499 = _422 - _423;
  _556 = saturate(_423 / ColorCorrectionShadowsMax);
  _560 = (_556 * _556) * (3.0f - (_556 * 2.0f));
  _561 = 1.0f - _560;
  _570 = ColorOffset.w + ColorOffsetHighlights.w;
  _579 = ColorGain.w * ColorGainHighlights.w;
  _588 = ColorGamma.w * ColorGammaHighlights.w;
  _597 = ColorContrast.w * ColorContrastHighlights.w;
  _606 = ColorSaturation.w * ColorSaturationHighlights.w;
  _669 = saturate((_423 - ColorCorrectionHighlightsMin) / (ColorCorrectionHighlightsMax - ColorCorrectionHighlightsMin));
  _673 = (_669 * _669) * (3.0f - (_669 * 2.0f));
  _682 = ColorOffset.w + ColorOffsetMidtones.w;
  _691 = ColorGain.w * ColorGainMidtones.w;
  _700 = ColorGamma.w * ColorGammaMidtones.w;
  _709 = ColorContrast.w * ColorContrastMidtones.w;
  _718 = ColorSaturation.w * ColorSaturationMidtones.w;
  _776 = _560 - _673;
  _787 = ((_673 * (((ColorOffset.x + ColorOffsetHighlights.x) + _570) + (((ColorGain.x * ColorGainHighlights.x) * _579) * exp2(log2(exp2(((ColorContrast.x * ColorContrastHighlights.x) * _597) * log2(max(0.0f, ((((ColorSaturation.x * ColorSaturationHighlights.x) * _606) * _497) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.x * ColorGammaHighlights.x) * _588)))))) + (_561 * (((ColorOffset.x + ColorOffsetShadows.x) + _437) + (((ColorGain.x * ColorGainShadows.x) * _451) * exp2(log2(exp2(((ColorContrast.x * ColorContrastShadows.x) * _479) * log2(max(0.0f, ((((ColorSaturation.x * ColorSaturationShadows.x) * _493) * _497) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.x * ColorGammaShadows.x) * _465))))))) + ((((ColorOffset.x + ColorOffsetMidtones.x) + _682) + (((ColorGain.x * ColorGainMidtones.x) * _691) * exp2(log2(exp2(((ColorContrast.x * ColorContrastMidtones.x) * _709) * log2(max(0.0f, ((((ColorSaturation.x * ColorSaturationMidtones.x) * _718) * _497) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.x * ColorGammaMidtones.x) * _700))))) * _776);
  _789 = ((_673 * (((ColorOffset.y + ColorOffsetHighlights.y) + _570) + (((ColorGain.y * ColorGainHighlights.y) * _579) * exp2(log2(exp2(((ColorContrast.y * ColorContrastHighlights.y) * _597) * log2(max(0.0f, ((((ColorSaturation.y * ColorSaturationHighlights.y) * _606) * _498) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.y * ColorGammaHighlights.y) * _588)))))) + (_561 * (((ColorOffset.y + ColorOffsetShadows.y) + _437) + (((ColorGain.y * ColorGainShadows.y) * _451) * exp2(log2(exp2(((ColorContrast.y * ColorContrastShadows.y) * _479) * log2(max(0.0f, ((((ColorSaturation.y * ColorSaturationShadows.y) * _493) * _498) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.y * ColorGammaShadows.y) * _465))))))) + ((((ColorOffset.y + ColorOffsetMidtones.y) + _682) + (((ColorGain.y * ColorGainMidtones.y) * _691) * exp2(log2(exp2(((ColorContrast.y * ColorContrastMidtones.y) * _709) * log2(max(0.0f, ((((ColorSaturation.y * ColorSaturationMidtones.y) * _718) * _498) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.y * ColorGammaMidtones.y) * _700))))) * _776);
  _791 = ((_673 * (((ColorOffset.z + ColorOffsetHighlights.z) + _570) + (((ColorGain.z * ColorGainHighlights.z) * _579) * exp2(log2(exp2(((ColorContrast.z * ColorContrastHighlights.z) * _597) * log2(max(0.0f, ((((ColorSaturation.z * ColorSaturationHighlights.z) * _606) * _499) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.z * ColorGammaHighlights.z) * _588)))))) + (_561 * (((ColorOffset.z + ColorOffsetShadows.z) + _437) + (((ColorGain.z * ColorGainShadows.z) * _451) * exp2(log2(exp2(((ColorContrast.z * ColorContrastShadows.z) * _479) * log2(max(0.0f, ((((ColorSaturation.z * ColorSaturationShadows.z) * _493) * _499) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.z * ColorGammaShadows.z) * _465))))))) + ((((ColorOffset.z + ColorOffsetMidtones.z) + _682) + (((ColorGain.z * ColorGainMidtones.z) * _691) * exp2(log2(exp2(((ColorContrast.z * ColorContrastMidtones.z) * _709) * log2(max(0.0f, ((((ColorSaturation.z * ColorSaturationMidtones.z) * _718) * _499) + _423)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.z * ColorGammaMidtones.z) * _700))))) * _776);

  UECbufferConfig cb_config = CreateCbufferConfig();
  cb_config.ue_filmblackclip = FilmBlackClip;
  cb_config.ue_filmtoe = FilmToe;
  cb_config.ue_filmshoulder = FilmShoulder;
  cb_config.ue_filmslope = FilmSlope;
  cb_config.ue_filmwhiteclip = FilmWhiteClip;
  cb_config.ue_tonecurveammount = ToneCurveAmount;
  cb_config.ue_mappingpolynomial = MappingPolynomial;
  cb_config.ue_overlaycolor = OverlayColor;
  cb_config.ue_bluecorrection = BlueCorrection;
  cb_config.ue_colorscale = ColorScale;
  SV_Target = ProcessLutbuilder(float3(_787, _789, _791), cb_config, SV_Target, OutputDevice);
  return SV_Target;

  _827 = ((mad(0.061360642313957214f, _791, mad(-4.540197551250458e-09f, _789, (_787 * 0.9386394023895264f))) - _787) * BlueCorrection) + _787;
  _828 = ((mad(0.169205904006958f, _791, mad(0.8307942152023315f, _789, (_787 * 6.775371730327606e-08f))) - _789) * BlueCorrection) + _789;
  _829 = (mad(-2.3283064365386963e-10f, _789, (_787 * -9.313225746154785e-10f)) * BlueCorrection) + _791;
  _832 = mad(0.16386905312538147f, _829, mad(0.14067868888378143f, _828, (_827 * 0.6954522132873535f)));
  _835 = mad(0.0955343246459961f, _829, mad(0.8596711158752441f, _828, (_827 * 0.044794581830501556f)));
  _838 = mad(1.0015007257461548f, _829, mad(0.004025210160762072f, _828, (_827 * -0.005525882821530104f)));
  _842 = max(max(_832, _835), _838);
  _847 = (max(_842, 1.000000013351432e-10f) - max(min(min(_832, _835), _838), 1.000000013351432e-10f)) / max(_842, 0.009999999776482582f);
  _860 = ((_835 + _832) + _838) + (sqrt((((_838 - _835) * _838) + ((_835 - _832) * _835)) + ((_832 - _838) * _832)) * 1.75f);
  _861 = _860 * 0.3333333432674408f;
  _862 = _847 + -0.4000000059604645f;
  _863 = _862 * 5.0f;
  _867 = max((1.0f - abs(_862 * 2.5f)), 0.0f);
  _878 = ((float((int)(((int)(uint)((int)(_863 > 0.0f))) - ((int)(uint)((int)(_863 < 0.0f))))) * (1.0f - (_867 * _867))) + 1.0f) * 0.02500000037252903f;
  if (!(_861 <= 0.0533333346247673f)) {
    if (!(_861 >= 0.1599999964237213f)) {
      _887 = (((0.23999999463558197f / _860) + -0.5f) * _878);
    } else {
      _887 = 0.0f;
    }
  } else {
    _887 = _878;
  }
  _888 = _887 + 1.0f;
  _889 = _888 * _832;
  _890 = _888 * _835;
  _891 = _888 * _838;
  if (!((_889 == _890) && (_890 == _891))) {
    _898 = ((_889 * 2.0f) - _890) - _891;
    _901 = ((_835 - _838) * 1.7320507764816284f) * _888;
    _903 = atan(_901 / _898);
    _906 = (_898 < 0.0f);
    _907 = (_898 == 0.0f);
    _908 = (_901 >= 0.0f);
    _909 = (_901 < 0.0f);
    _920 = select((_908 && _907), 90.0f, select((_909 && _907), -90.0f, (select((_909 && _906), (_903 + -3.1415927410125732f), select((_908 && _906), (_903 + 3.1415927410125732f), _903)) * 57.2957763671875f)));
  } else {
    _920 = 0.0f;
  }
  _925 = min(max(select((_920 < 0.0f), (_920 + 360.0f), _920), 0.0f), 360.0f);
  if (_925 < -180.0f) {
    _934 = (_925 + 360.0f);
  } else {
    if (_925 > 180.0f) {
      _934 = (_925 + -360.0f);
    } else {
      _934 = _925;
    }
  }
  _938 = saturate(1.0f - abs(_934 * 0.014814814552664757f));
  _942 = (_938 * _938) * (3.0f - (_938 * 2.0f));
  _948 = ((_942 * _942) * ((_847 * 0.18000000715255737f) * (0.029999999329447746f - _889))) + _889;
  _958 = max(0.0f, mad(-0.21492856740951538f, _891, mad(-0.2365107536315918f, _890, (_948 * 1.4514392614364624f))));
  _959 = max(0.0f, mad(-0.09967592358589172f, _891, mad(1.17622971534729f, _890, (_948 * -0.07655377686023712f))));
  _960 = max(0.0f, mad(0.9977163076400757f, _891, mad(-0.006032449658960104f, _890, (_948 * 0.008316148072481155f))));
  _961 = dot(float3(_958, _959, _960), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _976 = (FilmBlackClip + 1.0f) - FilmToe;
  _978 = FilmWhiteClip + 1.0f;
  _980 = _978 - FilmShoulder;
  if (FilmToe > 0.800000011920929f) {
    _998 = (((0.8199999928474426f - FilmToe) / FilmSlope) + -0.7447274923324585f);
  } else {
    _989 = (FilmBlackClip + 0.18000000715255737f) / _976;
    _998 = (-0.7447274923324585f - ((log2(_989 / (2.0f - _989)) * 0.3465735912322998f) * (_976 / FilmSlope)));
  }
  _1001 = ((1.0f - FilmToe) / FilmSlope) - _998;
  _1003 = (FilmShoulder / FilmSlope) - _1001;
  _1007 = log2(lerp(_961, _958, 0.9599999785423279f)) * 0.3010300099849701f;
  _1008 = log2(lerp(_961, _959, 0.9599999785423279f)) * 0.3010300099849701f;
  _1009 = log2(lerp(_961, _960, 0.9599999785423279f)) * 0.3010300099849701f;
  _1013 = FilmSlope * (_1007 + _1001);
  _1014 = FilmSlope * (_1008 + _1001);
  _1015 = FilmSlope * (_1009 + _1001);
  _1016 = _976 * 2.0f;
  _1018 = (FilmSlope * -2.0f) / _976;
  _1019 = _1007 - _998;
  _1020 = _1008 - _998;
  _1021 = _1009 - _998;
  _1040 = _980 * 2.0f;
  _1042 = (FilmSlope * 2.0f) / _980;
  _1067 = select((_1007 < _998), ((_1016 / (exp2((_1019 * 1.4426950216293335f) * _1018) + 1.0f)) - FilmBlackClip), _1013);
  _1068 = select((_1008 < _998), ((_1016 / (exp2((_1020 * 1.4426950216293335f) * _1018) + 1.0f)) - FilmBlackClip), _1014);
  _1069 = select((_1009 < _998), ((_1016 / (exp2((_1021 * 1.4426950216293335f) * _1018) + 1.0f)) - FilmBlackClip), _1015);
  _1076 = _1003 - _998;
  _1080 = saturate(_1019 / _1076);
  _1081 = saturate(_1020 / _1076);
  _1082 = saturate(_1021 / _1076);
  _1083 = (_1003 < _998);
  _1087 = select(_1083, (1.0f - _1080), _1080);
  _1088 = select(_1083, (1.0f - _1081), _1081);
  _1089 = select(_1083, (1.0f - _1082), _1082);
  _1108 = (((_1087 * _1087) * (select((_1007 > _1003), (_978 - (_1040 / (exp2(((_1007 - _1003) * 1.4426950216293335f) * _1042) + 1.0f))), _1013) - _1067)) * (3.0f - (_1087 * 2.0f))) + _1067;
  _1109 = (((_1088 * _1088) * (select((_1008 > _1003), (_978 - (_1040 / (exp2(((_1008 - _1003) * 1.4426950216293335f) * _1042) + 1.0f))), _1014) - _1068)) * (3.0f - (_1088 * 2.0f))) + _1068;
  _1110 = (((_1089 * _1089) * (select((_1009 > _1003), (_978 - (_1040 / (exp2(((_1009 - _1003) * 1.4426950216293335f) * _1042) + 1.0f))), _1015) - _1069)) * (3.0f - (_1089 * 2.0f))) + _1069;
  _1111 = dot(float3(_1108, _1109, _1110), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _1131 = (ToneCurveAmount * (max(0.0f, (lerp(_1111, _1108, 0.9300000071525574f))) - _827)) + _827;
  _1132 = (ToneCurveAmount * (max(0.0f, (lerp(_1111, _1109, 0.9300000071525574f))) - _828)) + _828;
  _1133 = (ToneCurveAmount * (max(0.0f, (lerp(_1111, _1110, 0.9300000071525574f))) - _829)) + _829;
  _1149 = ((mad(-0.06537103652954102f, _1133, mad(1.451815478503704e-06f, _1132, (_1131 * 1.065374732017517f))) - _1131) * BlueCorrection) + _1131;
  _1150 = ((mad(-0.20366770029067993f, _1133, mad(1.2036634683609009f, _1132, (_1131 * -2.57161445915699e-07f))) - _1132) * BlueCorrection) + _1132;
  _1151 = ((mad(0.9999996423721313f, _1133, mad(2.0954757928848267e-08f, _1132, (_1131 * 1.862645149230957e-08f))) - _1133) * BlueCorrection) + _1133;
  _1161 = max(0.0f, mad((WorkingColorSpace_FromAP1[0].z), _1151, mad((WorkingColorSpace_FromAP1[0].y), _1150, ((WorkingColorSpace_FromAP1[0].x) * _1149))));
  _1162 = max(0.0f, mad((WorkingColorSpace_FromAP1[1].z), _1151, mad((WorkingColorSpace_FromAP1[1].y), _1150, ((WorkingColorSpace_FromAP1[1].x) * _1149))));
  _1163 = max(0.0f, mad((WorkingColorSpace_FromAP1[2].z), _1151, mad((WorkingColorSpace_FromAP1[2].y), _1150, ((WorkingColorSpace_FromAP1[2].x) * _1149))));
  _1189 = ColorScale.x * (((MappingPolynomial.y + (MappingPolynomial.x * _1161)) * _1161) + MappingPolynomial.z);
  _1190 = ColorScale.y * (((MappingPolynomial.y + (MappingPolynomial.x * _1162)) * _1162) + MappingPolynomial.z);
  _1191 = ColorScale.z * (((MappingPolynomial.y + (MappingPolynomial.x * _1163)) * _1163) + MappingPolynomial.z);
  _1198 = ((OverlayColor.x - _1189) * OverlayColor.w) + _1189;
  _1199 = ((OverlayColor.y - _1190) * OverlayColor.w) + _1190;
  _1200 = ((OverlayColor.z - _1191) * OverlayColor.w) + _1191;
  _1201 = ColorScale.x * mad((WorkingColorSpace_FromAP1[0].z), _791, mad((WorkingColorSpace_FromAP1[0].y), _789, (_787 * (WorkingColorSpace_FromAP1[0].x))));
  _1202 = ColorScale.y * mad((WorkingColorSpace_FromAP1[1].z), _791, mad((WorkingColorSpace_FromAP1[1].y), _789, ((WorkingColorSpace_FromAP1[1].x) * _787)));
  _1203 = ColorScale.z * mad((WorkingColorSpace_FromAP1[2].z), _791, mad((WorkingColorSpace_FromAP1[2].y), _789, ((WorkingColorSpace_FromAP1[2].x) * _787)));
  _1210 = ((OverlayColor.x - _1201) * OverlayColor.w) + _1201;
  _1211 = ((OverlayColor.y - _1202) * OverlayColor.w) + _1202;
  _1212 = ((OverlayColor.z - _1203) * OverlayColor.w) + _1203;
  _1224 = exp2(log2(max(0.0f, _1198)) * InverseGamma.y);
  _1225 = exp2(log2(max(0.0f, _1199)) * InverseGamma.y);
  _1226 = exp2(log2(max(0.0f, _1200)) * InverseGamma.y);
  [branch]
  if (OutputDevice == 0) {
    if (WorkingColorSpace_bIsSRGB == 0) {
      _1249 = mad((WorkingColorSpace_ToAP1[0].z), _1226, mad((WorkingColorSpace_ToAP1[0].y), _1225, ((WorkingColorSpace_ToAP1[0].x) * _1224)));
      _1252 = mad((WorkingColorSpace_ToAP1[1].z), _1226, mad((WorkingColorSpace_ToAP1[1].y), _1225, ((WorkingColorSpace_ToAP1[1].x) * _1224)));
      _1255 = mad((WorkingColorSpace_ToAP1[2].z), _1226, mad((WorkingColorSpace_ToAP1[2].y), _1225, ((WorkingColorSpace_ToAP1[2].x) * _1224)));
      _1266 = mad(_45, _1255, mad(_44, _1252, (_1249 * _43)));
      _1267 = mad(_48, _1255, mad(_47, _1252, (_1249 * _46)));
      _1268 = mad(_51, _1255, mad(_50, _1252, (_1249 * _49)));
    } else {
      _1266 = _1224;
      _1267 = _1225;
      _1268 = _1226;
    }
    if (_1266 < 0.0031306699384003878f) {
      _1279 = (_1266 * 12.920000076293945f);
    } else {
      _1279 = (((pow(_1266, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
    if (_1267 < 0.0031306699384003878f) {
      _1290 = (_1267 * 12.920000076293945f);
    } else {
      _1290 = (((pow(_1267, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
    if (_1268 < 0.0031306699384003878f) {
      _2826 = _1279;
      _2827 = _1290;
      _2828 = (_1268 * 12.920000076293945f);
    } else {
      _2826 = _1279;
      _2827 = _1290;
      _2828 = (((pow(_1268, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
  } else {
    if (OutputDevice == 1) {
      _1317 = mad((WorkingColorSpace_ToAP1[0].z), _1226, mad((WorkingColorSpace_ToAP1[0].y), _1225, ((WorkingColorSpace_ToAP1[0].x) * _1224)));
      _1320 = mad((WorkingColorSpace_ToAP1[1].z), _1226, mad((WorkingColorSpace_ToAP1[1].y), _1225, ((WorkingColorSpace_ToAP1[1].x) * _1224)));
      _1323 = mad((WorkingColorSpace_ToAP1[2].z), _1226, mad((WorkingColorSpace_ToAP1[2].y), _1225, ((WorkingColorSpace_ToAP1[2].x) * _1224)));
      _1333 = max(6.103519990574569e-05f, mad(_45, _1323, mad(_44, _1320, (_1317 * _43))));
      _1334 = max(6.103519990574569e-05f, mad(_48, _1323, mad(_47, _1320, (_1317 * _46))));
      _1335 = max(6.103519990574569e-05f, mad(_51, _1323, mad(_50, _1320, (_1317 * _49))));
      _2826 = min((_1333 * 4.5f), ((exp2(log2(max(_1333, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
      _2827 = min((_1334 * 4.5f), ((exp2(log2(max(_1334, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
      _2828 = min((_1335 * 4.5f), ((exp2(log2(max(_1335, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
    } else {
      if ((OutputDevice == 3) || (OutputDevice == 5)) {
        _10[0] = ACESCoefsLow_0.x;
        _10[1] = ACESCoefsLow_0.y;
        _10[2] = ACESCoefsLow_0.z;
        _10[3] = ACESCoefsLow_0.w;
        _10[4] = ACESCoefsLow_4;
        _10[5] = ACESCoefsLow_4;
        _11[0] = ACESCoefsHigh_0.x;
        _11[1] = ACESCoefsHigh_0.y;
        _11[2] = ACESCoefsHigh_0.z;
        _11[3] = ACESCoefsHigh_0.w;
        _11[4] = ACESCoefsHigh_4;
        _11[5] = ACESCoefsHigh_4;
        _1410 = ACESSceneColorMultiplier * _1210;
        _1411 = ACESSceneColorMultiplier * _1211;
        _1412 = ACESSceneColorMultiplier * _1212;
        _1415 = mad((WorkingColorSpace_ToAP0[0].z), _1412, mad((WorkingColorSpace_ToAP0[0].y), _1411, ((WorkingColorSpace_ToAP0[0].x) * _1410)));
        _1418 = mad((WorkingColorSpace_ToAP0[1].z), _1412, mad((WorkingColorSpace_ToAP0[1].y), _1411, ((WorkingColorSpace_ToAP0[1].x) * _1410)));
        _1421 = mad((WorkingColorSpace_ToAP0[2].z), _1412, mad((WorkingColorSpace_ToAP0[2].y), _1411, ((WorkingColorSpace_ToAP0[2].x) * _1410)));
        _1424 = mad(-0.21492856740951538f, _1421, mad(-0.2365107536315918f, _1418, (_1415 * 1.4514392614364624f)));
        _1427 = mad(-0.09967592358589172f, _1421, mad(1.17622971534729f, _1418, (_1415 * -0.07655377686023712f)));
        _1430 = mad(0.9977163076400757f, _1421, mad(-0.006032449658960104f, _1418, (_1415 * 0.008316148072481155f)));
        _1432 = max(_1424, max(_1427, _1430));
        if (!(_1432 < 1.000000013351432e-10f)) {
          if (!(((_1415 < 0.0f) || (_1418 < 0.0f)) || (_1421 < 0.0f))) {
            _1442 = abs(_1432);
            _1443 = (_1432 - _1424) / _1442;
            _1445 = (_1432 - _1427) / _1442;
            _1447 = (_1432 - _1430) / _1442;
            if (!(_1443 < 0.8149999976158142f)) {
              _1450 = _1443 + -0.8149999976158142f;
              _1462 = ((_1450 / exp2(log2(exp2(log2(_1450 * 3.0552830696105957f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8149999976158142f);
            } else {
              _1462 = _1443;
            }
            if (!(_1445 < 0.8029999732971191f)) {
              _1465 = _1445 + -0.8029999732971191f;
              _1477 = ((_1465 / exp2(log2(exp2(log2(_1465 * 3.4972610473632812f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8029999732971191f);
            } else {
              _1477 = _1445;
            }
            if (!(_1447 < 0.8799999952316284f)) {
              _1480 = _1447 + -0.8799999952316284f;
              _1492 = ((_1480 / exp2(log2(exp2(log2(_1480 * 6.810994625091553f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8799999952316284f);
            } else {
              _1492 = _1447;
            }
            _1500 = (_1432 - (_1442 * _1462));
            _1501 = (_1432 - (_1442 * _1477));
            _1502 = (_1432 - (_1442 * _1492));
          } else {
            _1500 = _1424;
            _1501 = _1427;
            _1502 = _1430;
          }
        } else {
          _1500 = _1424;
          _1501 = _1427;
          _1502 = _1430;
        }
        _1505 = mad(0.16386906802654266f, _1502, mad(0.14067870378494263f, _1501, (_1500 * 0.6954522132873535f)));
        _1508 = mad(0.0955343171954155f, _1502, mad(0.8596711158752441f, _1501, (_1500 * 0.044794563204050064f)));
        _1511 = mad(1.0015007257461548f, _1502, mad(0.004025210160762072f, _1501, (_1500 * -0.005525882821530104f)));
        _1515 = max(max(_1505, _1508), _1511);
        _1520 = (max(_1515, 1.000000013351432e-10f) - max(min(min(_1505, _1508), _1511), 1.000000013351432e-10f)) / max(_1515, 0.009999999776482582f);
        _1533 = ((_1508 + _1505) + _1511) + (sqrt((((_1511 - _1508) * _1511) + ((_1508 - _1505) * _1508)) + ((_1505 - _1511) * _1505)) * 1.75f);
        _1534 = _1533 * 0.3333333432674408f;
        _1535 = _1520 + -0.4000000059604645f;
        _1536 = _1535 * 5.0f;
        _1540 = max((1.0f - abs(_1535 * 2.5f)), 0.0f);
        _1551 = ((float((int)(((int)(uint)((int)(_1536 > 0.0f))) - ((int)(uint)((int)(_1536 < 0.0f))))) * (1.0f - (_1540 * _1540))) + 1.0f) * 0.02500000037252903f;
        if (!(_1534 <= 0.0533333346247673f)) {
          if (!(_1534 >= 0.1599999964237213f)) {
            _1560 = (((0.23999999463558197f / _1533) + -0.5f) * _1551);
          } else {
            _1560 = 0.0f;
          }
        } else {
          _1560 = _1551;
        }
        _1561 = _1560 + 1.0f;
        _1562 = _1561 * _1505;
        _1563 = _1561 * _1508;
        _1564 = _1561 * _1511;
        if (!((_1562 == _1563) && (_1563 == _1564))) {
          _1571 = ((_1562 * 2.0f) - _1563) - _1564;
          _1574 = ((_1508 - _1511) * 1.7320507764816284f) * _1561;
          _1576 = atan(_1574 / _1571);
          _1579 = (_1571 < 0.0f);
          _1580 = (_1571 == 0.0f);
          _1581 = (_1574 >= 0.0f);
          _1582 = (_1574 < 0.0f);
          _1593 = select((_1581 && _1580), 90.0f, select((_1582 && _1580), -90.0f, (select((_1582 && _1579), (_1576 + -3.1415927410125732f), select((_1581 && _1579), (_1576 + 3.1415927410125732f), _1576)) * 57.2957763671875f)));
        } else {
          _1593 = 0.0f;
        }
        _1598 = min(max(select((_1593 < 0.0f), (_1593 + 360.0f), _1593), 0.0f), 360.0f);
        if (_1598 < -180.0f) {
          _1607 = (_1598 + 360.0f);
        } else {
          if (_1598 > 180.0f) {
            _1607 = (_1598 + -360.0f);
          } else {
            _1607 = _1598;
          }
        }
        if ((_1607 > -67.5f) && (_1607 < 67.5f)) {
          _1613 = (_1607 + 67.5f) * 0.029629629105329514f;
          _1614 = int(_1613);
          _1616 = _1613 - float((int)(_1614));
          _1617 = _1616 * _1616;
          _1618 = _1617 * _1616;
          if (_1614 == 3) {
            _1646 = (((0.1666666716337204f - (_1616 * 0.5f)) + (_1617 * 0.5f)) - (_1618 * 0.1666666716337204f));
          } else {
            if (_1614 == 2) {
              _1646 = ((0.6666666865348816f - _1617) + (_1618 * 0.5f));
            } else {
              if (_1614 == 1) {
                _1646 = (((_1618 * -0.5f) + 0.1666666716337204f) + ((_1617 + _1616) * 0.5f));
              } else {
                _1646 = select((_1614 == 0), (_1618 * 0.1666666716337204f), 0.0f);
              }
            }
          }
        } else {
          _1646 = 0.0f;
        }
        _1655 = min(max(((((_1520 * 0.27000001072883606f) * (0.029999999329447746f - _1562)) * _1646) + _1562), 0.0f), 65535.0f);
        _1656 = min(max(_1563, 0.0f), 65535.0f);
        _1657 = min(max(_1564, 0.0f), 65535.0f);
        _1670 = min(max(mad(-0.21492856740951538f, _1657, mad(-0.2365107536315918f, _1656, (_1655 * 1.4514392614364624f))), 0.0f), 65504.0f);
        _1671 = min(max(mad(-0.09967592358589172f, _1657, mad(1.17622971534729f, _1656, (_1655 * -0.07655377686023712f))), 0.0f), 65504.0f);
        _1672 = min(max(mad(0.9977163076400757f, _1657, mad(-0.006032449658960104f, _1656, (_1655 * 0.008316148072481155f))), 0.0f), 65504.0f);
        _1673 = dot(float3(_1670, _1671, _1672), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
        _1684 = log2(max((lerp(_1673, _1670, 0.9599999785423279f)), 1.000000013351432e-10f));
        _1685 = _1684 * 0.3010300099849701f;
        _1686 = log2(ACESMinMaxData.x);
        _1687 = _1686 * 0.3010300099849701f;
        if (!(_1685 <= _1687)) {
          _1694 = log2(ACESMidData.x);
          _1695 = _1694 * 0.3010300099849701f;
          if ((_1685 > _1687) && (_1685 < _1695)) {
            _1703 = ((_1684 - _1686) * 0.9030900001525879f) / ((_1694 - _1686) * 0.3010300099849701f);
            _1704 = int(_1703);
            _1706 = _1703 - float((int)(_1704));
            _1708 = _10[min((uint)(_1704), 5u)];
            _1711 = _10[min((uint)((_1704 + 1)), 5u)];
            _1716 = _1708 * 0.5f;
            _1756 = dot(float3((_1706 * _1706), _1706, 1.0f), float3(mad((_10[min((uint)((_1704 + 2)), 5u)]), 0.5f, mad(_1711, -1.0f, _1716)), (_1711 - _1708), mad(_1711, 0.5f, _1716)));
          } else {
            if (!(_1685 >= _1695)) {
              _1756 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
            } else {
              _1725 = log2(ACESMinMaxData.z);
              if (!(_1685 < (_1725 * 0.3010300099849701f))) {
                _1756 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _1733 = ((_1684 - _1694) * 0.9030900001525879f) / ((_1725 - _1694) * 0.3010300099849701f);
                _1734 = int(_1733);
                _1736 = _1733 - float((int)(_1734));
                _1738 = _11[min((uint)(_1734), 5u)];
                _1741 = _11[min((uint)((_1734 + 1)), 5u)];
                _1746 = _1738 * 0.5f;
                _1756 = dot(float3((_1736 * _1736), _1736, 1.0f), float3(mad((_11[min((uint)((_1734 + 2)), 5u)]), 0.5f, mad(_1741, -1.0f, _1746)), (_1741 - _1738), mad(_1741, 0.5f, _1746)));
              }
            }
          }
        } else {
          _1756 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
        }
        _1760 = log2(max((lerp(_1673, _1671, 0.9599999785423279f)), 1.000000013351432e-10f));
        _1761 = _1760 * 0.3010300099849701f;
        if (!(_1761 <= _1687)) {
          _1768 = log2(ACESMidData.x);
          _1769 = _1768 * 0.3010300099849701f;
          if ((_1761 > _1687) && (_1761 < _1769)) {
            _1777 = ((_1760 - _1686) * 0.9030900001525879f) / ((_1768 - _1686) * 0.3010300099849701f);
            _1778 = int(_1777);
            _1780 = _1777 - float((int)(_1778));
            _1782 = _10[min((uint)(_1778), 5u)];
            _1785 = _10[min((uint)((_1778 + 1)), 5u)];
            _1790 = _1782 * 0.5f;
            _1830 = dot(float3((_1780 * _1780), _1780, 1.0f), float3(mad((_10[min((uint)((_1778 + 2)), 5u)]), 0.5f, mad(_1785, -1.0f, _1790)), (_1785 - _1782), mad(_1785, 0.5f, _1790)));
          } else {
            if (!(_1761 >= _1769)) {
              _1830 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
            } else {
              _1799 = log2(ACESMinMaxData.z);
              if (!(_1761 < (_1799 * 0.3010300099849701f))) {
                _1830 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _1807 = ((_1760 - _1768) * 0.9030900001525879f) / ((_1799 - _1768) * 0.3010300099849701f);
                _1808 = int(_1807);
                _1810 = _1807 - float((int)(_1808));
                _1812 = _11[min((uint)(_1808), 5u)];
                _1815 = _11[min((uint)((_1808 + 1)), 5u)];
                _1820 = _1812 * 0.5f;
                _1830 = dot(float3((_1810 * _1810), _1810, 1.0f), float3(mad((_11[min((uint)((_1808 + 2)), 5u)]), 0.5f, mad(_1815, -1.0f, _1820)), (_1815 - _1812), mad(_1815, 0.5f, _1820)));
              }
            }
          }
        } else {
          _1830 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
        }
        _1834 = log2(max((lerp(_1673, _1672, 0.9599999785423279f)), 1.000000013351432e-10f));
        _1835 = _1834 * 0.3010300099849701f;
        if (!(_1835 <= _1687)) {
          _1842 = log2(ACESMidData.x);
          _1843 = _1842 * 0.3010300099849701f;
          if ((_1835 > _1687) && (_1835 < _1843)) {
            _1851 = ((_1834 - _1686) * 0.9030900001525879f) / ((_1842 - _1686) * 0.3010300099849701f);
            _1852 = int(_1851);
            _1854 = _1851 - float((int)(_1852));
            _1856 = _10[min((uint)(_1852), 5u)];
            _1859 = _10[min((uint)((_1852 + 1)), 5u)];
            _1864 = _1856 * 0.5f;
            _1904 = dot(float3((_1854 * _1854), _1854, 1.0f), float3(mad((_10[min((uint)((_1852 + 2)), 5u)]), 0.5f, mad(_1859, -1.0f, _1864)), (_1859 - _1856), mad(_1859, 0.5f, _1864)));
          } else {
            if (!(_1835 >= _1843)) {
              _1904 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
            } else {
              _1873 = log2(ACESMinMaxData.z);
              if (!(_1835 < (_1873 * 0.3010300099849701f))) {
                _1904 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _1881 = ((_1834 - _1842) * 0.9030900001525879f) / ((_1873 - _1842) * 0.3010300099849701f);
                _1882 = int(_1881);
                _1884 = _1881 - float((int)(_1882));
                _1886 = _11[min((uint)(_1882), 5u)];
                _1889 = _11[min((uint)((_1882 + 1)), 5u)];
                _1894 = _1886 * 0.5f;
                _1904 = dot(float3((_1884 * _1884), _1884, 1.0f), float3(mad((_11[min((uint)((_1882 + 2)), 5u)]), 0.5f, mad(_1889, -1.0f, _1894)), (_1889 - _1886), mad(_1889, 0.5f, _1894)));
              }
            }
          }
        } else {
          _1904 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
        }
        _1908 = ACESMinMaxData.w - ACESMinMaxData.y;
        _1909 = (exp2(_1756 * 3.321928024291992f) - ACESMinMaxData.y) / _1908;
        _1911 = (exp2(_1830 * 3.321928024291992f) - ACESMinMaxData.y) / _1908;
        _1913 = (exp2(_1904 * 3.321928024291992f) - ACESMinMaxData.y) / _1908;
        _1916 = mad(0.15618768334388733f, _1913, mad(0.13400420546531677f, _1911, (_1909 * 0.6624541878700256f)));
        _1919 = mad(0.053689517080783844f, _1913, mad(0.6740817427635193f, _1911, (_1909 * 0.2722287178039551f)));
        _1922 = mad(1.0103391408920288f, _1913, mad(0.00406073359772563f, _1911, (_1909 * -0.005574649665504694f)));
        _1935 = min(max(mad(-0.23642469942569733f, _1922, mad(-0.32480329275131226f, _1919, (_1916 * 1.6410233974456787f))), 0.0f), 1.0f);
        _1936 = min(max(mad(0.016756348311901093f, _1922, mad(1.6153316497802734f, _1919, (_1916 * -0.663662850856781f))), 0.0f), 1.0f);
        _1937 = min(max(mad(0.9883948564529419f, _1922, mad(-0.008284442126750946f, _1919, (_1916 * 0.011721894145011902f))), 0.0f), 1.0f);
        _1940 = mad(0.15618768334388733f, _1937, mad(0.13400420546531677f, _1936, (_1935 * 0.6624541878700256f)));
        _1943 = mad(0.053689517080783844f, _1937, mad(0.6740817427635193f, _1936, (_1935 * 0.2722287178039551f)));
        _1946 = mad(1.0103391408920288f, _1937, mad(0.00406073359772563f, _1936, (_1935 * -0.005574649665504694f)));
        _1968 = min(max((min(max(mad(-0.23642469942569733f, _1946, mad(-0.32480329275131226f, _1943, (_1940 * 1.6410233974456787f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
        _1969 = min(max((min(max(mad(0.016756348311901093f, _1946, mad(1.6153316497802734f, _1943, (_1940 * -0.663662850856781f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
        _1970 = min(max((min(max(mad(0.9883948564529419f, _1946, mad(-0.008284442126750946f, _1943, (_1940 * 0.011721894145011902f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
        if (!(OutputDevice == 5)) {
          _1983 = mad(_45, _1970, mad(_44, _1969, (_1968 * _43)));
          _1984 = mad(_48, _1970, mad(_47, _1969, (_1968 * _46)));
          _1985 = mad(_51, _1970, mad(_50, _1969, (_1968 * _49)));
        } else {
          _1983 = _1968;
          _1984 = _1969;
          _1985 = _1970;
        }
        _1995 = exp2(log2(_1983 * 9.999999747378752e-05f) * 0.1593017578125f);
        _1996 = exp2(log2(_1984 * 9.999999747378752e-05f) * 0.1593017578125f);
        _1997 = exp2(log2(_1985 * 9.999999747378752e-05f) * 0.1593017578125f);
        _2826 = exp2(log2((1.0f / ((_1995 * 18.6875f) + 1.0f)) * ((_1995 * 18.8515625f) + 0.8359375f)) * 78.84375f);
        _2827 = exp2(log2((1.0f / ((_1996 * 18.6875f) + 1.0f)) * ((_1996 * 18.8515625f) + 0.8359375f)) * 78.84375f);
        _2828 = exp2(log2((1.0f / ((_1997 * 18.6875f) + 1.0f)) * ((_1997 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      } else {
        if ((OutputDevice & -3) == 4) {
          _8[0] = ACESCoefsLow_0.x;
          _8[1] = ACESCoefsLow_0.y;
          _8[2] = ACESCoefsLow_0.z;
          _8[3] = ACESCoefsLow_0.w;
          _8[4] = ACESCoefsLow_4;
          _8[5] = ACESCoefsLow_4;
          _9[0] = ACESCoefsHigh_0.x;
          _9[1] = ACESCoefsHigh_0.y;
          _9[2] = ACESCoefsHigh_0.z;
          _9[3] = ACESCoefsHigh_0.w;
          _9[4] = ACESCoefsHigh_4;
          _9[5] = ACESCoefsHigh_4;
          _2074 = ACESSceneColorMultiplier * _1210;
          _2075 = ACESSceneColorMultiplier * _1211;
          _2076 = ACESSceneColorMultiplier * _1212;
          _2079 = mad((WorkingColorSpace_ToAP0[0].z), _2076, mad((WorkingColorSpace_ToAP0[0].y), _2075, ((WorkingColorSpace_ToAP0[0].x) * _2074)));
          _2082 = mad((WorkingColorSpace_ToAP0[1].z), _2076, mad((WorkingColorSpace_ToAP0[1].y), _2075, ((WorkingColorSpace_ToAP0[1].x) * _2074)));
          _2085 = mad((WorkingColorSpace_ToAP0[2].z), _2076, mad((WorkingColorSpace_ToAP0[2].y), _2075, ((WorkingColorSpace_ToAP0[2].x) * _2074)));
          _2088 = mad(-0.21492856740951538f, _2085, mad(-0.2365107536315918f, _2082, (_2079 * 1.4514392614364624f)));
          _2091 = mad(-0.09967592358589172f, _2085, mad(1.17622971534729f, _2082, (_2079 * -0.07655377686023712f)));
          _2094 = mad(0.9977163076400757f, _2085, mad(-0.006032449658960104f, _2082, (_2079 * 0.008316148072481155f)));
          _2096 = max(_2088, max(_2091, _2094));
          if (!(_2096 < 1.000000013351432e-10f)) {
            if (!(((_2079 < 0.0f) || (_2082 < 0.0f)) || (_2085 < 0.0f))) {
              _2106 = abs(_2096);
              _2107 = (_2096 - _2088) / _2106;
              _2109 = (_2096 - _2091) / _2106;
              _2111 = (_2096 - _2094) / _2106;
              if (!(_2107 < 0.8149999976158142f)) {
                _2114 = _2107 + -0.8149999976158142f;
                _2126 = ((_2114 / exp2(log2(exp2(log2(_2114 * 3.0552830696105957f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8149999976158142f);
              } else {
                _2126 = _2107;
              }
              if (!(_2109 < 0.8029999732971191f)) {
                _2129 = _2109 + -0.8029999732971191f;
                _2141 = ((_2129 / exp2(log2(exp2(log2(_2129 * 3.4972610473632812f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8029999732971191f);
              } else {
                _2141 = _2109;
              }
              if (!(_2111 < 0.8799999952316284f)) {
                _2144 = _2111 + -0.8799999952316284f;
                _2156 = ((_2144 / exp2(log2(exp2(log2(_2144 * 6.810994625091553f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8799999952316284f);
              } else {
                _2156 = _2111;
              }
              _2164 = (_2096 - (_2106 * _2126));
              _2165 = (_2096 - (_2106 * _2141));
              _2166 = (_2096 - (_2106 * _2156));
            } else {
              _2164 = _2088;
              _2165 = _2091;
              _2166 = _2094;
            }
          } else {
            _2164 = _2088;
            _2165 = _2091;
            _2166 = _2094;
          }
          _2169 = mad(0.16386906802654266f, _2166, mad(0.14067870378494263f, _2165, (_2164 * 0.6954522132873535f)));
          _2172 = mad(0.0955343171954155f, _2166, mad(0.8596711158752441f, _2165, (_2164 * 0.044794563204050064f)));
          _2175 = mad(1.0015007257461548f, _2166, mad(0.004025210160762072f, _2165, (_2164 * -0.005525882821530104f)));
          _2179 = max(max(_2169, _2172), _2175);
          _2184 = (max(_2179, 1.000000013351432e-10f) - max(min(min(_2169, _2172), _2175), 1.000000013351432e-10f)) / max(_2179, 0.009999999776482582f);
          _2197 = ((_2172 + _2169) + _2175) + (sqrt((((_2175 - _2172) * _2175) + ((_2172 - _2169) * _2172)) + ((_2169 - _2175) * _2169)) * 1.75f);
          _2198 = _2197 * 0.3333333432674408f;
          _2199 = _2184 + -0.4000000059604645f;
          _2200 = _2199 * 5.0f;
          _2204 = max((1.0f - abs(_2199 * 2.5f)), 0.0f);
          _2215 = ((float((int)(((int)(uint)((int)(_2200 > 0.0f))) - ((int)(uint)((int)(_2200 < 0.0f))))) * (1.0f - (_2204 * _2204))) + 1.0f) * 0.02500000037252903f;
          if (!(_2198 <= 0.0533333346247673f)) {
            if (!(_2198 >= 0.1599999964237213f)) {
              _2224 = (((0.23999999463558197f / _2197) + -0.5f) * _2215);
            } else {
              _2224 = 0.0f;
            }
          } else {
            _2224 = _2215;
          }
          _2225 = _2224 + 1.0f;
          _2226 = _2225 * _2169;
          _2227 = _2225 * _2172;
          _2228 = _2225 * _2175;
          if (!((_2226 == _2227) && (_2227 == _2228))) {
            _2235 = ((_2226 * 2.0f) - _2227) - _2228;
            _2238 = ((_2172 - _2175) * 1.7320507764816284f) * _2225;
            _2240 = atan(_2238 / _2235);
            _2243 = (_2235 < 0.0f);
            _2244 = (_2235 == 0.0f);
            _2245 = (_2238 >= 0.0f);
            _2246 = (_2238 < 0.0f);
            _2257 = select((_2245 && _2244), 90.0f, select((_2246 && _2244), -90.0f, (select((_2246 && _2243), (_2240 + -3.1415927410125732f), select((_2245 && _2243), (_2240 + 3.1415927410125732f), _2240)) * 57.2957763671875f)));
          } else {
            _2257 = 0.0f;
          }
          _2262 = min(max(select((_2257 < 0.0f), (_2257 + 360.0f), _2257), 0.0f), 360.0f);
          if (_2262 < -180.0f) {
            _2271 = (_2262 + 360.0f);
          } else {
            if (_2262 > 180.0f) {
              _2271 = (_2262 + -360.0f);
            } else {
              _2271 = _2262;
            }
          }
          if ((_2271 > -67.5f) && (_2271 < 67.5f)) {
            _2277 = (_2271 + 67.5f) * 0.029629629105329514f;
            _2278 = int(_2277);
            _2280 = _2277 - float((int)(_2278));
            _2281 = _2280 * _2280;
            _2282 = _2281 * _2280;
            if (_2278 == 3) {
              _2310 = (((0.1666666716337204f - (_2280 * 0.5f)) + (_2281 * 0.5f)) - (_2282 * 0.1666666716337204f));
            } else {
              if (_2278 == 2) {
                _2310 = ((0.6666666865348816f - _2281) + (_2282 * 0.5f));
              } else {
                if (_2278 == 1) {
                  _2310 = (((_2282 * -0.5f) + 0.1666666716337204f) + ((_2281 + _2280) * 0.5f));
                } else {
                  _2310 = select((_2278 == 0), (_2282 * 0.1666666716337204f), 0.0f);
                }
              }
            }
          } else {
            _2310 = 0.0f;
          }
          _2319 = min(max(((((_2184 * 0.27000001072883606f) * (0.029999999329447746f - _2226)) * _2310) + _2226), 0.0f), 65535.0f);
          _2320 = min(max(_2227, 0.0f), 65535.0f);
          _2321 = min(max(_2228, 0.0f), 65535.0f);
          _2334 = min(max(mad(-0.21492856740951538f, _2321, mad(-0.2365107536315918f, _2320, (_2319 * 1.4514392614364624f))), 0.0f), 65504.0f);
          _2335 = min(max(mad(-0.09967592358589172f, _2321, mad(1.17622971534729f, _2320, (_2319 * -0.07655377686023712f))), 0.0f), 65504.0f);
          _2336 = min(max(mad(0.9977163076400757f, _2321, mad(-0.006032449658960104f, _2320, (_2319 * 0.008316148072481155f))), 0.0f), 65504.0f);
          _2337 = dot(float3(_2334, _2335, _2336), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
          _2348 = log2(max((lerp(_2337, _2334, 0.9599999785423279f)), 1.000000013351432e-10f));
          _2349 = _2348 * 0.3010300099849701f;
          _2350 = log2(ACESMinMaxData.x);
          _2351 = _2350 * 0.3010300099849701f;
          if (!(_2349 <= _2351)) {
            _2358 = log2(ACESMidData.x);
            _2359 = _2358 * 0.3010300099849701f;
            if ((_2349 > _2351) && (_2349 < _2359)) {
              _2367 = ((_2348 - _2350) * 0.9030900001525879f) / ((_2358 - _2350) * 0.3010300099849701f);
              _2368 = int(_2367);
              _2370 = _2367 - float((int)(_2368));
              _2372 = _8[min((uint)(_2368), 5u)];
              _2375 = _8[min((uint)((_2368 + 1)), 5u)];
              _2380 = _2372 * 0.5f;
              _2420 = dot(float3((_2370 * _2370), _2370, 1.0f), float3(mad((_8[min((uint)((_2368 + 2)), 5u)]), 0.5f, mad(_2375, -1.0f, _2380)), (_2375 - _2372), mad(_2375, 0.5f, _2380)));
            } else {
              if (!(_2349 >= _2359)) {
                _2420 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _2389 = log2(ACESMinMaxData.z);
                if (!(_2349 < (_2389 * 0.3010300099849701f))) {
                  _2420 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
                } else {
                  _2397 = ((_2348 - _2358) * 0.9030900001525879f) / ((_2389 - _2358) * 0.3010300099849701f);
                  _2398 = int(_2397);
                  _2400 = _2397 - float((int)(_2398));
                  _2402 = _9[min((uint)(_2398), 5u)];
                  _2405 = _9[min((uint)((_2398 + 1)), 5u)];
                  _2410 = _2402 * 0.5f;
                  _2420 = dot(float3((_2400 * _2400), _2400, 1.0f), float3(mad((_9[min((uint)((_2398 + 2)), 5u)]), 0.5f, mad(_2405, -1.0f, _2410)), (_2405 - _2402), mad(_2405, 0.5f, _2410)));
                }
              }
            }
          } else {
            _2420 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
          }
          _2424 = log2(max((lerp(_2337, _2335, 0.9599999785423279f)), 1.000000013351432e-10f));
          _2425 = _2424 * 0.3010300099849701f;
          if (!(_2425 <= _2351)) {
            _2432 = log2(ACESMidData.x);
            _2433 = _2432 * 0.3010300099849701f;
            if ((_2425 > _2351) && (_2425 < _2433)) {
              _2441 = ((_2424 - _2350) * 0.9030900001525879f) / ((_2432 - _2350) * 0.3010300099849701f);
              _2442 = int(_2441);
              _2444 = _2441 - float((int)(_2442));
              _2446 = _8[min((uint)(_2442), 5u)];
              _2449 = _8[min((uint)((_2442 + 1)), 5u)];
              _2454 = _2446 * 0.5f;
              _2494 = dot(float3((_2444 * _2444), _2444, 1.0f), float3(mad((_8[min((uint)((_2442 + 2)), 5u)]), 0.5f, mad(_2449, -1.0f, _2454)), (_2449 - _2446), mad(_2449, 0.5f, _2454)));
            } else {
              if (!(_2425 >= _2433)) {
                _2494 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _2463 = log2(ACESMinMaxData.z);
                if (!(_2425 < (_2463 * 0.3010300099849701f))) {
                  _2494 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
                } else {
                  _2471 = ((_2424 - _2432) * 0.9030900001525879f) / ((_2463 - _2432) * 0.3010300099849701f);
                  _2472 = int(_2471);
                  _2474 = _2471 - float((int)(_2472));
                  _2476 = _9[min((uint)(_2472), 5u)];
                  _2479 = _9[min((uint)((_2472 + 1)), 5u)];
                  _2484 = _2476 * 0.5f;
                  _2494 = dot(float3((_2474 * _2474), _2474, 1.0f), float3(mad((_9[min((uint)((_2472 + 2)), 5u)]), 0.5f, mad(_2479, -1.0f, _2484)), (_2479 - _2476), mad(_2479, 0.5f, _2484)));
                }
              }
            }
          } else {
            _2494 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
          }
          _2498 = log2(max((lerp(_2337, _2336, 0.9599999785423279f)), 1.000000013351432e-10f));
          _2499 = _2498 * 0.3010300099849701f;
          if (!(_2499 <= _2351)) {
            _2506 = log2(ACESMidData.x);
            _2507 = _2506 * 0.3010300099849701f;
            if ((_2499 > _2351) && (_2499 < _2507)) {
              _2515 = ((_2498 - _2350) * 0.9030900001525879f) / ((_2506 - _2350) * 0.3010300099849701f);
              _2516 = int(_2515);
              _2518 = _2515 - float((int)(_2516));
              _2520 = _8[min((uint)(_2516), 5u)];
              _2523 = _8[min((uint)((_2516 + 1)), 5u)];
              _2528 = _2520 * 0.5f;
              _2568 = dot(float3((_2518 * _2518), _2518, 1.0f), float3(mad((_8[min((uint)((_2516 + 2)), 5u)]), 0.5f, mad(_2523, -1.0f, _2528)), (_2523 - _2520), mad(_2523, 0.5f, _2528)));
            } else {
              if (!(_2499 >= _2507)) {
                _2568 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _2537 = log2(ACESMinMaxData.z);
                if (!(_2499 < (_2537 * 0.3010300099849701f))) {
                  _2568 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
                } else {
                  _2545 = ((_2498 - _2506) * 0.9030900001525879f) / ((_2537 - _2506) * 0.3010300099849701f);
                  _2546 = int(_2545);
                  _2548 = _2545 - float((int)(_2546));
                  _2550 = _9[min((uint)(_2546), 5u)];
                  _2553 = _9[min((uint)((_2546 + 1)), 5u)];
                  _2558 = _2550 * 0.5f;
                  _2568 = dot(float3((_2548 * _2548), _2548, 1.0f), float3(mad((_9[min((uint)((_2546 + 2)), 5u)]), 0.5f, mad(_2553, -1.0f, _2558)), (_2553 - _2550), mad(_2553, 0.5f, _2558)));
                }
              }
            }
          } else {
            _2568 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
          }
          _2572 = ACESMinMaxData.w - ACESMinMaxData.y;
          _2573 = (exp2(_2420 * 3.321928024291992f) - ACESMinMaxData.y) / _2572;
          _2575 = (exp2(_2494 * 3.321928024291992f) - ACESMinMaxData.y) / _2572;
          _2577 = (exp2(_2568 * 3.321928024291992f) - ACESMinMaxData.y) / _2572;
          _2580 = mad(0.15618768334388733f, _2577, mad(0.13400420546531677f, _2575, (_2573 * 0.6624541878700256f)));
          _2583 = mad(0.053689517080783844f, _2577, mad(0.6740817427635193f, _2575, (_2573 * 0.2722287178039551f)));
          _2586 = mad(1.0103391408920288f, _2577, mad(0.00406073359772563f, _2575, (_2573 * -0.005574649665504694f)));
          _2599 = min(max(mad(-0.23642469942569733f, _2586, mad(-0.32480329275131226f, _2583, (_2580 * 1.6410233974456787f))), 0.0f), 1.0f);
          _2600 = min(max(mad(0.016756348311901093f, _2586, mad(1.6153316497802734f, _2583, (_2580 * -0.663662850856781f))), 0.0f), 1.0f);
          _2601 = min(max(mad(0.9883948564529419f, _2586, mad(-0.008284442126750946f, _2583, (_2580 * 0.011721894145011902f))), 0.0f), 1.0f);
          _2604 = mad(0.15618768334388733f, _2601, mad(0.13400420546531677f, _2600, (_2599 * 0.6624541878700256f)));
          _2607 = mad(0.053689517080783844f, _2601, mad(0.6740817427635193f, _2600, (_2599 * 0.2722287178039551f)));
          _2610 = mad(1.0103391408920288f, _2601, mad(0.00406073359772563f, _2600, (_2599 * -0.005574649665504694f)));
          _2632 = min(max((min(max(mad(-0.23642469942569733f, _2610, mad(-0.32480329275131226f, _2607, (_2604 * 1.6410233974456787f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
          _2633 = min(max((min(max(mad(0.016756348311901093f, _2610, mad(1.6153316497802734f, _2607, (_2604 * -0.663662850856781f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
          _2634 = min(max((min(max(mad(0.9883948564529419f, _2610, mad(-0.008284442126750946f, _2607, (_2604 * 0.011721894145011902f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
          if (!(OutputDevice == 6)) {
            _2647 = mad(_45, _2634, mad(_44, _2633, (_2632 * _43)));
            _2648 = mad(_48, _2634, mad(_47, _2633, (_2632 * _46)));
            _2649 = mad(_51, _2634, mad(_50, _2633, (_2632 * _49)));
          } else {
            _2647 = _2632;
            _2648 = _2633;
            _2649 = _2634;
          }
          _2659 = exp2(log2(_2647 * 9.999999747378752e-05f) * 0.1593017578125f);
          _2660 = exp2(log2(_2648 * 9.999999747378752e-05f) * 0.1593017578125f);
          _2661 = exp2(log2(_2649 * 9.999999747378752e-05f) * 0.1593017578125f);
          _2826 = exp2(log2((1.0f / ((_2659 * 18.6875f) + 1.0f)) * ((_2659 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          _2827 = exp2(log2((1.0f / ((_2660 * 18.6875f) + 1.0f)) * ((_2660 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          _2828 = exp2(log2((1.0f / ((_2661 * 18.6875f) + 1.0f)) * ((_2661 * 18.8515625f) + 0.8359375f)) * 78.84375f);
        } else {
          if (OutputDevice == 7) {
            _2706 = mad((WorkingColorSpace_ToAP1[0].z), _1212, mad((WorkingColorSpace_ToAP1[0].y), _1211, ((WorkingColorSpace_ToAP1[0].x) * _1210)));
            _2709 = mad((WorkingColorSpace_ToAP1[1].z), _1212, mad((WorkingColorSpace_ToAP1[1].y), _1211, ((WorkingColorSpace_ToAP1[1].x) * _1210)));
            _2712 = mad((WorkingColorSpace_ToAP1[2].z), _1212, mad((WorkingColorSpace_ToAP1[2].y), _1211, ((WorkingColorSpace_ToAP1[2].x) * _1210)));
            _2731 = exp2(log2(mad(_45, _2712, mad(_44, _2709, (_2706 * _43))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2732 = exp2(log2(mad(_48, _2712, mad(_47, _2709, (_2706 * _46))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2733 = exp2(log2(mad(_51, _2712, mad(_50, _2709, (_2706 * _49))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2826 = exp2(log2((1.0f / ((_2731 * 18.6875f) + 1.0f)) * ((_2731 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            _2827 = exp2(log2((1.0f / ((_2732 * 18.6875f) + 1.0f)) * ((_2732 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            _2828 = exp2(log2((1.0f / ((_2733 * 18.6875f) + 1.0f)) * ((_2733 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          } else {
            if (!(OutputDevice == 8)) {
              if (OutputDevice == 9) {
                _2780 = mad((WorkingColorSpace_ToAP1[0].z), _1200, mad((WorkingColorSpace_ToAP1[0].y), _1199, ((WorkingColorSpace_ToAP1[0].x) * _1198)));
                _2783 = mad((WorkingColorSpace_ToAP1[1].z), _1200, mad((WorkingColorSpace_ToAP1[1].y), _1199, ((WorkingColorSpace_ToAP1[1].x) * _1198)));
                _2786 = mad((WorkingColorSpace_ToAP1[2].z), _1200, mad((WorkingColorSpace_ToAP1[2].y), _1199, ((WorkingColorSpace_ToAP1[2].x) * _1198)));
                _2826 = mad(_45, _2786, mad(_44, _2783, (_2780 * _43)));
                _2827 = mad(_48, _2786, mad(_47, _2783, (_2780 * _46)));
                _2828 = mad(_51, _2786, mad(_50, _2783, (_2780 * _49)));
              } else {
                _2799 = mad((WorkingColorSpace_ToAP1[0].z), _1226, mad((WorkingColorSpace_ToAP1[0].y), _1225, ((WorkingColorSpace_ToAP1[0].x) * _1224)));
                _2802 = mad((WorkingColorSpace_ToAP1[1].z), _1226, mad((WorkingColorSpace_ToAP1[1].y), _1225, ((WorkingColorSpace_ToAP1[1].x) * _1224)));
                _2805 = mad((WorkingColorSpace_ToAP1[2].z), _1226, mad((WorkingColorSpace_ToAP1[2].y), _1225, ((WorkingColorSpace_ToAP1[2].x) * _1224)));
                _2826 = exp2(log2(mad(_45, _2805, mad(_44, _2802, (_2799 * _43)))) * InverseGamma.z);
                _2827 = exp2(log2(mad(_48, _2805, mad(_47, _2802, (_2799 * _46)))) * InverseGamma.z);
                _2828 = exp2(log2(mad(_51, _2805, mad(_50, _2802, (_2799 * _49)))) * InverseGamma.z);
              }
            } else {
              _2826 = _1210;
              _2827 = _1211;
              _2828 = _1212;
            }
          }
        }
      }
    }
  }
  SV_Target.x = (_2826 * 0.9523810148239136f);
  SV_Target.y = (_2827 * 0.9523810148239136f);
  SV_Target.z = (_2828 * 0.9523810148239136f);
  SV_Target.w = 0.0f;
  return SV_Target;
}
