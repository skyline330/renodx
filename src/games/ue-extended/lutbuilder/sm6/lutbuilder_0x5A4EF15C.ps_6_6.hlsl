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
  float _634;
  float _667;
  float _681;
  float _745;
  float _1013;
  float _1014;
  float _1015;
  float _1026;
  float _1037;
  float _1209;
  float _1224;
  float _1239;
  float _1247;
  float _1248;
  float _1249;
  float _1307;
  float _1340;
  float _1354;
  float _1393;
  float _1503;
  float _1577;
  float _1651;
  float _1730;
  float _1731;
  float _1732;
  float _1873;
  float _1888;
  float _1903;
  float _1911;
  float _1912;
  float _1913;
  float _1971;
  float _2004;
  float _2018;
  float _2057;
  float _2167;
  float _2241;
  float _2315;
  float _2394;
  float _2395;
  float _2396;
  float _2573;
  float _2574;
  float _2575;
  bool _32;
  float _62;
  float _63;
  float _64;
  float _126;
  float _129;
  float _132;
  float _133;
  float _137;
  float _138;
  float _139;
  float _151;
  float _167;
  float _168;
  float _169;
  float _170;
  float _184;
  float _198;
  float _212;
  float _226;
  float _240;
  float _244;
  float _245;
  float _246;
  float _303;
  float _307;
  float _308;
  float _317;
  float _326;
  float _335;
  float _344;
  float _353;
  float _416;
  float _420;
  float _429;
  float _438;
  float _447;
  float _456;
  float _465;
  float _523;
  float _534;
  float _536;
  float _538;
  float _574;
  float _575;
  float _576;
  float _579;
  float _582;
  float _585;
  float _589;
  float _594;
  float _607;
  float _608;
  float _609;
  float _610;
  float _614;
  float _625;
  float _635;
  float _636;
  float _637;
  float _638;
  float _645;
  float _648;
  float _650;
  bool _653;
  bool _654;
  bool _655;
  bool _656;
  float _672;
  float _685;
  float _689;
  float _695;
  float _705;
  float _706;
  float _707;
  float _708;
  float _723;
  float _725;
  float _727;
  float _736;
  float _748;
  float _750;
  float _754;
  float _755;
  float _756;
  float _760;
  float _761;
  float _762;
  float _763;
  float _765;
  float _766;
  float _767;
  float _768;
  float _787;
  float _789;
  float _814;
  float _815;
  float _816;
  float _823;
  float _827;
  float _828;
  float _829;
  bool _830;
  float _834;
  float _835;
  float _836;
  float _855;
  float _856;
  float _857;
  float _858;
  float _878;
  float _879;
  float _880;
  float _896;
  float _897;
  float _898;
  float _908;
  float _909;
  float _910;
  float _936;
  float _937;
  float _938;
  float _945;
  float _946;
  float _947;
  float _948;
  float _949;
  float _950;
  float _957;
  float _958;
  float _959;
  float _971;
  float _972;
  float _973;
  float _996;
  float _999;
  float _1002;
  float _1064;
  float _1067;
  float _1070;
  float _1080;
  float _1081;
  float _1082;
  float _1157;
  float _1158;
  float _1159;
  float _1162;
  float _1165;
  float _1168;
  float _1171;
  float _1174;
  float _1177;
  float _1179;
  float _1189;
  float _1190;
  float _1192;
  float _1194;
  float _1197;
  float _1212;
  float _1227;
  float _1252;
  float _1255;
  float _1258;
  float _1262;
  float _1267;
  float _1280;
  float _1281;
  float _1282;
  float _1283;
  float _1287;
  float _1298;
  float _1308;
  float _1309;
  float _1310;
  float _1311;
  float _1318;
  float _1321;
  float _1323;
  bool _1326;
  bool _1327;
  bool _1328;
  bool _1329;
  float _1345;
  float _1360;
  int _1361;
  float _1363;
  float _1364;
  float _1365;
  float _1402;
  float _1403;
  float _1404;
  float _1417;
  float _1418;
  float _1419;
  float _1420;
  float _1431;
  float _1432;
  float _1433;
  float _1434;
  float _1441;
  float _1442;
  float _1450;
  int _1451;
  float _1453;
  float _1455;
  float _1458;
  float _1463;
  float _1472;
  float _1480;
  int _1481;
  float _1483;
  float _1485;
  float _1488;
  float _1493;
  float _1507;
  float _1508;
  float _1515;
  float _1516;
  float _1524;
  int _1525;
  float _1527;
  float _1529;
  float _1532;
  float _1537;
  float _1546;
  float _1554;
  int _1555;
  float _1557;
  float _1559;
  float _1562;
  float _1567;
  float _1581;
  float _1582;
  float _1589;
  float _1590;
  float _1598;
  int _1599;
  float _1601;
  float _1603;
  float _1606;
  float _1611;
  float _1620;
  float _1628;
  int _1629;
  float _1631;
  float _1633;
  float _1636;
  float _1641;
  float _1655;
  float _1656;
  float _1658;
  float _1660;
  float _1663;
  float _1666;
  float _1669;
  float _1682;
  float _1683;
  float _1684;
  float _1687;
  float _1690;
  float _1693;
  float _1715;
  float _1716;
  float _1717;
  float _1742;
  float _1743;
  float _1744;
  float _1821;
  float _1822;
  float _1823;
  float _1826;
  float _1829;
  float _1832;
  float _1835;
  float _1838;
  float _1841;
  float _1843;
  float _1853;
  float _1854;
  float _1856;
  float _1858;
  float _1861;
  float _1876;
  float _1891;
  float _1916;
  float _1919;
  float _1922;
  float _1926;
  float _1931;
  float _1944;
  float _1945;
  float _1946;
  float _1947;
  float _1951;
  float _1962;
  float _1972;
  float _1973;
  float _1974;
  float _1975;
  float _1982;
  float _1985;
  float _1987;
  bool _1990;
  bool _1991;
  bool _1992;
  bool _1993;
  float _2009;
  float _2024;
  int _2025;
  float _2027;
  float _2028;
  float _2029;
  float _2066;
  float _2067;
  float _2068;
  float _2081;
  float _2082;
  float _2083;
  float _2084;
  float _2095;
  float _2096;
  float _2097;
  float _2098;
  float _2105;
  float _2106;
  float _2114;
  int _2115;
  float _2117;
  float _2119;
  float _2122;
  float _2127;
  float _2136;
  float _2144;
  int _2145;
  float _2147;
  float _2149;
  float _2152;
  float _2157;
  float _2171;
  float _2172;
  float _2179;
  float _2180;
  float _2188;
  int _2189;
  float _2191;
  float _2193;
  float _2196;
  float _2201;
  float _2210;
  float _2218;
  int _2219;
  float _2221;
  float _2223;
  float _2226;
  float _2231;
  float _2245;
  float _2246;
  float _2253;
  float _2254;
  float _2262;
  int _2263;
  float _2265;
  float _2267;
  float _2270;
  float _2275;
  float _2284;
  float _2292;
  int _2293;
  float _2295;
  float _2297;
  float _2300;
  float _2305;
  float _2319;
  float _2320;
  float _2322;
  float _2324;
  float _2327;
  float _2330;
  float _2333;
  float _2346;
  float _2347;
  float _2348;
  float _2351;
  float _2354;
  float _2357;
  float _2379;
  float _2380;
  float _2381;
  float _2406;
  float _2407;
  float _2408;
  float _2453;
  float _2456;
  float _2459;
  float _2478;
  float _2479;
  float _2480;
  float _2527;
  float _2530;
  float _2533;
  float _2546;
  float _2549;
  float _2552;
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
  _126 = mad((WorkingColorSpace_ToAP1[0].z), _111, mad((WorkingColorSpace_ToAP1[0].y), _110, ((WorkingColorSpace_ToAP1[0].x) * _109)));
  _129 = mad((WorkingColorSpace_ToAP1[1].z), _111, mad((WorkingColorSpace_ToAP1[1].y), _110, ((WorkingColorSpace_ToAP1[1].x) * _109)));
  _132 = mad((WorkingColorSpace_ToAP1[2].z), _111, mad((WorkingColorSpace_ToAP1[2].y), _110, ((WorkingColorSpace_ToAP1[2].x) * _109)));
  _133 = dot(float3(_126, _129, _132), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _137 = (_126 / _133) + -1.0f;
  _138 = (_129 / _133) + -1.0f;
  _139 = (_132 / _133) + -1.0f;

  // _151 = (1.0f - exp2(((_133 * _133) * -4.0f) * ExpandGamut)) * (1.0f - exp2(dot(float3(_137, _138, _139), float3(_137, _138, _139)) * -4.0f));
  _151 = (1.0f - exp2(((_133 * _133) * -4.0f) * 0.f)) * (1.0f - exp2(dot(float3(_137, _138, _139), float3(_137, _138, _139)) * -4.0f));

  _167 = ((mad(-0.06368283927440643f, _132, mad(-0.32929131388664246f, _129, (_126 * 1.370412826538086f))) - _126) * _151) + _126;
  _168 = ((mad(-0.010861567221581936f, _132, mad(1.0970908403396606f, _129, (_126 * -0.08343426138162613f))) - _129) * _151) + _129;
  _169 = ((mad(1.203694462776184f, _132, mad(-0.09862564504146576f, _129, (_126 * -0.02579325996339321f))) - _132) * _151) + _132;
  _170 = dot(float3(_167, _168, _169), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _184 = ColorOffset.w + ColorOffsetShadows.w;
  _198 = ColorGain.w * ColorGainShadows.w;
  _212 = ColorGamma.w * ColorGammaShadows.w;
  _226 = ColorContrast.w * ColorContrastShadows.w;
  _240 = ColorSaturation.w * ColorSaturationShadows.w;
  _244 = _167 - _170;
  _245 = _168 - _170;
  _246 = _169 - _170;
  _303 = saturate(_170 / ColorCorrectionShadowsMax);
  _307 = (_303 * _303) * (3.0f - (_303 * 2.0f));
  _308 = 1.0f - _307;
  _317 = ColorOffset.w + ColorOffsetHighlights.w;
  _326 = ColorGain.w * ColorGainHighlights.w;
  _335 = ColorGamma.w * ColorGammaHighlights.w;
  _344 = ColorContrast.w * ColorContrastHighlights.w;
  _353 = ColorSaturation.w * ColorSaturationHighlights.w;
  _416 = saturate((_170 - ColorCorrectionHighlightsMin) / (ColorCorrectionHighlightsMax - ColorCorrectionHighlightsMin));
  _420 = (_416 * _416) * (3.0f - (_416 * 2.0f));
  _429 = ColorOffset.w + ColorOffsetMidtones.w;
  _438 = ColorGain.w * ColorGainMidtones.w;
  _447 = ColorGamma.w * ColorGammaMidtones.w;
  _456 = ColorContrast.w * ColorContrastMidtones.w;
  _465 = ColorSaturation.w * ColorSaturationMidtones.w;
  _523 = _307 - _420;
  _534 = ((_420 * (((ColorOffset.x + ColorOffsetHighlights.x) + _317) + (((ColorGain.x * ColorGainHighlights.x) * _326) * exp2(log2(exp2(((ColorContrast.x * ColorContrastHighlights.x) * _344) * log2(max(0.0f, ((((ColorSaturation.x * ColorSaturationHighlights.x) * _353) * _244) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.x * ColorGammaHighlights.x) * _335)))))) + (_308 * (((ColorOffset.x + ColorOffsetShadows.x) + _184) + (((ColorGain.x * ColorGainShadows.x) * _198) * exp2(log2(exp2(((ColorContrast.x * ColorContrastShadows.x) * _226) * log2(max(0.0f, ((((ColorSaturation.x * ColorSaturationShadows.x) * _240) * _244) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.x * ColorGammaShadows.x) * _212))))))) + ((((ColorOffset.x + ColorOffsetMidtones.x) + _429) + (((ColorGain.x * ColorGainMidtones.x) * _438) * exp2(log2(exp2(((ColorContrast.x * ColorContrastMidtones.x) * _456) * log2(max(0.0f, ((((ColorSaturation.x * ColorSaturationMidtones.x) * _465) * _244) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.x * ColorGammaMidtones.x) * _447))))) * _523);
  _536 = ((_420 * (((ColorOffset.y + ColorOffsetHighlights.y) + _317) + (((ColorGain.y * ColorGainHighlights.y) * _326) * exp2(log2(exp2(((ColorContrast.y * ColorContrastHighlights.y) * _344) * log2(max(0.0f, ((((ColorSaturation.y * ColorSaturationHighlights.y) * _353) * _245) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.y * ColorGammaHighlights.y) * _335)))))) + (_308 * (((ColorOffset.y + ColorOffsetShadows.y) + _184) + (((ColorGain.y * ColorGainShadows.y) * _198) * exp2(log2(exp2(((ColorContrast.y * ColorContrastShadows.y) * _226) * log2(max(0.0f, ((((ColorSaturation.y * ColorSaturationShadows.y) * _240) * _245) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.y * ColorGammaShadows.y) * _212))))))) + ((((ColorOffset.y + ColorOffsetMidtones.y) + _429) + (((ColorGain.y * ColorGainMidtones.y) * _438) * exp2(log2(exp2(((ColorContrast.y * ColorContrastMidtones.y) * _456) * log2(max(0.0f, ((((ColorSaturation.y * ColorSaturationMidtones.y) * _465) * _245) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.y * ColorGammaMidtones.y) * _447))))) * _523);
  _538 = ((_420 * (((ColorOffset.z + ColorOffsetHighlights.z) + _317) + (((ColorGain.z * ColorGainHighlights.z) * _326) * exp2(log2(exp2(((ColorContrast.z * ColorContrastHighlights.z) * _344) * log2(max(0.0f, ((((ColorSaturation.z * ColorSaturationHighlights.z) * _353) * _246) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.z * ColorGammaHighlights.z) * _335)))))) + (_308 * (((ColorOffset.z + ColorOffsetShadows.z) + _184) + (((ColorGain.z * ColorGainShadows.z) * _198) * exp2(log2(exp2(((ColorContrast.z * ColorContrastShadows.z) * _226) * log2(max(0.0f, ((((ColorSaturation.z * ColorSaturationShadows.z) * _240) * _246) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.z * ColorGammaShadows.z) * _212))))))) + ((((ColorOffset.z + ColorOffsetMidtones.z) + _429) + (((ColorGain.z * ColorGainMidtones.z) * _438) * exp2(log2(exp2(((ColorContrast.z * ColorContrastMidtones.z) * _456) * log2(max(0.0f, ((((ColorSaturation.z * ColorSaturationMidtones.z) * _465) * _246) + _170)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((ColorGamma.z * ColorGammaMidtones.z) * _447))))) * _523);

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
  SV_Target = ProcessLutbuilder(float3(_534, _536, _538), cb_config, SV_Target, OutputDevice);
  return SV_Target;

  _574 = ((mad(0.061360642313957214f, _538, mad(-4.540197551250458e-09f, _536, (_534 * 0.9386394023895264f))) - _534) * BlueCorrection) + _534;
  _575 = ((mad(0.169205904006958f, _538, mad(0.8307942152023315f, _536, (_534 * 6.775371730327606e-08f))) - _536) * BlueCorrection) + _536;
  _576 = (mad(-2.3283064365386963e-10f, _536, (_534 * -9.313225746154785e-10f)) * BlueCorrection) + _538;
  _579 = mad(0.16386905312538147f, _576, mad(0.14067868888378143f, _575, (_574 * 0.6954522132873535f)));
  _582 = mad(0.0955343246459961f, _576, mad(0.8596711158752441f, _575, (_574 * 0.044794581830501556f)));
  _585 = mad(1.0015007257461548f, _576, mad(0.004025210160762072f, _575, (_574 * -0.005525882821530104f)));
  _589 = max(max(_579, _582), _585);
  _594 = (max(_589, 1.000000013351432e-10f) - max(min(min(_579, _582), _585), 1.000000013351432e-10f)) / max(_589, 0.009999999776482582f);
  _607 = ((_582 + _579) + _585) + (sqrt((((_585 - _582) * _585) + ((_582 - _579) * _582)) + ((_579 - _585) * _579)) * 1.75f);
  _608 = _607 * 0.3333333432674408f;
  _609 = _594 + -0.4000000059604645f;
  _610 = _609 * 5.0f;
  _614 = max((1.0f - abs(_609 * 2.5f)), 0.0f);
  _625 = ((float((int)(((int)(uint)((int)(_610 > 0.0f))) - ((int)(uint)((int)(_610 < 0.0f))))) * (1.0f - (_614 * _614))) + 1.0f) * 0.02500000037252903f;
  if (!(_608 <= 0.0533333346247673f)) {
    if (!(_608 >= 0.1599999964237213f)) {
      _634 = (((0.23999999463558197f / _607) + -0.5f) * _625);
    } else {
      _634 = 0.0f;
    }
  } else {
    _634 = _625;
  }
  _635 = _634 + 1.0f;
  _636 = _635 * _579;
  _637 = _635 * _582;
  _638 = _635 * _585;
  if (!((_636 == _637) && (_637 == _638))) {
    _645 = ((_636 * 2.0f) - _637) - _638;
    _648 = ((_582 - _585) * 1.7320507764816284f) * _635;
    _650 = atan(_648 / _645);
    _653 = (_645 < 0.0f);
    _654 = (_645 == 0.0f);
    _655 = (_648 >= 0.0f);
    _656 = (_648 < 0.0f);
    _667 = select((_655 && _654), 90.0f, select((_656 && _654), -90.0f, (select((_656 && _653), (_650 + -3.1415927410125732f), select((_655 && _653), (_650 + 3.1415927410125732f), _650)) * 57.2957763671875f)));
  } else {
    _667 = 0.0f;
  }
  _672 = min(max(select((_667 < 0.0f), (_667 + 360.0f), _667), 0.0f), 360.0f);
  if (_672 < -180.0f) {
    _681 = (_672 + 360.0f);
  } else {
    if (_672 > 180.0f) {
      _681 = (_672 + -360.0f);
    } else {
      _681 = _672;
    }
  }
  _685 = saturate(1.0f - abs(_681 * 0.014814814552664757f));
  _689 = (_685 * _685) * (3.0f - (_685 * 2.0f));
  _695 = ((_689 * _689) * ((_594 * 0.18000000715255737f) * (0.029999999329447746f - _636))) + _636;
  _705 = max(0.0f, mad(-0.21492856740951538f, _638, mad(-0.2365107536315918f, _637, (_695 * 1.4514392614364624f))));
  _706 = max(0.0f, mad(-0.09967592358589172f, _638, mad(1.17622971534729f, _637, (_695 * -0.07655377686023712f))));
  _707 = max(0.0f, mad(0.9977163076400757f, _638, mad(-0.006032449658960104f, _637, (_695 * 0.008316148072481155f))));
  _708 = dot(float3(_705, _706, _707), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _723 = (FilmBlackClip + 1.0f) - FilmToe;
  _725 = FilmWhiteClip + 1.0f;
  _727 = _725 - FilmShoulder;
  if (FilmToe > 0.800000011920929f) {
    _745 = (((0.8199999928474426f - FilmToe) / FilmSlope) + -0.7447274923324585f);
  } else {
    _736 = (FilmBlackClip + 0.18000000715255737f) / _723;
    _745 = (-0.7447274923324585f - ((log2(_736 / (2.0f - _736)) * 0.3465735912322998f) * (_723 / FilmSlope)));
  }
  _748 = ((1.0f - FilmToe) / FilmSlope) - _745;
  _750 = (FilmShoulder / FilmSlope) - _748;
  _754 = log2(lerp(_708, _705, 0.9599999785423279f)) * 0.3010300099849701f;
  _755 = log2(lerp(_708, _706, 0.9599999785423279f)) * 0.3010300099849701f;
  _756 = log2(lerp(_708, _707, 0.9599999785423279f)) * 0.3010300099849701f;
  _760 = FilmSlope * (_754 + _748);
  _761 = FilmSlope * (_755 + _748);
  _762 = FilmSlope * (_756 + _748);
  _763 = _723 * 2.0f;
  _765 = (FilmSlope * -2.0f) / _723;
  _766 = _754 - _745;
  _767 = _755 - _745;
  _768 = _756 - _745;
  _787 = _727 * 2.0f;
  _789 = (FilmSlope * 2.0f) / _727;
  _814 = select((_754 < _745), ((_763 / (exp2((_766 * 1.4426950216293335f) * _765) + 1.0f)) - FilmBlackClip), _760);
  _815 = select((_755 < _745), ((_763 / (exp2((_767 * 1.4426950216293335f) * _765) + 1.0f)) - FilmBlackClip), _761);
  _816 = select((_756 < _745), ((_763 / (exp2((_768 * 1.4426950216293335f) * _765) + 1.0f)) - FilmBlackClip), _762);
  _823 = _750 - _745;
  _827 = saturate(_766 / _823);
  _828 = saturate(_767 / _823);
  _829 = saturate(_768 / _823);
  _830 = (_750 < _745);
  _834 = select(_830, (1.0f - _827), _827);
  _835 = select(_830, (1.0f - _828), _828);
  _836 = select(_830, (1.0f - _829), _829);
  _855 = (((_834 * _834) * (select((_754 > _750), (_725 - (_787 / (exp2(((_754 - _750) * 1.4426950216293335f) * _789) + 1.0f))), _760) - _814)) * (3.0f - (_834 * 2.0f))) + _814;
  _856 = (((_835 * _835) * (select((_755 > _750), (_725 - (_787 / (exp2(((_755 - _750) * 1.4426950216293335f) * _789) + 1.0f))), _761) - _815)) * (3.0f - (_835 * 2.0f))) + _815;
  _857 = (((_836 * _836) * (select((_756 > _750), (_725 - (_787 / (exp2(((_756 - _750) * 1.4426950216293335f) * _789) + 1.0f))), _762) - _816)) * (3.0f - (_836 * 2.0f))) + _816;
  _858 = dot(float3(_855, _856, _857), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _878 = (ToneCurveAmount * (max(0.0f, (lerp(_858, _855, 0.9300000071525574f))) - _574)) + _574;
  _879 = (ToneCurveAmount * (max(0.0f, (lerp(_858, _856, 0.9300000071525574f))) - _575)) + _575;
  _880 = (ToneCurveAmount * (max(0.0f, (lerp(_858, _857, 0.9300000071525574f))) - _576)) + _576;
  _896 = ((mad(-0.06537103652954102f, _880, mad(1.451815478503704e-06f, _879, (_878 * 1.065374732017517f))) - _878) * BlueCorrection) + _878;
  _897 = ((mad(-0.20366770029067993f, _880, mad(1.2036634683609009f, _879, (_878 * -2.57161445915699e-07f))) - _879) * BlueCorrection) + _879;
  _898 = ((mad(0.9999996423721313f, _880, mad(2.0954757928848267e-08f, _879, (_878 * 1.862645149230957e-08f))) - _880) * BlueCorrection) + _880;
  _908 = max(0.0f, mad((WorkingColorSpace_FromAP1[0].z), _898, mad((WorkingColorSpace_FromAP1[0].y), _897, ((WorkingColorSpace_FromAP1[0].x) * _896))));
  _909 = max(0.0f, mad((WorkingColorSpace_FromAP1[1].z), _898, mad((WorkingColorSpace_FromAP1[1].y), _897, ((WorkingColorSpace_FromAP1[1].x) * _896))));
  _910 = max(0.0f, mad((WorkingColorSpace_FromAP1[2].z), _898, mad((WorkingColorSpace_FromAP1[2].y), _897, ((WorkingColorSpace_FromAP1[2].x) * _896))));
  _936 = ColorScale.x * (((MappingPolynomial.y + (MappingPolynomial.x * _908)) * _908) + MappingPolynomial.z);
  _937 = ColorScale.y * (((MappingPolynomial.y + (MappingPolynomial.x * _909)) * _909) + MappingPolynomial.z);
  _938 = ColorScale.z * (((MappingPolynomial.y + (MappingPolynomial.x * _910)) * _910) + MappingPolynomial.z);
  _945 = ((OverlayColor.x - _936) * OverlayColor.w) + _936;
  _946 = ((OverlayColor.y - _937) * OverlayColor.w) + _937;
  _947 = ((OverlayColor.z - _938) * OverlayColor.w) + _938;
  _948 = ColorScale.x * mad((WorkingColorSpace_FromAP1[0].z), _538, mad((WorkingColorSpace_FromAP1[0].y), _536, (_534 * (WorkingColorSpace_FromAP1[0].x))));
  _949 = ColorScale.y * mad((WorkingColorSpace_FromAP1[1].z), _538, mad((WorkingColorSpace_FromAP1[1].y), _536, ((WorkingColorSpace_FromAP1[1].x) * _534)));
  _950 = ColorScale.z * mad((WorkingColorSpace_FromAP1[2].z), _538, mad((WorkingColorSpace_FromAP1[2].y), _536, ((WorkingColorSpace_FromAP1[2].x) * _534)));
  _957 = ((OverlayColor.x - _948) * OverlayColor.w) + _948;
  _958 = ((OverlayColor.y - _949) * OverlayColor.w) + _949;
  _959 = ((OverlayColor.z - _950) * OverlayColor.w) + _950;
  _971 = exp2(log2(max(0.0f, _945)) * InverseGamma.y);
  _972 = exp2(log2(max(0.0f, _946)) * InverseGamma.y);
  _973 = exp2(log2(max(0.0f, _947)) * InverseGamma.y);
  [branch]
  if (OutputDevice == 0) {
    if (WorkingColorSpace_bIsSRGB == 0) {
      _996 = mad((WorkingColorSpace_ToAP1[0].z), _973, mad((WorkingColorSpace_ToAP1[0].y), _972, ((WorkingColorSpace_ToAP1[0].x) * _971)));
      _999 = mad((WorkingColorSpace_ToAP1[1].z), _973, mad((WorkingColorSpace_ToAP1[1].y), _972, ((WorkingColorSpace_ToAP1[1].x) * _971)));
      _1002 = mad((WorkingColorSpace_ToAP1[2].z), _973, mad((WorkingColorSpace_ToAP1[2].y), _972, ((WorkingColorSpace_ToAP1[2].x) * _971)));
      _1013 = mad(_45, _1002, mad(_44, _999, (_996 * _43)));
      _1014 = mad(_48, _1002, mad(_47, _999, (_996 * _46)));
      _1015 = mad(_51, _1002, mad(_50, _999, (_996 * _49)));
    } else {
      _1013 = _971;
      _1014 = _972;
      _1015 = _973;
    }
    if (_1013 < 0.0031306699384003878f) {
      _1026 = (_1013 * 12.920000076293945f);
    } else {
      _1026 = (((pow(_1013, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
    if (_1014 < 0.0031306699384003878f) {
      _1037 = (_1014 * 12.920000076293945f);
    } else {
      _1037 = (((pow(_1014, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
    if (_1015 < 0.0031306699384003878f) {
      _2573 = _1026;
      _2574 = _1037;
      _2575 = (_1015 * 12.920000076293945f);
    } else {
      _2573 = _1026;
      _2574 = _1037;
      _2575 = (((pow(_1015, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
  } else {
    if (OutputDevice == 1) {
      _1064 = mad((WorkingColorSpace_ToAP1[0].z), _973, mad((WorkingColorSpace_ToAP1[0].y), _972, ((WorkingColorSpace_ToAP1[0].x) * _971)));
      _1067 = mad((WorkingColorSpace_ToAP1[1].z), _973, mad((WorkingColorSpace_ToAP1[1].y), _972, ((WorkingColorSpace_ToAP1[1].x) * _971)));
      _1070 = mad((WorkingColorSpace_ToAP1[2].z), _973, mad((WorkingColorSpace_ToAP1[2].y), _972, ((WorkingColorSpace_ToAP1[2].x) * _971)));
      _1080 = max(6.103519990574569e-05f, mad(_45, _1070, mad(_44, _1067, (_1064 * _43))));
      _1081 = max(6.103519990574569e-05f, mad(_48, _1070, mad(_47, _1067, (_1064 * _46))));
      _1082 = max(6.103519990574569e-05f, mad(_51, _1070, mad(_50, _1067, (_1064 * _49))));
      _2573 = min((_1080 * 4.5f), ((exp2(log2(max(_1080, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
      _2574 = min((_1081 * 4.5f), ((exp2(log2(max(_1081, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
      _2575 = min((_1082 * 4.5f), ((exp2(log2(max(_1082, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
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
        _1157 = ACESSceneColorMultiplier * _957;
        _1158 = ACESSceneColorMultiplier * _958;
        _1159 = ACESSceneColorMultiplier * _959;
        _1162 = mad((WorkingColorSpace_ToAP0[0].z), _1159, mad((WorkingColorSpace_ToAP0[0].y), _1158, ((WorkingColorSpace_ToAP0[0].x) * _1157)));
        _1165 = mad((WorkingColorSpace_ToAP0[1].z), _1159, mad((WorkingColorSpace_ToAP0[1].y), _1158, ((WorkingColorSpace_ToAP0[1].x) * _1157)));
        _1168 = mad((WorkingColorSpace_ToAP0[2].z), _1159, mad((WorkingColorSpace_ToAP0[2].y), _1158, ((WorkingColorSpace_ToAP0[2].x) * _1157)));
        _1171 = mad(-0.21492856740951538f, _1168, mad(-0.2365107536315918f, _1165, (_1162 * 1.4514392614364624f)));
        _1174 = mad(-0.09967592358589172f, _1168, mad(1.17622971534729f, _1165, (_1162 * -0.07655377686023712f)));
        _1177 = mad(0.9977163076400757f, _1168, mad(-0.006032449658960104f, _1165, (_1162 * 0.008316148072481155f)));
        _1179 = max(_1171, max(_1174, _1177));
        if (!(_1179 < 1.000000013351432e-10f)) {
          if (!(((_1162 < 0.0f) || (_1165 < 0.0f)) || (_1168 < 0.0f))) {
            _1189 = abs(_1179);
            _1190 = (_1179 - _1171) / _1189;
            _1192 = (_1179 - _1174) / _1189;
            _1194 = (_1179 - _1177) / _1189;
            if (!(_1190 < 0.8149999976158142f)) {
              _1197 = _1190 + -0.8149999976158142f;
              _1209 = ((_1197 / exp2(log2(exp2(log2(_1197 * 3.0552830696105957f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8149999976158142f);
            } else {
              _1209 = _1190;
            }
            if (!(_1192 < 0.8029999732971191f)) {
              _1212 = _1192 + -0.8029999732971191f;
              _1224 = ((_1212 / exp2(log2(exp2(log2(_1212 * 3.4972610473632812f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8029999732971191f);
            } else {
              _1224 = _1192;
            }
            if (!(_1194 < 0.8799999952316284f)) {
              _1227 = _1194 + -0.8799999952316284f;
              _1239 = ((_1227 / exp2(log2(exp2(log2(_1227 * 6.810994625091553f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8799999952316284f);
            } else {
              _1239 = _1194;
            }
            _1247 = (_1179 - (_1189 * _1209));
            _1248 = (_1179 - (_1189 * _1224));
            _1249 = (_1179 - (_1189 * _1239));
          } else {
            _1247 = _1171;
            _1248 = _1174;
            _1249 = _1177;
          }
        } else {
          _1247 = _1171;
          _1248 = _1174;
          _1249 = _1177;
        }
        _1252 = mad(0.16386906802654266f, _1249, mad(0.14067870378494263f, _1248, (_1247 * 0.6954522132873535f)));
        _1255 = mad(0.0955343171954155f, _1249, mad(0.8596711158752441f, _1248, (_1247 * 0.044794563204050064f)));
        _1258 = mad(1.0015007257461548f, _1249, mad(0.004025210160762072f, _1248, (_1247 * -0.005525882821530104f)));
        _1262 = max(max(_1252, _1255), _1258);
        _1267 = (max(_1262, 1.000000013351432e-10f) - max(min(min(_1252, _1255), _1258), 1.000000013351432e-10f)) / max(_1262, 0.009999999776482582f);
        _1280 = ((_1255 + _1252) + _1258) + (sqrt((((_1258 - _1255) * _1258) + ((_1255 - _1252) * _1255)) + ((_1252 - _1258) * _1252)) * 1.75f);
        _1281 = _1280 * 0.3333333432674408f;
        _1282 = _1267 + -0.4000000059604645f;
        _1283 = _1282 * 5.0f;
        _1287 = max((1.0f - abs(_1282 * 2.5f)), 0.0f);
        _1298 = ((float((int)(((int)(uint)((int)(_1283 > 0.0f))) - ((int)(uint)((int)(_1283 < 0.0f))))) * (1.0f - (_1287 * _1287))) + 1.0f) * 0.02500000037252903f;
        if (!(_1281 <= 0.0533333346247673f)) {
          if (!(_1281 >= 0.1599999964237213f)) {
            _1307 = (((0.23999999463558197f / _1280) + -0.5f) * _1298);
          } else {
            _1307 = 0.0f;
          }
        } else {
          _1307 = _1298;
        }
        _1308 = _1307 + 1.0f;
        _1309 = _1308 * _1252;
        _1310 = _1308 * _1255;
        _1311 = _1308 * _1258;
        if (!((_1309 == _1310) && (_1310 == _1311))) {
          _1318 = ((_1309 * 2.0f) - _1310) - _1311;
          _1321 = ((_1255 - _1258) * 1.7320507764816284f) * _1308;
          _1323 = atan(_1321 / _1318);
          _1326 = (_1318 < 0.0f);
          _1327 = (_1318 == 0.0f);
          _1328 = (_1321 >= 0.0f);
          _1329 = (_1321 < 0.0f);
          _1340 = select((_1328 && _1327), 90.0f, select((_1329 && _1327), -90.0f, (select((_1329 && _1326), (_1323 + -3.1415927410125732f), select((_1328 && _1326), (_1323 + 3.1415927410125732f), _1323)) * 57.2957763671875f)));
        } else {
          _1340 = 0.0f;
        }
        _1345 = min(max(select((_1340 < 0.0f), (_1340 + 360.0f), _1340), 0.0f), 360.0f);
        if (_1345 < -180.0f) {
          _1354 = (_1345 + 360.0f);
        } else {
          if (_1345 > 180.0f) {
            _1354 = (_1345 + -360.0f);
          } else {
            _1354 = _1345;
          }
        }
        if ((_1354 > -67.5f) && (_1354 < 67.5f)) {
          _1360 = (_1354 + 67.5f) * 0.029629629105329514f;
          _1361 = int(_1360);
          _1363 = _1360 - float((int)(_1361));
          _1364 = _1363 * _1363;
          _1365 = _1364 * _1363;
          if (_1361 == 3) {
            _1393 = (((0.1666666716337204f - (_1363 * 0.5f)) + (_1364 * 0.5f)) - (_1365 * 0.1666666716337204f));
          } else {
            if (_1361 == 2) {
              _1393 = ((0.6666666865348816f - _1364) + (_1365 * 0.5f));
            } else {
              if (_1361 == 1) {
                _1393 = (((_1365 * -0.5f) + 0.1666666716337204f) + ((_1364 + _1363) * 0.5f));
              } else {
                _1393 = select((_1361 == 0), (_1365 * 0.1666666716337204f), 0.0f);
              }
            }
          }
        } else {
          _1393 = 0.0f;
        }
        _1402 = min(max(((((_1267 * 0.27000001072883606f) * (0.029999999329447746f - _1309)) * _1393) + _1309), 0.0f), 65535.0f);
        _1403 = min(max(_1310, 0.0f), 65535.0f);
        _1404 = min(max(_1311, 0.0f), 65535.0f);
        _1417 = min(max(mad(-0.21492856740951538f, _1404, mad(-0.2365107536315918f, _1403, (_1402 * 1.4514392614364624f))), 0.0f), 65504.0f);
        _1418 = min(max(mad(-0.09967592358589172f, _1404, mad(1.17622971534729f, _1403, (_1402 * -0.07655377686023712f))), 0.0f), 65504.0f);
        _1419 = min(max(mad(0.9977163076400757f, _1404, mad(-0.006032449658960104f, _1403, (_1402 * 0.008316148072481155f))), 0.0f), 65504.0f);
        _1420 = dot(float3(_1417, _1418, _1419), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
        _1431 = log2(max((lerp(_1420, _1417, 0.9599999785423279f)), 1.000000013351432e-10f));
        _1432 = _1431 * 0.3010300099849701f;
        _1433 = log2(ACESMinMaxData.x);
        _1434 = _1433 * 0.3010300099849701f;
        if (!(_1432 <= _1434)) {
          _1441 = log2(ACESMidData.x);
          _1442 = _1441 * 0.3010300099849701f;
          if ((_1432 > _1434) && (_1432 < _1442)) {
            _1450 = ((_1431 - _1433) * 0.9030900001525879f) / ((_1441 - _1433) * 0.3010300099849701f);
            _1451 = int(_1450);
            _1453 = _1450 - float((int)(_1451));
            _1455 = _10[min((uint)(_1451), 5u)];
            _1458 = _10[min((uint)((_1451 + 1)), 5u)];
            _1463 = _1455 * 0.5f;
            _1503 = dot(float3((_1453 * _1453), _1453, 1.0f), float3(mad((_10[min((uint)((_1451 + 2)), 5u)]), 0.5f, mad(_1458, -1.0f, _1463)), (_1458 - _1455), mad(_1458, 0.5f, _1463)));
          } else {
            if (!(_1432 >= _1442)) {
              _1503 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
            } else {
              _1472 = log2(ACESMinMaxData.z);
              if (!(_1432 < (_1472 * 0.3010300099849701f))) {
                _1503 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _1480 = ((_1431 - _1441) * 0.9030900001525879f) / ((_1472 - _1441) * 0.3010300099849701f);
                _1481 = int(_1480);
                _1483 = _1480 - float((int)(_1481));
                _1485 = _11[min((uint)(_1481), 5u)];
                _1488 = _11[min((uint)((_1481 + 1)), 5u)];
                _1493 = _1485 * 0.5f;
                _1503 = dot(float3((_1483 * _1483), _1483, 1.0f), float3(mad((_11[min((uint)((_1481 + 2)), 5u)]), 0.5f, mad(_1488, -1.0f, _1493)), (_1488 - _1485), mad(_1488, 0.5f, _1493)));
              }
            }
          }
        } else {
          _1503 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
        }
        _1507 = log2(max((lerp(_1420, _1418, 0.9599999785423279f)), 1.000000013351432e-10f));
        _1508 = _1507 * 0.3010300099849701f;
        if (!(_1508 <= _1434)) {
          _1515 = log2(ACESMidData.x);
          _1516 = _1515 * 0.3010300099849701f;
          if ((_1508 > _1434) && (_1508 < _1516)) {
            _1524 = ((_1507 - _1433) * 0.9030900001525879f) / ((_1515 - _1433) * 0.3010300099849701f);
            _1525 = int(_1524);
            _1527 = _1524 - float((int)(_1525));
            _1529 = _10[min((uint)(_1525), 5u)];
            _1532 = _10[min((uint)((_1525 + 1)), 5u)];
            _1537 = _1529 * 0.5f;
            _1577 = dot(float3((_1527 * _1527), _1527, 1.0f), float3(mad((_10[min((uint)((_1525 + 2)), 5u)]), 0.5f, mad(_1532, -1.0f, _1537)), (_1532 - _1529), mad(_1532, 0.5f, _1537)));
          } else {
            if (!(_1508 >= _1516)) {
              _1577 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
            } else {
              _1546 = log2(ACESMinMaxData.z);
              if (!(_1508 < (_1546 * 0.3010300099849701f))) {
                _1577 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _1554 = ((_1507 - _1515) * 0.9030900001525879f) / ((_1546 - _1515) * 0.3010300099849701f);
                _1555 = int(_1554);
                _1557 = _1554 - float((int)(_1555));
                _1559 = _11[min((uint)(_1555), 5u)];
                _1562 = _11[min((uint)((_1555 + 1)), 5u)];
                _1567 = _1559 * 0.5f;
                _1577 = dot(float3((_1557 * _1557), _1557, 1.0f), float3(mad((_11[min((uint)((_1555 + 2)), 5u)]), 0.5f, mad(_1562, -1.0f, _1567)), (_1562 - _1559), mad(_1562, 0.5f, _1567)));
              }
            }
          }
        } else {
          _1577 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
        }
        _1581 = log2(max((lerp(_1420, _1419, 0.9599999785423279f)), 1.000000013351432e-10f));
        _1582 = _1581 * 0.3010300099849701f;
        if (!(_1582 <= _1434)) {
          _1589 = log2(ACESMidData.x);
          _1590 = _1589 * 0.3010300099849701f;
          if ((_1582 > _1434) && (_1582 < _1590)) {
            _1598 = ((_1581 - _1433) * 0.9030900001525879f) / ((_1589 - _1433) * 0.3010300099849701f);
            _1599 = int(_1598);
            _1601 = _1598 - float((int)(_1599));
            _1603 = _10[min((uint)(_1599), 5u)];
            _1606 = _10[min((uint)((_1599 + 1)), 5u)];
            _1611 = _1603 * 0.5f;
            _1651 = dot(float3((_1601 * _1601), _1601, 1.0f), float3(mad((_10[min((uint)((_1599 + 2)), 5u)]), 0.5f, mad(_1606, -1.0f, _1611)), (_1606 - _1603), mad(_1606, 0.5f, _1611)));
          } else {
            if (!(_1582 >= _1590)) {
              _1651 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
            } else {
              _1620 = log2(ACESMinMaxData.z);
              if (!(_1582 < (_1620 * 0.3010300099849701f))) {
                _1651 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _1628 = ((_1581 - _1589) * 0.9030900001525879f) / ((_1620 - _1589) * 0.3010300099849701f);
                _1629 = int(_1628);
                _1631 = _1628 - float((int)(_1629));
                _1633 = _11[min((uint)(_1629), 5u)];
                _1636 = _11[min((uint)((_1629 + 1)), 5u)];
                _1641 = _1633 * 0.5f;
                _1651 = dot(float3((_1631 * _1631), _1631, 1.0f), float3(mad((_11[min((uint)((_1629 + 2)), 5u)]), 0.5f, mad(_1636, -1.0f, _1641)), (_1636 - _1633), mad(_1636, 0.5f, _1641)));
              }
            }
          }
        } else {
          _1651 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
        }
        _1655 = ACESMinMaxData.w - ACESMinMaxData.y;
        _1656 = (exp2(_1503 * 3.321928024291992f) - ACESMinMaxData.y) / _1655;
        _1658 = (exp2(_1577 * 3.321928024291992f) - ACESMinMaxData.y) / _1655;
        _1660 = (exp2(_1651 * 3.321928024291992f) - ACESMinMaxData.y) / _1655;
        _1663 = mad(0.15618768334388733f, _1660, mad(0.13400420546531677f, _1658, (_1656 * 0.6624541878700256f)));
        _1666 = mad(0.053689517080783844f, _1660, mad(0.6740817427635193f, _1658, (_1656 * 0.2722287178039551f)));
        _1669 = mad(1.0103391408920288f, _1660, mad(0.00406073359772563f, _1658, (_1656 * -0.005574649665504694f)));
        _1682 = min(max(mad(-0.23642469942569733f, _1669, mad(-0.32480329275131226f, _1666, (_1663 * 1.6410233974456787f))), 0.0f), 1.0f);
        _1683 = min(max(mad(0.016756348311901093f, _1669, mad(1.6153316497802734f, _1666, (_1663 * -0.663662850856781f))), 0.0f), 1.0f);
        _1684 = min(max(mad(0.9883948564529419f, _1669, mad(-0.008284442126750946f, _1666, (_1663 * 0.011721894145011902f))), 0.0f), 1.0f);
        _1687 = mad(0.15618768334388733f, _1684, mad(0.13400420546531677f, _1683, (_1682 * 0.6624541878700256f)));
        _1690 = mad(0.053689517080783844f, _1684, mad(0.6740817427635193f, _1683, (_1682 * 0.2722287178039551f)));
        _1693 = mad(1.0103391408920288f, _1684, mad(0.00406073359772563f, _1683, (_1682 * -0.005574649665504694f)));
        _1715 = min(max((min(max(mad(-0.23642469942569733f, _1693, mad(-0.32480329275131226f, _1690, (_1687 * 1.6410233974456787f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
        _1716 = min(max((min(max(mad(0.016756348311901093f, _1693, mad(1.6153316497802734f, _1690, (_1687 * -0.663662850856781f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
        _1717 = min(max((min(max(mad(0.9883948564529419f, _1693, mad(-0.008284442126750946f, _1690, (_1687 * 0.011721894145011902f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
        if (!(OutputDevice == 5)) {
          _1730 = mad(_45, _1717, mad(_44, _1716, (_1715 * _43)));
          _1731 = mad(_48, _1717, mad(_47, _1716, (_1715 * _46)));
          _1732 = mad(_51, _1717, mad(_50, _1716, (_1715 * _49)));
        } else {
          _1730 = _1715;
          _1731 = _1716;
          _1732 = _1717;
        }
        _1742 = exp2(log2(_1730 * 9.999999747378752e-05f) * 0.1593017578125f);
        _1743 = exp2(log2(_1731 * 9.999999747378752e-05f) * 0.1593017578125f);
        _1744 = exp2(log2(_1732 * 9.999999747378752e-05f) * 0.1593017578125f);
        _2573 = exp2(log2((1.0f / ((_1742 * 18.6875f) + 1.0f)) * ((_1742 * 18.8515625f) + 0.8359375f)) * 78.84375f);
        _2574 = exp2(log2((1.0f / ((_1743 * 18.6875f) + 1.0f)) * ((_1743 * 18.8515625f) + 0.8359375f)) * 78.84375f);
        _2575 = exp2(log2((1.0f / ((_1744 * 18.6875f) + 1.0f)) * ((_1744 * 18.8515625f) + 0.8359375f)) * 78.84375f);
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
          _1821 = ACESSceneColorMultiplier * _957;
          _1822 = ACESSceneColorMultiplier * _958;
          _1823 = ACESSceneColorMultiplier * _959;
          _1826 = mad((WorkingColorSpace_ToAP0[0].z), _1823, mad((WorkingColorSpace_ToAP0[0].y), _1822, ((WorkingColorSpace_ToAP0[0].x) * _1821)));
          _1829 = mad((WorkingColorSpace_ToAP0[1].z), _1823, mad((WorkingColorSpace_ToAP0[1].y), _1822, ((WorkingColorSpace_ToAP0[1].x) * _1821)));
          _1832 = mad((WorkingColorSpace_ToAP0[2].z), _1823, mad((WorkingColorSpace_ToAP0[2].y), _1822, ((WorkingColorSpace_ToAP0[2].x) * _1821)));
          _1835 = mad(-0.21492856740951538f, _1832, mad(-0.2365107536315918f, _1829, (_1826 * 1.4514392614364624f)));
          _1838 = mad(-0.09967592358589172f, _1832, mad(1.17622971534729f, _1829, (_1826 * -0.07655377686023712f)));
          _1841 = mad(0.9977163076400757f, _1832, mad(-0.006032449658960104f, _1829, (_1826 * 0.008316148072481155f)));
          _1843 = max(_1835, max(_1838, _1841));
          if (!(_1843 < 1.000000013351432e-10f)) {
            if (!(((_1826 < 0.0f) || (_1829 < 0.0f)) || (_1832 < 0.0f))) {
              _1853 = abs(_1843);
              _1854 = (_1843 - _1835) / _1853;
              _1856 = (_1843 - _1838) / _1853;
              _1858 = (_1843 - _1841) / _1853;
              if (!(_1854 < 0.8149999976158142f)) {
                _1861 = _1854 + -0.8149999976158142f;
                _1873 = ((_1861 / exp2(log2(exp2(log2(_1861 * 3.0552830696105957f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8149999976158142f);
              } else {
                _1873 = _1854;
              }
              if (!(_1856 < 0.8029999732971191f)) {
                _1876 = _1856 + -0.8029999732971191f;
                _1888 = ((_1876 / exp2(log2(exp2(log2(_1876 * 3.4972610473632812f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8029999732971191f);
              } else {
                _1888 = _1856;
              }
              if (!(_1858 < 0.8799999952316284f)) {
                _1891 = _1858 + -0.8799999952316284f;
                _1903 = ((_1891 / exp2(log2(exp2(log2(_1891 * 6.810994625091553f) * 1.2000000476837158f) + 1.0f) * 0.8333333134651184f)) + 0.8799999952316284f);
              } else {
                _1903 = _1858;
              }
              _1911 = (_1843 - (_1853 * _1873));
              _1912 = (_1843 - (_1853 * _1888));
              _1913 = (_1843 - (_1853 * _1903));
            } else {
              _1911 = _1835;
              _1912 = _1838;
              _1913 = _1841;
            }
          } else {
            _1911 = _1835;
            _1912 = _1838;
            _1913 = _1841;
          }
          _1916 = mad(0.16386906802654266f, _1913, mad(0.14067870378494263f, _1912, (_1911 * 0.6954522132873535f)));
          _1919 = mad(0.0955343171954155f, _1913, mad(0.8596711158752441f, _1912, (_1911 * 0.044794563204050064f)));
          _1922 = mad(1.0015007257461548f, _1913, mad(0.004025210160762072f, _1912, (_1911 * -0.005525882821530104f)));
          _1926 = max(max(_1916, _1919), _1922);
          _1931 = (max(_1926, 1.000000013351432e-10f) - max(min(min(_1916, _1919), _1922), 1.000000013351432e-10f)) / max(_1926, 0.009999999776482582f);
          _1944 = ((_1919 + _1916) + _1922) + (sqrt((((_1922 - _1919) * _1922) + ((_1919 - _1916) * _1919)) + ((_1916 - _1922) * _1916)) * 1.75f);
          _1945 = _1944 * 0.3333333432674408f;
          _1946 = _1931 + -0.4000000059604645f;
          _1947 = _1946 * 5.0f;
          _1951 = max((1.0f - abs(_1946 * 2.5f)), 0.0f);
          _1962 = ((float((int)(((int)(uint)((int)(_1947 > 0.0f))) - ((int)(uint)((int)(_1947 < 0.0f))))) * (1.0f - (_1951 * _1951))) + 1.0f) * 0.02500000037252903f;
          if (!(_1945 <= 0.0533333346247673f)) {
            if (!(_1945 >= 0.1599999964237213f)) {
              _1971 = (((0.23999999463558197f / _1944) + -0.5f) * _1962);
            } else {
              _1971 = 0.0f;
            }
          } else {
            _1971 = _1962;
          }
          _1972 = _1971 + 1.0f;
          _1973 = _1972 * _1916;
          _1974 = _1972 * _1919;
          _1975 = _1972 * _1922;
          if (!((_1973 == _1974) && (_1974 == _1975))) {
            _1982 = ((_1973 * 2.0f) - _1974) - _1975;
            _1985 = ((_1919 - _1922) * 1.7320507764816284f) * _1972;
            _1987 = atan(_1985 / _1982);
            _1990 = (_1982 < 0.0f);
            _1991 = (_1982 == 0.0f);
            _1992 = (_1985 >= 0.0f);
            _1993 = (_1985 < 0.0f);
            _2004 = select((_1992 && _1991), 90.0f, select((_1993 && _1991), -90.0f, (select((_1993 && _1990), (_1987 + -3.1415927410125732f), select((_1992 && _1990), (_1987 + 3.1415927410125732f), _1987)) * 57.2957763671875f)));
          } else {
            _2004 = 0.0f;
          }
          _2009 = min(max(select((_2004 < 0.0f), (_2004 + 360.0f), _2004), 0.0f), 360.0f);
          if (_2009 < -180.0f) {
            _2018 = (_2009 + 360.0f);
          } else {
            if (_2009 > 180.0f) {
              _2018 = (_2009 + -360.0f);
            } else {
              _2018 = _2009;
            }
          }
          if ((_2018 > -67.5f) && (_2018 < 67.5f)) {
            _2024 = (_2018 + 67.5f) * 0.029629629105329514f;
            _2025 = int(_2024);
            _2027 = _2024 - float((int)(_2025));
            _2028 = _2027 * _2027;
            _2029 = _2028 * _2027;
            if (_2025 == 3) {
              _2057 = (((0.1666666716337204f - (_2027 * 0.5f)) + (_2028 * 0.5f)) - (_2029 * 0.1666666716337204f));
            } else {
              if (_2025 == 2) {
                _2057 = ((0.6666666865348816f - _2028) + (_2029 * 0.5f));
              } else {
                if (_2025 == 1) {
                  _2057 = (((_2029 * -0.5f) + 0.1666666716337204f) + ((_2028 + _2027) * 0.5f));
                } else {
                  _2057 = select((_2025 == 0), (_2029 * 0.1666666716337204f), 0.0f);
                }
              }
            }
          } else {
            _2057 = 0.0f;
          }
          _2066 = min(max(((((_1931 * 0.27000001072883606f) * (0.029999999329447746f - _1973)) * _2057) + _1973), 0.0f), 65535.0f);
          _2067 = min(max(_1974, 0.0f), 65535.0f);
          _2068 = min(max(_1975, 0.0f), 65535.0f);
          _2081 = min(max(mad(-0.21492856740951538f, _2068, mad(-0.2365107536315918f, _2067, (_2066 * 1.4514392614364624f))), 0.0f), 65504.0f);
          _2082 = min(max(mad(-0.09967592358589172f, _2068, mad(1.17622971534729f, _2067, (_2066 * -0.07655377686023712f))), 0.0f), 65504.0f);
          _2083 = min(max(mad(0.9977163076400757f, _2068, mad(-0.006032449658960104f, _2067, (_2066 * 0.008316148072481155f))), 0.0f), 65504.0f);
          _2084 = dot(float3(_2081, _2082, _2083), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
          _2095 = log2(max((lerp(_2084, _2081, 0.9599999785423279f)), 1.000000013351432e-10f));
          _2096 = _2095 * 0.3010300099849701f;
          _2097 = log2(ACESMinMaxData.x);
          _2098 = _2097 * 0.3010300099849701f;
          if (!(_2096 <= _2098)) {
            _2105 = log2(ACESMidData.x);
            _2106 = _2105 * 0.3010300099849701f;
            if ((_2096 > _2098) && (_2096 < _2106)) {
              _2114 = ((_2095 - _2097) * 0.9030900001525879f) / ((_2105 - _2097) * 0.3010300099849701f);
              _2115 = int(_2114);
              _2117 = _2114 - float((int)(_2115));
              _2119 = _8[min((uint)(_2115), 5u)];
              _2122 = _8[min((uint)((_2115 + 1)), 5u)];
              _2127 = _2119 * 0.5f;
              _2167 = dot(float3((_2117 * _2117), _2117, 1.0f), float3(mad((_8[min((uint)((_2115 + 2)), 5u)]), 0.5f, mad(_2122, -1.0f, _2127)), (_2122 - _2119), mad(_2122, 0.5f, _2127)));
            } else {
              if (!(_2096 >= _2106)) {
                _2167 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _2136 = log2(ACESMinMaxData.z);
                if (!(_2096 < (_2136 * 0.3010300099849701f))) {
                  _2167 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
                } else {
                  _2144 = ((_2095 - _2105) * 0.9030900001525879f) / ((_2136 - _2105) * 0.3010300099849701f);
                  _2145 = int(_2144);
                  _2147 = _2144 - float((int)(_2145));
                  _2149 = _9[min((uint)(_2145), 5u)];
                  _2152 = _9[min((uint)((_2145 + 1)), 5u)];
                  _2157 = _2149 * 0.5f;
                  _2167 = dot(float3((_2147 * _2147), _2147, 1.0f), float3(mad((_9[min((uint)((_2145 + 2)), 5u)]), 0.5f, mad(_2152, -1.0f, _2157)), (_2152 - _2149), mad(_2152, 0.5f, _2157)));
                }
              }
            }
          } else {
            _2167 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
          }
          _2171 = log2(max((lerp(_2084, _2082, 0.9599999785423279f)), 1.000000013351432e-10f));
          _2172 = _2171 * 0.3010300099849701f;
          if (!(_2172 <= _2098)) {
            _2179 = log2(ACESMidData.x);
            _2180 = _2179 * 0.3010300099849701f;
            if ((_2172 > _2098) && (_2172 < _2180)) {
              _2188 = ((_2171 - _2097) * 0.9030900001525879f) / ((_2179 - _2097) * 0.3010300099849701f);
              _2189 = int(_2188);
              _2191 = _2188 - float((int)(_2189));
              _2193 = _8[min((uint)(_2189), 5u)];
              _2196 = _8[min((uint)((_2189 + 1)), 5u)];
              _2201 = _2193 * 0.5f;
              _2241 = dot(float3((_2191 * _2191), _2191, 1.0f), float3(mad((_8[min((uint)((_2189 + 2)), 5u)]), 0.5f, mad(_2196, -1.0f, _2201)), (_2196 - _2193), mad(_2196, 0.5f, _2201)));
            } else {
              if (!(_2172 >= _2180)) {
                _2241 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _2210 = log2(ACESMinMaxData.z);
                if (!(_2172 < (_2210 * 0.3010300099849701f))) {
                  _2241 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
                } else {
                  _2218 = ((_2171 - _2179) * 0.9030900001525879f) / ((_2210 - _2179) * 0.3010300099849701f);
                  _2219 = int(_2218);
                  _2221 = _2218 - float((int)(_2219));
                  _2223 = _9[min((uint)(_2219), 5u)];
                  _2226 = _9[min((uint)((_2219 + 1)), 5u)];
                  _2231 = _2223 * 0.5f;
                  _2241 = dot(float3((_2221 * _2221), _2221, 1.0f), float3(mad((_9[min((uint)((_2219 + 2)), 5u)]), 0.5f, mad(_2226, -1.0f, _2231)), (_2226 - _2223), mad(_2226, 0.5f, _2231)));
                }
              }
            }
          } else {
            _2241 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
          }
          _2245 = log2(max((lerp(_2084, _2083, 0.9599999785423279f)), 1.000000013351432e-10f));
          _2246 = _2245 * 0.3010300099849701f;
          if (!(_2246 <= _2098)) {
            _2253 = log2(ACESMidData.x);
            _2254 = _2253 * 0.3010300099849701f;
            if ((_2246 > _2098) && (_2246 < _2254)) {
              _2262 = ((_2245 - _2097) * 0.9030900001525879f) / ((_2253 - _2097) * 0.3010300099849701f);
              _2263 = int(_2262);
              _2265 = _2262 - float((int)(_2263));
              _2267 = _8[min((uint)(_2263), 5u)];
              _2270 = _8[min((uint)((_2263 + 1)), 5u)];
              _2275 = _2267 * 0.5f;
              _2315 = dot(float3((_2265 * _2265), _2265, 1.0f), float3(mad((_8[min((uint)((_2263 + 2)), 5u)]), 0.5f, mad(_2270, -1.0f, _2275)), (_2270 - _2267), mad(_2270, 0.5f, _2275)));
            } else {
              if (!(_2246 >= _2254)) {
                _2315 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
              } else {
                _2284 = log2(ACESMinMaxData.z);
                if (!(_2246 < (_2284 * 0.3010300099849701f))) {
                  _2315 = (log2(ACESMinMaxData.w) * 0.3010300099849701f);
                } else {
                  _2292 = ((_2245 - _2253) * 0.9030900001525879f) / ((_2284 - _2253) * 0.3010300099849701f);
                  _2293 = int(_2292);
                  _2295 = _2292 - float((int)(_2293));
                  _2297 = _9[min((uint)(_2293), 5u)];
                  _2300 = _9[min((uint)((_2293 + 1)), 5u)];
                  _2305 = _2297 * 0.5f;
                  _2315 = dot(float3((_2295 * _2295), _2295, 1.0f), float3(mad((_9[min((uint)((_2293 + 2)), 5u)]), 0.5f, mad(_2300, -1.0f, _2305)), (_2300 - _2297), mad(_2300, 0.5f, _2305)));
                }
              }
            }
          } else {
            _2315 = (log2(ACESMinMaxData.y) * 0.3010300099849701f);
          }
          _2319 = ACESMinMaxData.w - ACESMinMaxData.y;
          _2320 = (exp2(_2167 * 3.321928024291992f) - ACESMinMaxData.y) / _2319;
          _2322 = (exp2(_2241 * 3.321928024291992f) - ACESMinMaxData.y) / _2319;
          _2324 = (exp2(_2315 * 3.321928024291992f) - ACESMinMaxData.y) / _2319;
          _2327 = mad(0.15618768334388733f, _2324, mad(0.13400420546531677f, _2322, (_2320 * 0.6624541878700256f)));
          _2330 = mad(0.053689517080783844f, _2324, mad(0.6740817427635193f, _2322, (_2320 * 0.2722287178039551f)));
          _2333 = mad(1.0103391408920288f, _2324, mad(0.00406073359772563f, _2322, (_2320 * -0.005574649665504694f)));
          _2346 = min(max(mad(-0.23642469942569733f, _2333, mad(-0.32480329275131226f, _2330, (_2327 * 1.6410233974456787f))), 0.0f), 1.0f);
          _2347 = min(max(mad(0.016756348311901093f, _2333, mad(1.6153316497802734f, _2330, (_2327 * -0.663662850856781f))), 0.0f), 1.0f);
          _2348 = min(max(mad(0.9883948564529419f, _2333, mad(-0.008284442126750946f, _2330, (_2327 * 0.011721894145011902f))), 0.0f), 1.0f);
          _2351 = mad(0.15618768334388733f, _2348, mad(0.13400420546531677f, _2347, (_2346 * 0.6624541878700256f)));
          _2354 = mad(0.053689517080783844f, _2348, mad(0.6740817427635193f, _2347, (_2346 * 0.2722287178039551f)));
          _2357 = mad(1.0103391408920288f, _2348, mad(0.00406073359772563f, _2347, (_2346 * -0.005574649665504694f)));
          _2379 = min(max((min(max(mad(-0.23642469942569733f, _2357, mad(-0.32480329275131226f, _2354, (_2351 * 1.6410233974456787f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
          _2380 = min(max((min(max(mad(0.016756348311901093f, _2357, mad(1.6153316497802734f, _2354, (_2351 * -0.663662850856781f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
          _2381 = min(max((min(max(mad(0.9883948564529419f, _2357, mad(-0.008284442126750946f, _2354, (_2351 * 0.011721894145011902f))), 0.0f), 65535.0f) * ACESMinMaxData.w), 0.0f), 65535.0f);
          if (!(OutputDevice == 6)) {
            _2394 = mad(_45, _2381, mad(_44, _2380, (_2379 * _43)));
            _2395 = mad(_48, _2381, mad(_47, _2380, (_2379 * _46)));
            _2396 = mad(_51, _2381, mad(_50, _2380, (_2379 * _49)));
          } else {
            _2394 = _2379;
            _2395 = _2380;
            _2396 = _2381;
          }
          _2406 = exp2(log2(_2394 * 9.999999747378752e-05f) * 0.1593017578125f);
          _2407 = exp2(log2(_2395 * 9.999999747378752e-05f) * 0.1593017578125f);
          _2408 = exp2(log2(_2396 * 9.999999747378752e-05f) * 0.1593017578125f);
          _2573 = exp2(log2((1.0f / ((_2406 * 18.6875f) + 1.0f)) * ((_2406 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          _2574 = exp2(log2((1.0f / ((_2407 * 18.6875f) + 1.0f)) * ((_2407 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          _2575 = exp2(log2((1.0f / ((_2408 * 18.6875f) + 1.0f)) * ((_2408 * 18.8515625f) + 0.8359375f)) * 78.84375f);
        } else {
          if (OutputDevice == 7) {
            _2453 = mad((WorkingColorSpace_ToAP1[0].z), _959, mad((WorkingColorSpace_ToAP1[0].y), _958, ((WorkingColorSpace_ToAP1[0].x) * _957)));
            _2456 = mad((WorkingColorSpace_ToAP1[1].z), _959, mad((WorkingColorSpace_ToAP1[1].y), _958, ((WorkingColorSpace_ToAP1[1].x) * _957)));
            _2459 = mad((WorkingColorSpace_ToAP1[2].z), _959, mad((WorkingColorSpace_ToAP1[2].y), _958, ((WorkingColorSpace_ToAP1[2].x) * _957)));
            _2478 = exp2(log2(mad(_45, _2459, mad(_44, _2456, (_2453 * _43))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2479 = exp2(log2(mad(_48, _2459, mad(_47, _2456, (_2453 * _46))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2480 = exp2(log2(mad(_51, _2459, mad(_50, _2456, (_2453 * _49))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2573 = exp2(log2((1.0f / ((_2478 * 18.6875f) + 1.0f)) * ((_2478 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            _2574 = exp2(log2((1.0f / ((_2479 * 18.6875f) + 1.0f)) * ((_2479 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            _2575 = exp2(log2((1.0f / ((_2480 * 18.6875f) + 1.0f)) * ((_2480 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          } else {
            if (!(OutputDevice == 8)) {
              if (OutputDevice == 9) {
                _2527 = mad((WorkingColorSpace_ToAP1[0].z), _947, mad((WorkingColorSpace_ToAP1[0].y), _946, ((WorkingColorSpace_ToAP1[0].x) * _945)));
                _2530 = mad((WorkingColorSpace_ToAP1[1].z), _947, mad((WorkingColorSpace_ToAP1[1].y), _946, ((WorkingColorSpace_ToAP1[1].x) * _945)));
                _2533 = mad((WorkingColorSpace_ToAP1[2].z), _947, mad((WorkingColorSpace_ToAP1[2].y), _946, ((WorkingColorSpace_ToAP1[2].x) * _945)));
                _2573 = mad(_45, _2533, mad(_44, _2530, (_2527 * _43)));
                _2574 = mad(_48, _2533, mad(_47, _2530, (_2527 * _46)));
                _2575 = mad(_51, _2533, mad(_50, _2530, (_2527 * _49)));
              } else {
                _2546 = mad((WorkingColorSpace_ToAP1[0].z), _973, mad((WorkingColorSpace_ToAP1[0].y), _972, ((WorkingColorSpace_ToAP1[0].x) * _971)));
                _2549 = mad((WorkingColorSpace_ToAP1[1].z), _973, mad((WorkingColorSpace_ToAP1[1].y), _972, ((WorkingColorSpace_ToAP1[1].x) * _971)));
                _2552 = mad((WorkingColorSpace_ToAP1[2].z), _973, mad((WorkingColorSpace_ToAP1[2].y), _972, ((WorkingColorSpace_ToAP1[2].x) * _971)));
                _2573 = exp2(log2(mad(_45, _2552, mad(_44, _2549, (_2546 * _43)))) * InverseGamma.z);
                _2574 = exp2(log2(mad(_48, _2552, mad(_47, _2549, (_2546 * _46)))) * InverseGamma.z);
                _2575 = exp2(log2(mad(_51, _2552, mad(_50, _2549, (_2546 * _49)))) * InverseGamma.z);
              }
            } else {
              _2573 = _957;
              _2574 = _958;
              _2575 = _959;
            }
          }
        }
      }
    }
  }
  SV_Target.x = (_2573 * 0.9523810148239136f);
  SV_Target.y = (_2574 * 0.9523810148239136f);
  SV_Target.z = (_2575 * 0.9523810148239136f);
  SV_Target.w = 0.0f;
  return SV_Target;
}
