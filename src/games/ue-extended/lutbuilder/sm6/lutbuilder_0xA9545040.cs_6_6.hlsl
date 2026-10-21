// SLAM TANK (UE 5.8.3.0)

#include "../lutbuilderoutput.hlsli"

struct FWorkingColorSpaceConstants {
  float4 FWorkingColorSpaceConstants_000[4];
  float4 FWorkingColorSpaceConstants_064[4];
  float4 FWorkingColorSpaceConstants_128[4];
  float4 FWorkingColorSpaceConstants_192[4];
  float4 FWorkingColorSpaceConstants_256[4];
  float4 FWorkingColorSpaceConstants_320[4];
  int FWorkingColorSpaceConstants_384;
};

Texture3D<float4> t0 : register(t0);

RWTexture3D<float4> u0 : register(u0);

cbuffer cb0 : register(b0) {
  float cb0_014x : packoffset(c014.x);
  float cb0_014y : packoffset(c014.y);
  float cb0_014z : packoffset(c014.z);
  float cb0_014w : packoffset(c014.w);
  float cb0_015x : packoffset(c015.x);
  float cb0_015y : packoffset(c015.y);
  float cb0_015z : packoffset(c015.z);
  float cb0_016x : packoffset(c016.x);
  float cb0_016y : packoffset(c016.y);
  float cb0_016z : packoffset(c016.z);
  float cb0_016w : packoffset(c016.w);
  float cb0_017x : packoffset(c017.x);
  float cb0_017y : packoffset(c017.y);
  float cb0_017z : packoffset(c017.z);
  float cb0_017w : packoffset(c017.w);
  float cb0_018x : packoffset(c018.x);
  float cb0_018y : packoffset(c018.y);
  float cb0_018z : packoffset(c018.z);
  float cb0_018w : packoffset(c018.w);
  float cb0_019x : packoffset(c019.x);
  float cb0_019y : packoffset(c019.y);
  float cb0_019z : packoffset(c019.z);
  float cb0_019w : packoffset(c019.w);
  float cb0_020x : packoffset(c020.x);
  float cb0_020y : packoffset(c020.y);
  float cb0_020z : packoffset(c020.z);
  float cb0_020w : packoffset(c020.w);
  float cb0_021x : packoffset(c021.x);
  float cb0_021y : packoffset(c021.y);
  float cb0_021z : packoffset(c021.z);
  float cb0_021w : packoffset(c021.w);
  float cb0_022x : packoffset(c022.x);
  float cb0_022y : packoffset(c022.y);
  float cb0_022z : packoffset(c022.z);
  float cb0_022w : packoffset(c022.w);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_023w : packoffset(c023.w);
  float cb0_024x : packoffset(c024.x);
  float cb0_024y : packoffset(c024.y);
  float cb0_024z : packoffset(c024.z);
  float cb0_024w : packoffset(c024.w);
  float cb0_025x : packoffset(c025.x);
  float cb0_025y : packoffset(c025.y);
  float cb0_025z : packoffset(c025.z);
  float cb0_025w : packoffset(c025.w);
  float cb0_026x : packoffset(c026.x);
  float cb0_026y : packoffset(c026.y);
  float cb0_026z : packoffset(c026.z);
  float cb0_026w : packoffset(c026.w);
  float cb0_027x : packoffset(c027.x);
  float cb0_027y : packoffset(c027.y);
  float cb0_027z : packoffset(c027.z);
  float cb0_027w : packoffset(c027.w);
  float cb0_028x : packoffset(c028.x);
  float cb0_028y : packoffset(c028.y);
  float cb0_028z : packoffset(c028.z);
  float cb0_028w : packoffset(c028.w);
  float cb0_029x : packoffset(c029.x);
  float cb0_029y : packoffset(c029.y);
  float cb0_029z : packoffset(c029.z);
  float cb0_029w : packoffset(c029.w);
  float cb0_030x : packoffset(c030.x);
  float cb0_030y : packoffset(c030.y);
  float cb0_030z : packoffset(c030.z);
  float cb0_030w : packoffset(c030.w);
  float cb0_031x : packoffset(c031.x);
  float cb0_031y : packoffset(c031.y);
  float cb0_031z : packoffset(c031.z);
  float cb0_031w : packoffset(c031.w);
  float cb0_032x : packoffset(c032.x);
  float cb0_032y : packoffset(c032.y);
  float cb0_032z : packoffset(c032.z);
  float cb0_032w : packoffset(c032.w);
  float cb0_033x : packoffset(c033.x);
  float cb0_033y : packoffset(c033.y);
  float cb0_033z : packoffset(c033.z);
  float cb0_033w : packoffset(c033.w);
  float cb0_034x : packoffset(c034.x);
  float cb0_034y : packoffset(c034.y);
  float cb0_034z : packoffset(c034.z);
  float cb0_034w : packoffset(c034.w);
  float cb0_035x : packoffset(c035.x);
  float cb0_035y : packoffset(c035.y);
  float cb0_035z : packoffset(c035.z);
  float cb0_035w : packoffset(c035.w);
  float cb0_036x : packoffset(c036.x);
  float cb0_036z : packoffset(c036.z);
  float cb0_036w : packoffset(c036.w);
  float cb0_037x : packoffset(c037.x);
  float cb0_037y : packoffset(c037.y);
  float cb0_037z : packoffset(c037.z);
  float cb0_037w : packoffset(c037.w);
  float cb0_038x : packoffset(c038.x);
  float cb0_038y : packoffset(c038.y);
  float cb0_038z : packoffset(c038.z);
  int cb0_038w : packoffset(c038.w);
  float cb0_039x : packoffset(c039.x);
  float cb0_039y : packoffset(c039.y);
  float cb0_039z : packoffset(c039.z);
  float cb0_039w : packoffset(c039.w);
  float cb0_040x : packoffset(c040.x);
  int cb0_040y : packoffset(c040.y);
  float cb0_041x : packoffset(c041.x);
  float cb0_041y : packoffset(c041.y);
  float cb0_041z : packoffset(c041.z);
  float cb0_042y : packoffset(c042.y);
  float cb0_042z : packoffset(c042.z);
  int cb0_042w : packoffset(c042.w);
  int cb0_043x : packoffset(c043.x);
  float cb0_043y : packoffset(c043.y);
  int cb0_043z : packoffset(c043.z);
  float cb0_044x : packoffset(c044.x);
};

cbuffer cb1 : register(b1) {
  FWorkingColorSpaceConstants WorkingColorSpace_000 : packoffset(c000.x);
};

SamplerState s0 : register(s0);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}
uint firstbithigh_msb(uint value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}

[numthreads(4, 4, 4)]
void main(
    uint3 SV_DispatchThreadID: SV_DispatchThreadID,
    uint3 SV_GroupID: SV_GroupID,
    uint3 SV_GroupThreadID: SV_GroupThreadID,
    uint SV_GroupIndex: SV_GroupIndex) {
  float _16;
  float _17;
  float _18;
  float _38;
  float _39;
  float _40;
  float _41;
  float _42;
  float _43;
  float _44;
  float _45;
  float _46;
  float _103;
  float _104;
  float _105;
  float _164;
  float _371;
  float _372;
  float _373;
  float _880;
  float _913;
  float _927;
  float _991;
  float _1245;
  float _1246;
  float _1247;
  float _1262;
  float _1273;
  float _1370;
  float _1403;
  float _1417;
  float _1481;
  float _1735;
  float _1736;
  float _1737;
  float _1842;
  float _1875;
  float _1889;
  float _1953;
  float _2207;
  float _2208;
  float _2209;
  float _2226;
  float _2237;
  float _2248;
  float _2259;
  float _2260;
  float _2261;
  float _2446;
  float _2479;
  float _2493;
  float _2557;
  float _2811;
  float _2812;
  float _2813;
  float _2830;
  float _2841;
  float _2852;
  float _2863;
  float _2864;
  float _2865;
  float _2967;
  float _2968;
  float _2969;
  float _3197;
  float _3230;
  float _3244;
  float _3308;
  float _3569;
  float _3602;
  float _3616;
  float _3680;
  float _3934;
  float _3935;
  float _3936;
  float _3948;
  float _3949;
  float _3950;
  bool _27;
  float _56;
  float _57;
  float _58;
  bool _143;
  float _147;
  float _178;
  float _185;
  float _188;
  float _193;
  float _194;
  float _196;
  bool _197;
  float _206;
  float _208;
  float _215;
  float _217;
  float _219;
  float _220;
  float _223;
  float _226;
  float _231;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _247;
  float _248;
  float _249;
  float _252;
  float _271;
  float _272;
  float _273;
  float _274;
  float _275;
  float _276;
  float _277;
  float _278;
  float _279;
  float _282;
  float _285;
  float _288;
  float _291;
  float _294;
  float _297;
  float _300;
  float _303;
  float _306;
  float _309;
  float _312;
  float _315;
  float _318;
  float _321;
  float _324;
  float _327;
  float _330;
  float _333;
  float _388;
  float _391;
  float _394;
  float _395;
  float _399;
  float _400;
  float _401;
  float _413;
  float _429;
  float _430;
  float _431;
  float _432;
  float _446;
  float _460;
  float _474;
  float _488;
  float _502;
  float _506;
  float _507;
  float _508;
  float _566;
  float _570;
  float _571;
  float _580;
  float _589;
  float _598;
  float _607;
  float _616;
  float _679;
  float _683;
  float _692;
  float _701;
  float _710;
  float _719;
  float _728;
  float _786;
  float _797;
  float _799;
  float _801;
  float _820;
  float _821;
  float _822;
  float _825;
  float _828;
  float _831;
  float _835;
  float _840;
  float _853;
  float _854;
  float _855;
  float _856;
  float _860;
  float _871;
  float _881;
  float _882;
  float _883;
  float _884;
  float _891;
  float _894;
  float _896;
  bool _899;
  bool _900;
  bool _901;
  bool _902;
  float _918;
  float _931;
  float _935;
  float _941;
  float _951;
  float _952;
  float _953;
  float _954;
  float _968;
  float _971;
  float _973;
  float _982;
  float _994;
  float _996;
  float _1000;
  float _1001;
  float _1002;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  float _1011;
  float _1012;
  float _1013;
  float _1014;
  float _1033;
  float _1035;
  float _1060;
  float _1061;
  float _1062;
  float _1069;
  float _1073;
  float _1074;
  float _1075;
  bool _1076;
  float _1080;
  float _1081;
  float _1082;
  float _1101;
  float _1102;
  float _1103;
  float _1104;
  float _1124;
  float _1125;
  float _1126;
  float _1142;
  float _1143;
  float _1144;
  float _1166;
  float _1167;
  float _1168;
  float _1194;
  float _1195;
  float _1196;
  float _1217;
  float _1218;
  float _1219;
  float _1228;
  float _1231;
  float _1234;
  float _1310;
  float _1311;
  float _1312;
  float _1315;
  float _1318;
  float _1321;
  float _1325;
  float _1330;
  float _1343;
  float _1344;
  float _1345;
  float _1346;
  float _1350;
  float _1361;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  float _1381;
  float _1384;
  float _1386;
  bool _1389;
  bool _1390;
  bool _1391;
  bool _1392;
  float _1408;
  float _1421;
  float _1425;
  float _1431;
  float _1441;
  float _1442;
  float _1443;
  float _1444;
  float _1458;
  float _1461;
  float _1463;
  float _1472;
  float _1484;
  float _1486;
  float _1490;
  float _1491;
  float _1492;
  float _1496;
  float _1497;
  float _1498;
  float _1499;
  float _1501;
  float _1502;
  float _1503;
  float _1504;
  float _1523;
  float _1525;
  float _1550;
  float _1551;
  float _1552;
  float _1559;
  float _1563;
  float _1564;
  float _1565;
  bool _1566;
  float _1570;
  float _1571;
  float _1572;
  float _1591;
  float _1592;
  float _1593;
  float _1594;
  float _1614;
  float _1615;
  float _1616;
  float _1632;
  float _1633;
  float _1634;
  float _1656;
  float _1657;
  float _1658;
  float _1684;
  float _1685;
  float _1686;
  float _1707;
  float _1708;
  float _1709;
  float _1718;
  float _1721;
  float _1724;
  float _1782;
  float _1783;
  float _1784;
  float _1787;
  float _1790;
  float _1793;
  float _1797;
  float _1802;
  float _1815;
  float _1816;
  float _1817;
  float _1818;
  float _1822;
  float _1833;
  float _1843;
  float _1844;
  float _1845;
  float _1846;
  float _1853;
  float _1856;
  float _1858;
  bool _1861;
  bool _1862;
  bool _1863;
  bool _1864;
  float _1880;
  float _1893;
  float _1897;
  float _1903;
  float _1913;
  float _1914;
  float _1915;
  float _1916;
  float _1930;
  float _1933;
  float _1935;
  float _1944;
  float _1956;
  float _1958;
  float _1962;
  float _1963;
  float _1964;
  float _1968;
  float _1969;
  float _1970;
  float _1971;
  float _1973;
  float _1974;
  float _1975;
  float _1976;
  float _1995;
  float _1997;
  float _2022;
  float _2023;
  float _2024;
  float _2031;
  float _2035;
  float _2036;
  float _2037;
  bool _2038;
  float _2042;
  float _2043;
  float _2044;
  float _2063;
  float _2064;
  float _2065;
  float _2066;
  float _2086;
  float _2087;
  float _2088;
  float _2104;
  float _2105;
  float _2106;
  float _2128;
  float _2129;
  float _2130;
  float _2156;
  float _2157;
  float _2158;
  float _2179;
  float _2180;
  float _2181;
  float _2190;
  float _2193;
  float _2196;
  float _2280;
  float _2281;
  float _2282;
  float _2314;
  float _2315;
  float _2316;
  float4 _2322;
  float _2336;
  float _2337;
  float _2338;
  float _2386;
  float _2387;
  float _2388;
  float _2391;
  float _2394;
  float _2397;
  float _2401;
  float _2406;
  float _2419;
  float _2420;
  float _2421;
  float _2422;
  float _2426;
  float _2437;
  float _2447;
  float _2448;
  float _2449;
  float _2450;
  float _2457;
  float _2460;
  float _2462;
  bool _2465;
  bool _2466;
  bool _2467;
  bool _2468;
  float _2484;
  float _2497;
  float _2501;
  float _2507;
  float _2517;
  float _2518;
  float _2519;
  float _2520;
  float _2534;
  float _2537;
  float _2539;
  float _2548;
  float _2560;
  float _2562;
  float _2566;
  float _2567;
  float _2568;
  float _2572;
  float _2573;
  float _2574;
  float _2575;
  float _2577;
  float _2578;
  float _2579;
  float _2580;
  float _2599;
  float _2601;
  float _2626;
  float _2627;
  float _2628;
  float _2635;
  float _2639;
  float _2640;
  float _2641;
  bool _2642;
  float _2646;
  float _2647;
  float _2648;
  float _2667;
  float _2668;
  float _2669;
  float _2670;
  float _2690;
  float _2691;
  float _2692;
  float _2708;
  float _2709;
  float _2710;
  float _2732;
  float _2733;
  float _2734;
  float _2760;
  float _2761;
  float _2762;
  float _2783;
  float _2784;
  float _2785;
  float _2794;
  float _2797;
  float _2800;
  float _2884;
  float _2885;
  float _2886;
  float _2918;
  float _2919;
  float _2920;
  float4 _2926;
  float _2936;
  float _2937;
  float _2938;
  float _3006;
  float _3007;
  float _3008;
  float _3015;
  float _3016;
  float _3017;
  float _3020;
  float _3023;
  float _3026;
  float _3045;
  float _3046;
  float _3047;
  float _3108;
  float _3109;
  float _3110;
  float _3136;
  float _3137;
  float _3138;
  float _3141;
  float _3144;
  float _3147;
  float _3151;
  float _3156;
  float _3169;
  float _3170;
  float _3171;
  float _3172;
  float _3176;
  float _3187;
  bool _3188;
  float _3198;
  float _3199;
  float _3200;
  float _3201;
  float _3208;
  float _3211;
  float _3213;
  bool _3216;
  bool _3217;
  bool _3218;
  bool _3219;
  float _3235;
  float _3248;
  float _3252;
  float _3258;
  float _3268;
  float _3269;
  float _3270;
  float _3271;
  float _3285;
  float _3288;
  float _3290;
  float _3299;
  float _3311;
  float _3313;
  float _3317;
  float _3318;
  float _3319;
  float _3323;
  float _3324;
  float _3325;
  float _3326;
  float _3328;
  float _3329;
  float _3330;
  float _3331;
  float _3350;
  float _3352;
  float _3377;
  float _3378;
  float _3379;
  float _3386;
  float _3390;
  float _3391;
  float _3392;
  bool _3393;
  float _3397;
  float _3398;
  float _3399;
  float _3418;
  float _3419;
  float _3420;
  float _3421;
  float _3441;
  float _3442;
  float _3443;
  float _3459;
  float _3460;
  float _3461;
  float _3483;
  float _3484;
  float _3485;
  float _3511;
  float _3512;
  float _3513;
  float _3534;
  float _3535;
  float _3536;
  float _3545;
  float _3548;
  float _3551;
  float _3570;
  float _3571;
  float _3572;
  float _3573;
  float _3580;
  float _3583;
  float _3585;
  bool _3588;
  bool _3589;
  bool _3590;
  bool _3591;
  float _3607;
  float _3620;
  float _3624;
  float _3630;
  float _3640;
  float _3641;
  float _3642;
  float _3643;
  float _3657;
  float _3660;
  float _3662;
  float _3671;
  float _3683;
  float _3685;
  float _3689;
  float _3690;
  float _3691;
  float _3695;
  float _3696;
  float _3697;
  float _3698;
  float _3700;
  float _3701;
  float _3702;
  float _3703;
  float _3722;
  float _3724;
  float _3749;
  float _3750;
  float _3751;
  float _3758;
  float _3762;
  float _3763;
  float _3764;
  bool _3765;
  float _3769;
  float _3770;
  float _3771;
  float _3790;
  float _3791;
  float _3792;
  float _3793;
  float _3813;
  float _3814;
  float _3815;
  float _3831;
  float _3832;
  float _3833;
  float _3855;
  float _3856;
  float _3857;
  float _3883;
  float _3884;
  float _3885;
  float _3906;
  float _3907;
  float _3908;
  float _3917;
  float _3920;
  float _3923;
  _16 = cb0_044x * ((float)((uint)SV_DispatchThreadID.x));
  _17 = cb0_044x * ((float)((uint)SV_DispatchThreadID.y));
  _18 = cb0_044x * ((float)((uint)SV_DispatchThreadID.z));
  if (!(cb0_043x == 1)) {
    if (!(cb0_043x == 2)) {
      if (!(cb0_043x == 3)) {
        _27 = (cb0_043x == 4);
        _38 = select(_27, 1.0f, 1.705051064491272f);
        _39 = select(_27, 0.0f, -0.6217921376228333f);
        _40 = select(_27, 0.0f, -0.0832589864730835f);
        _41 = select(_27, 0.0f, -0.13025647401809692f);
        _42 = select(_27, 1.0f, 1.140804648399353f);
        _43 = select(_27, 0.0f, -0.010548308491706848f);
        _44 = select(_27, 0.0f, -0.024003351107239723f);
        _45 = select(_27, 0.0f, -0.1289689838886261f);
        _46 = select(_27, 1.0f, 1.1529725790023804f);
      } else {
        _38 = 0.6954522132873535f;
        _39 = 0.14067870378494263f;
        _40 = 0.16386906802654266f;
        _41 = 0.044794563204050064f;
        _42 = 0.8596711158752441f;
        _43 = 0.0955343171954155f;
        _44 = -0.005525882821530104f;
        _45 = 0.004025210160762072f;
        _46 = 1.0015007257461548f;
      }
    } else {
      _38 = 1.0258246660232544f;
      _39 = -0.020053181797266006f;
      _40 = -0.005771636962890625f;
      _41 = -0.002234415616840124f;
      _42 = 1.0045864582061768f;
      _43 = -0.002352118492126465f;
      _44 = -0.005013350863009691f;
      _45 = -0.025290070101618767f;
      _46 = 1.0303035974502563f;
    }
  } else {
    _38 = 1.3792141675949097f;
    _39 = -0.30886411666870117f;
    _40 = -0.0703500509262085f;
    _41 = -0.06933490186929703f;
    _42 = 1.08229660987854f;
    _43 = -0.012961871922016144f;
    _44 = -0.0021590073592960835f;
    _45 = -0.0454593189060688f;
    _46 = 1.0476183891296387f;
  }
  [branch]
  if (cb0_043z == 0) {
    _103 = ((exp2((_16 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
    _104 = ((exp2((_17 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
    _105 = ((exp2((_18 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
  } else {
    _56 = (pow(_16, 0.012683313339948654f));
    _57 = (pow(_17, 0.012683313339948654f));
    _58 = (pow(_18, 0.012683313339948654f));
    _103 = (exp2(log2(max(0.0f, (_56 + -0.8359375f)) / (18.8515625f - (_56 * 18.6875f))) * 6.277394771575928f) * 100.0f);
    _104 = (exp2(log2(max(0.0f, (_57 + -0.8359375f)) / (18.8515625f - (_57 * 18.6875f))) * 6.277394771575928f) * 100.0f);
    _105 = (exp2(log2(max(0.0f, (_58 + -0.8359375f)) / (18.8515625f - (_58 * 18.6875f))) * 6.277394771575928f) * 100.0f);
  }
  [branch]
  if ((abs(cb0_036w + -6500.0f) > 9.99999993922529e-09f) | (abs(cb0_037x) > 9.99999993922529e-09f)) {
    _143 = (cb0_040y != 0);
    _147 = 0.9994439482688904f / cb0_036w;
    if (!((cb0_036w * 1.0005563497543335f) <= 7000.0f)) {
      _164 = (((((1901800.0f - (_147 * 2006400000.0f)) * _147) + 247.47999572753906f) * _147) + 0.23703999817371368f);
    } else {
      _164 = (((((2967800.0f - (_147 * 4607000064.0f)) * _147) + 99.11000061035156f) * _147) + 0.24406300485134125f);
    }
    _178 = ((((cb0_036w * 1.2864121856637212e-07f) + 0.00015411825734190643f) * cb0_036w) + 0.8601177334785461f) / ((((cb0_036w * 7.081451371959702e-07f) + 0.0008424202096648514f) * cb0_036w) + 1.0f);
    _185 = cb0_036w * cb0_036w;
    _188 = ((((cb0_036w * 4.204816761443908e-08f) + 4.228062607580796e-05f) * cb0_036w) + 0.31739872694015503f) / ((1.0f - (cb0_036w * 2.8974181986995973e-05f)) + (_185 * 1.6145605741257896e-07f));
    _193 = ((_178 * 2.0f) + 4.0f) - (_188 * 8.0f);
    _194 = (_178 * 3.0f) / _193;
    _196 = (_188 * 2.0f) / _193;
    _197 = (cb0_036w < 4000.0f);
    _206 = ((cb0_036w + 1189.6199951171875f) * cb0_036w) + 1412139.875f;
    _208 = ((-1137581184.0f - (cb0_036w * 1916156.25f)) - (_185 * 1.5317699909210205f)) / (_206 * _206);
    _215 = (6193636.0f - (cb0_036w * 179.45599365234375f)) + _185;
    _217 = ((1974715392.0f - (cb0_036w * 705674.0f)) - (_185 * 308.60699462890625f)) / (_215 * _215);
    _219 = rsqrt(dot(float2(_208, _217), float2(_208, _217)));
    _220 = cb0_037x * 0.05000000074505806f;
    _223 = ((_220 * _217) * _219) + _178;
    _226 = _188 - ((_220 * _208) * _219);
    _231 = (4.0f - (_226 * 8.0f)) + (_223 * 2.0f);
    _237 = (((_223 * 3.0f) / _231) - _194) + select(_197, _194, _164);
    _238 = (((_226 * 2.0f) / _231) - _196) + select(_197, _196, (((_164 * 2.869999885559082f) + -0.2750000059604645f) - ((_164 * _164) * 3.0f)));
    _239 = select(_143, _237, 0.3127000033855438f);
    _240 = select(_143, _238, 0.32899999618530273f);
    _241 = select(_143, 0.3127000033855438f, _237);
    _242 = select(_143, 0.32899999618530273f, _238);
    _243 = max(_240, 1.000000013351432e-10f);
    _244 = _239 / _243;
    _247 = ((1.0f - _239) - _240) / _243;
    _248 = max(_242, 1.000000013351432e-10f);
    _249 = _241 / _248;
    _252 = ((1.0f - _241) - _242) / _248;
    _271 = mad(-0.16140000522136688f, _252, ((_249 * 0.8950999975204468f) + 0.266400009393692f)) / mad(-0.16140000522136688f, _247, ((_244 * 0.8950999975204468f) + 0.266400009393692f));
    _272 = mad(0.03669999912381172f, _252, (1.7135000228881836f - (_249 * 0.7501999735832214f))) / mad(0.03669999912381172f, _247, (1.7135000228881836f - (_244 * 0.7501999735832214f)));
    _273 = mad(1.0296000242233276f, _252, ((_249 * 0.03889999911189079f) + -0.06849999725818634f)) / mad(1.0296000242233276f, _247, ((_244 * 0.03889999911189079f) + -0.06849999725818634f));
    _274 = mad(_272, -0.7501999735832214f, 0.0f);
    _275 = mad(_272, 1.7135000228881836f, 0.0f);
    _276 = mad(_272, 0.03669999912381172f, -0.0f);
    _277 = mad(_273, 0.03889999911189079f, 0.0f);
    _278 = mad(_273, -0.06849999725818634f, 0.0f);
    _279 = mad(_273, 1.0296000242233276f, 0.0f);
    _282 = mad(0.1599626988172531f, _277, mad(-0.1470542997121811f, _274, (_271 * 0.883457362651825f)));
    _285 = mad(0.1599626988172531f, _278, mad(-0.1470542997121811f, _275, (_271 * 0.26293492317199707f)));
    _288 = mad(0.1599626988172531f, _279, mad(-0.1470542997121811f, _276, (_271 * -0.15930065512657166f)));
    _291 = mad(0.04929120093584061f, _277, mad(0.5183603167533875f, _274, (_271 * 0.38695648312568665f)));
    _294 = mad(0.04929120093584061f, _278, mad(0.5183603167533875f, _275, (_271 * 0.11516613513231277f)));
    _297 = mad(0.04929120093584061f, _279, mad(0.5183603167533875f, _276, (_271 * -0.0697740763425827f)));
    _300 = mad(0.9684867262840271f, _277, mad(0.04004279896616936f, _274, (_271 * -0.007634039502590895f)));
    _303 = mad(0.9684867262840271f, _278, mad(0.04004279896616936f, _275, (_271 * -0.0022720457054674625f)));
    _306 = mad(0.9684867262840271f, _279, mad(0.04004279896616936f, _276, (_271 * 0.0013765322510153055f)));
    _309 = mad(_288, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].x), mad(_285, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].x), (_282 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].x))));
    _312 = mad(_288, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].y), mad(_285, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].y), (_282 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].y))));
    _315 = mad(_288, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].z), mad(_285, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].z), (_282 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].z))));
    _318 = mad(_297, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].x), mad(_294, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].x), (_291 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].x))));
    _321 = mad(_297, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].y), mad(_294, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].y), (_291 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].y))));
    _324 = mad(_297, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].z), mad(_294, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].z), (_291 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].z))));
    _327 = mad(_306, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].x), mad(_303, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].x), (_300 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].x))));
    _330 = mad(_306, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].y), mad(_303, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].y), (_300 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].y))));
    _333 = mad(_306, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].z), mad(_303, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].z), (_300 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].z))));
    _371 = mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].z), _333, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].y), _324, (_315 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].x)))), _105, mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].z), _330, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].y), _321, (_312 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].x)))), _104, (mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].z), _327, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].y), _318, (_309 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].x)))) * _103)));
    _372 = mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].z), _333, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].y), _324, (_315 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].x)))), _105, mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].z), _330, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].y), _321, (_312 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].x)))), _104, (mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].z), _327, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].y), _318, (_309 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].x)))) * _103)));
    _373 = mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].z), _333, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].y), _324, (_315 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].x)))), _105, mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].z), _330, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].y), _321, (_312 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].x)))), _104, (mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].z), _327, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].y), _318, (_309 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].x)))) * _103)));
  } else {
    _371 = _103;
    _372 = _104;
    _373 = _105;
  }
  _388 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _373, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _372, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _371)));
  _391 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _373, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _372, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _371)));
  _394 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _373, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _372, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _371)));
  _395 = dot(float3(_388, _391, _394), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _399 = (_388 / _395) + -1.0f;
  _400 = (_391 / _395) + -1.0f;
  _401 = (_394 / _395) + -1.0f;

  // _413 = (1.0f - exp2(((_395 * _395) * -4.0f) * cb0_038y)) * (1.0f - exp2(dot(float3(_399, _400, _401), float3(_399, _400, _401)) * -4.0f));
  _413 = (1.0f - exp2(((_395 * _395) * -4.0f) * 0.f)) * (1.0f - exp2(dot(float3(_399, _400, _401), float3(_399, _400, _401)) * -4.0f));

  _429 = ((mad(-0.06368321925401688f, _394, mad(-0.3292922377586365f, _391, (_388 * 1.3704125881195068f))) - _388) * _413) + _388;
  _430 = ((mad(-0.010861365124583244f, _394, mad(1.0970927476882935f, _391, (_388 * -0.08343357592821121f))) - _391) * _413) + _391;
  _431 = ((mad(1.2036951780319214f, _394, mad(-0.09862580895423889f, _391, (_388 * -0.02579331398010254f))) - _394) * _413) + _394;
  _432 = dot(float3(_429, _430, _431), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _446 = cb0_020w + cb0_025w;
  _460 = cb0_019w * cb0_024w;
  _474 = cb0_018w * cb0_023w;
  _488 = cb0_017w * cb0_022w;
  _502 = cb0_016w * cb0_021w;
  _506 = _429 - _432;
  _507 = _430 - _432;
  _508 = _431 - _432;
  _566 = saturate(_432 / cb0_037y);
  _570 = (_566 * _566) * (3.0f - (_566 * 2.0f));
  _571 = 1.0f - _570;
  _580 = cb0_020w + cb0_035w;
  _589 = cb0_019w * cb0_034w;
  _598 = cb0_018w * cb0_033w;
  _607 = cb0_017w * cb0_032w;
  _616 = cb0_016w * cb0_031w;
  _679 = saturate((_432 - cb0_037z) / (cb0_037w - cb0_037z));
  _683 = (_679 * _679) * (3.0f - (_679 * 2.0f));
  _692 = cb0_020w + cb0_030w;
  _701 = cb0_019w * cb0_029w;
  _710 = cb0_018w * cb0_028w;
  _719 = cb0_017w * cb0_027w;
  _728 = cb0_016w * cb0_026w;
  _786 = _570 - _683;
  _797 = ((_683 * (((cb0_020x + cb0_035x) + _580) + (((cb0_019x * cb0_034x) * _589) * exp2(log2(exp2(((cb0_017x * cb0_032x) * _607) * log2(max(0.0f, ((((cb0_016x * cb0_031x) * _616) * _506) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018x * cb0_033x) * _598)))))) + (_571 * (((cb0_020x + cb0_025x) + _446) + (((cb0_019x * cb0_024x) * _460) * exp2(log2(exp2(((cb0_017x * cb0_022x) * _488) * log2(max(0.0f, ((((cb0_016x * cb0_021x) * _502) * _506) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018x * cb0_023x) * _474))))))) + ((((cb0_020x + cb0_030x) + _692) + (((cb0_019x * cb0_029x) * _701) * exp2(log2(exp2(((cb0_017x * cb0_027x) * _719) * log2(max(0.0f, ((((cb0_016x * cb0_026x) * _728) * _506) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018x * cb0_028x) * _710))))) * _786);
  _799 = ((_683 * (((cb0_020y + cb0_035y) + _580) + (((cb0_019y * cb0_034y) * _589) * exp2(log2(exp2(((cb0_017y * cb0_032y) * _607) * log2(max(0.0f, ((((cb0_016y * cb0_031y) * _616) * _507) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018y * cb0_033y) * _598)))))) + (_571 * (((cb0_020y + cb0_025y) + _446) + (((cb0_019y * cb0_024y) * _460) * exp2(log2(exp2(((cb0_017y * cb0_022y) * _488) * log2(max(0.0f, ((((cb0_016y * cb0_021y) * _502) * _507) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018y * cb0_023y) * _474))))))) + ((((cb0_020y + cb0_030y) + _692) + (((cb0_019y * cb0_029y) * _701) * exp2(log2(exp2(((cb0_017y * cb0_027y) * _719) * log2(max(0.0f, ((((cb0_016y * cb0_026y) * _728) * _507) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018y * cb0_028y) * _710))))) * _786);
  _801 = ((_683 * (((cb0_020z + cb0_035z) + _580) + (((cb0_019z * cb0_034z) * _589) * exp2(log2(exp2(((cb0_017z * cb0_032z) * _607) * log2(max(0.0f, ((((cb0_016z * cb0_031z) * _616) * _508) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018z * cb0_033z) * _598)))))) + (_571 * (((cb0_020z + cb0_025z) + _446) + (((cb0_019z * cb0_024z) * _460) * exp2(log2(exp2(((cb0_017z * cb0_022z) * _488) * log2(max(0.0f, ((((cb0_016z * cb0_021z) * _502) * _508) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018z * cb0_023z) * _474))))))) + ((((cb0_020z + cb0_030z) + _692) + (((cb0_019z * cb0_029z) * _701) * exp2(log2(exp2(((cb0_017z * cb0_027z) * _719) * log2(max(0.0f, ((((cb0_016z * cb0_026z) * _728) * _508) + _432)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018z * cb0_028z) * _710))))) * _786);

  UECbufferConfig cb_config = CreateCbufferConfig();
  cb_config.ue_filmblackclip = cb0_039w;
  cb_config.ue_filmtoe = cb0_039y;
  cb_config.ue_filmshoulder = cb0_039z;
  cb_config.ue_filmslope = cb0_039x;
  cb_config.ue_filmwhiteclip = cb0_040x;
  cb_config.ue_tonecurveammount = cb0_038z;
  cb_config.ue_mappingpolynomial = float3(cb0_041x, cb0_041y, cb0_041z);
  cb_config.ue_overlaycolor = float4(cb0_014x, cb0_014y, cb0_014z, cb0_014w);
  cb_config.ue_bluecorrection = cb0_038x;
  cb_config.ue_colorscale = float3(cb0_015x, cb0_015y, cb0_015z);

  float4 output = ProcessLutbuilder(float3(_797, _799, _801), cb_config, u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))], cb0_038w);
  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = output;
  return;

  [branch]
  if (cb0_042w == 0) {
    _820 = ((mad(0.061360642313957214f, _801, mad(-4.540197551250458e-09f, _799, (_797 * 0.9386394023895264f))) - _797) * cb0_038x) + _797;
    _821 = ((mad(0.169205904006958f, _801, mad(0.8307942152023315f, _799, (_797 * 6.775371730327606e-08f))) - _799) * cb0_038x) + _799;
    _822 = (mad(-2.3283064365386963e-10f, _799, (_797 * -9.313225746154785e-10f)) * cb0_038x) + _801;
    _825 = mad(0.16386905312538147f, _822, mad(0.14067868888378143f, _821, (_820 * 0.6954522132873535f)));
    _828 = mad(0.0955343246459961f, _822, mad(0.8596711158752441f, _821, (_820 * 0.044794581830501556f)));
    _831 = mad(1.0015007257461548f, _822, mad(0.004025210160762072f, _821, (_820 * -0.005525882821530104f)));
    _835 = max(max(_825, _828), _831);
    _840 = (max(_835, 1.000000013351432e-10f) - max(min(min(_825, _828), _831), 1.000000013351432e-10f)) / max(_835, 0.009999999776482582f);
    _853 = ((_828 + _825) + _831) + (sqrt((((_831 - _828) * _831) + ((_828 - _825) * _828)) + ((_825 - _831) * _825)) * 1.75f);
    _854 = _853 * 0.3333333432674408f;
    _855 = _840 + -0.4000000059604645f;
    _856 = _855 * 5.0f;
    _860 = max((1.0f - abs(_855 * 2.5f)), 0.0f);
    _871 = ((float((int)(((int)(uint)((int)(_856 > 0.0f))) - ((int)(uint)((int)(_856 < 0.0f))))) * (1.0f - (_860 * _860))) + 1.0f) * 0.02500000037252903f;
    if (!(_854 <= 0.0533333346247673f)) {
      if (!(_854 >= 0.1599999964237213f)) {
        _880 = (((0.23999999463558197f / _853) + -0.5f) * _871);
      } else {
        _880 = 0.0f;
      }
    } else {
      _880 = _871;
    }
    _881 = _880 + 1.0f;
    _882 = _881 * _825;
    _883 = _881 * _828;
    _884 = _881 * _831;
    if (!((_882 == _883) && (_883 == _884))) {
      _891 = ((_882 * 2.0f) - _883) - _884;
      _894 = ((_828 - _831) * 1.7320507764816284f) * _881;
      _896 = atan(_894 / _891);
      _899 = (_891 < 0.0f);
      _900 = (_891 == 0.0f);
      _901 = (_894 >= 0.0f);
      _902 = (_894 < 0.0f);
      _913 = select((_901 && _900), 90.0f, select((_902 && _900), -90.0f, (select((_902 && _899), (_896 + -3.1415927410125732f), select((_901 && _899), (_896 + 3.1415927410125732f), _896)) * 57.2957763671875f)));
    } else {
      _913 = 0.0f;
    }
    _918 = min(max(select((_913 < 0.0f), (_913 + 360.0f), _913), 0.0f), 360.0f);
    if (_918 < -180.0f) {
      _927 = (_918 + 360.0f);
    } else {
      if (_918 > 180.0f) {
        _927 = (_918 + -360.0f);
      } else {
        _927 = _918;
      }
    }
    _931 = saturate(1.0f - abs(_927 * 0.014814814552664757f));
    _935 = (_931 * _931) * (3.0f - (_931 * 2.0f));
    _941 = ((_935 * _935) * ((_840 * 0.18000000715255737f) * (0.029999999329447746f - _882))) + _882;
    _951 = max(0.0f, mad(-0.21492856740951538f, _884, mad(-0.2365107536315918f, _883, (_941 * 1.4514392614364624f))));
    _952 = max(0.0f, mad(-0.09967592358589172f, _884, mad(1.17622971534729f, _883, (_941 * -0.07655377686023712f))));
    _953 = max(0.0f, mad(0.9977163076400757f, _884, mad(-0.006032449658960104f, _883, (_941 * 0.008316148072481155f))));
    _954 = dot(float3(_951, _952, _953), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
    _968 = (cb0_039w + 1.0f) - cb0_039y;
    _971 = cb0_040x + 1.0f;
    _973 = _971 - cb0_039z;
    if (cb0_039y > 0.800000011920929f) {
      _991 = (((0.8199999928474426f - cb0_039y) / cb0_039x) + -0.7447274923324585f);
    } else {
      _982 = (cb0_039w + 0.18000000715255737f) / _968;
      _991 = (-0.7447274923324585f - ((log2(_982 / (2.0f - _982)) * 0.3465735912322998f) * (_968 / cb0_039x)));
    }
    _994 = ((1.0f - cb0_039y) / cb0_039x) - _991;
    _996 = (cb0_039z / cb0_039x) - _994;
    _1000 = log2(lerp(_954, _951, 0.9599999785423279f)) * 0.3010300099849701f;
    _1001 = log2(lerp(_954, _952, 0.9599999785423279f)) * 0.3010300099849701f;
    _1002 = log2(lerp(_954, _953, 0.9599999785423279f)) * 0.3010300099849701f;
    _1006 = cb0_039x * (_1000 + _994);
    _1007 = cb0_039x * (_1001 + _994);
    _1008 = cb0_039x * (_1002 + _994);
    _1009 = _968 * 2.0f;
    _1011 = (cb0_039x * -2.0f) / _968;
    _1012 = _1000 - _991;
    _1013 = _1001 - _991;
    _1014 = _1002 - _991;
    _1033 = _973 * 2.0f;
    _1035 = (cb0_039x * 2.0f) / _973;
    _1060 = select((_1000 < _991), ((_1009 / (exp2((_1012 * 1.4426950216293335f) * _1011) + 1.0f)) - cb0_039w), _1006);
    _1061 = select((_1001 < _991), ((_1009 / (exp2((_1013 * 1.4426950216293335f) * _1011) + 1.0f)) - cb0_039w), _1007);
    _1062 = select((_1002 < _991), ((_1009 / (exp2((_1014 * 1.4426950216293335f) * _1011) + 1.0f)) - cb0_039w), _1008);
    _1069 = _996 - _991;
    _1073 = saturate(_1012 / _1069);
    _1074 = saturate(_1013 / _1069);
    _1075 = saturate(_1014 / _1069);
    _1076 = (_996 < _991);
    _1080 = select(_1076, (1.0f - _1073), _1073);
    _1081 = select(_1076, (1.0f - _1074), _1074);
    _1082 = select(_1076, (1.0f - _1075), _1075);
    _1101 = (((_1080 * _1080) * (select((_1000 > _996), (_971 - (_1033 / (exp2(((_1000 - _996) * 1.4426950216293335f) * _1035) + 1.0f))), _1006) - _1060)) * (3.0f - (_1080 * 2.0f))) + _1060;
    _1102 = (((_1081 * _1081) * (select((_1001 > _996), (_971 - (_1033 / (exp2(((_1001 - _996) * 1.4426950216293335f) * _1035) + 1.0f))), _1007) - _1061)) * (3.0f - (_1081 * 2.0f))) + _1061;
    _1103 = (((_1082 * _1082) * (select((_1002 > _996), (_971 - (_1033 / (exp2(((_1002 - _996) * 1.4426950216293335f) * _1035) + 1.0f))), _1008) - _1062)) * (3.0f - (_1082 * 2.0f))) + _1062;
    _1104 = dot(float3(_1101, _1102, _1103), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
    _1124 = (cb0_038z * (max(0.0f, (lerp(_1104, _1101, 0.9300000071525574f))) - _820)) + _820;
    _1125 = (cb0_038z * (max(0.0f, (lerp(_1104, _1102, 0.9300000071525574f))) - _821)) + _821;
    _1126 = (cb0_038z * (max(0.0f, (lerp(_1104, _1103, 0.9300000071525574f))) - _822)) + _822;
    _1142 = ((mad(-0.06537103652954102f, _1126, mad(1.451815478503704e-06f, _1125, (_1124 * 1.065374732017517f))) - _1124) * cb0_038x) + _1124;
    _1143 = ((mad(-0.20366770029067993f, _1126, mad(1.2036634683609009f, _1125, (_1124 * -2.57161445915699e-07f))) - _1125) * cb0_038x) + _1125;
    _1144 = ((mad(0.9999996423721313f, _1126, mad(2.0954757928848267e-08f, _1125, (_1124 * 1.862645149230957e-08f))) - _1126) * cb0_038x) + _1126;
    _1166 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _1144, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _1143, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _1142))));
    _1167 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _1144, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _1143, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _1142))));
    _1168 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _1144, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _1143, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _1142))));
    _1194 = cb0_015x * (((cb0_041y + (cb0_041x * _1166)) * _1166) + cb0_041z);
    _1195 = cb0_015y * (((cb0_041y + (cb0_041x * _1167)) * _1167) + cb0_041z);
    _1196 = cb0_015z * (((cb0_041y + (cb0_041x * _1168)) * _1168) + cb0_041z);
    _1217 = exp2(log2(max(0.0f, (lerp(_1194, cb0_014x, cb0_014w)))) * cb0_042y);
    _1218 = exp2(log2(max(0.0f, (lerp(_1195, cb0_014y, cb0_014w)))) * cb0_042y);
    _1219 = exp2(log2(max(0.0f, (lerp(_1196, cb0_014z, cb0_014w)))) * cb0_042y);
    if (!((WorkingColorSpace_000.FWorkingColorSpaceConstants_384 != 0) && (cb0_043x == 0))) {
      _1228 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _1219, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _1218, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _1217)));
      _1231 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _1219, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _1218, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _1217)));
      _1234 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _1219, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _1218, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _1217)));
      _1245 = mad(_40, _1234, mad(_39, _1231, (_1228 * _38)));
      _1246 = mad(_43, _1234, mad(_42, _1231, (_1228 * _41)));
      _1247 = mad(_46, _1234, mad(_45, _1231, (_1228 * _44)));
    } else {
      _1245 = _1217;
      _1246 = _1218;
      _1247 = _1219;
    }
    [branch]
    if (cb0_038w == 0) {
      if (_1245 < 0.0031306699384003878f) {
        _1262 = (_1245 * 12.920000076293945f);
      } else {
        _1262 = (((pow(_1245, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
      }
      if (_1246 < 0.0031306699384003878f) {
        _1273 = (_1246 * 12.920000076293945f);
      } else {
        _1273 = (((pow(_1246, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
      }
      if (_1247 < 0.0031306699384003878f) {
        _3948 = _1262;
        _3949 = _1273;
        _3950 = (_1247 * 12.920000076293945f);
      } else {
        _3948 = _1262;
        _3949 = _1273;
        _3950 = (((pow(_1247, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
      }
    } else {
      _3948 = (pow(_1245, 0.4166666567325592f));
      _3949 = (pow(_1246, 0.4166666567325592f));
      _3950 = (pow(_1247, 0.4166666567325592f));
    }
  } else {
    [branch]
    if (cb0_042w == 1) {
      _1310 = ((mad(0.061360642313957214f, _801, mad(-4.540197551250458e-09f, _799, (_797 * 0.9386394023895264f))) - _797) * cb0_038x) + _797;
      _1311 = ((mad(0.169205904006958f, _801, mad(0.8307942152023315f, _799, (_797 * 6.775371730327606e-08f))) - _799) * cb0_038x) + _799;
      _1312 = (mad(-2.3283064365386963e-10f, _799, (_797 * -9.313225746154785e-10f)) * cb0_038x) + _801;
      _1315 = mad(0.16386905312538147f, _1312, mad(0.14067868888378143f, _1311, (_1310 * 0.6954522132873535f)));
      _1318 = mad(0.0955343246459961f, _1312, mad(0.8596711158752441f, _1311, (_1310 * 0.044794581830501556f)));
      _1321 = mad(1.0015007257461548f, _1312, mad(0.004025210160762072f, _1311, (_1310 * -0.005525882821530104f)));
      _1325 = max(max(_1315, _1318), _1321);
      _1330 = (max(_1325, 1.000000013351432e-10f) - max(min(min(_1315, _1318), _1321), 1.000000013351432e-10f)) / max(_1325, 0.009999999776482582f);
      _1343 = ((_1318 + _1315) + _1321) + (sqrt((((_1321 - _1318) * _1321) + ((_1318 - _1315) * _1318)) + ((_1315 - _1321) * _1315)) * 1.75f);
      _1344 = _1343 * 0.3333333432674408f;
      _1345 = _1330 + -0.4000000059604645f;
      _1346 = _1345 * 5.0f;
      _1350 = max((1.0f - abs(_1345 * 2.5f)), 0.0f);
      _1361 = ((float((int)(((int)(uint)((int)(_1346 > 0.0f))) - ((int)(uint)((int)(_1346 < 0.0f))))) * (1.0f - (_1350 * _1350))) + 1.0f) * 0.02500000037252903f;
      if (!(_1344 <= 0.0533333346247673f)) {
        if (!(_1344 >= 0.1599999964237213f)) {
          _1370 = (((0.23999999463558197f / _1343) + -0.5f) * _1361);
        } else {
          _1370 = 0.0f;
        }
      } else {
        _1370 = _1361;
      }
      _1371 = _1370 + 1.0f;
      _1372 = _1371 * _1315;
      _1373 = _1371 * _1318;
      _1374 = _1371 * _1321;
      if (!((_1372 == _1373) && (_1373 == _1374))) {
        _1381 = ((_1372 * 2.0f) - _1373) - _1374;
        _1384 = ((_1318 - _1321) * 1.7320507764816284f) * _1371;
        _1386 = atan(_1384 / _1381);
        _1389 = (_1381 < 0.0f);
        _1390 = (_1381 == 0.0f);
        _1391 = (_1384 >= 0.0f);
        _1392 = (_1384 < 0.0f);
        _1403 = select((_1391 && _1390), 90.0f, select((_1392 && _1390), -90.0f, (select((_1392 && _1389), (_1386 + -3.1415927410125732f), select((_1391 && _1389), (_1386 + 3.1415927410125732f), _1386)) * 57.2957763671875f)));
      } else {
        _1403 = 0.0f;
      }
      _1408 = min(max(select((_1403 < 0.0f), (_1403 + 360.0f), _1403), 0.0f), 360.0f);
      if (_1408 < -180.0f) {
        _1417 = (_1408 + 360.0f);
      } else {
        if (_1408 > 180.0f) {
          _1417 = (_1408 + -360.0f);
        } else {
          _1417 = _1408;
        }
      }
      _1421 = saturate(1.0f - abs(_1417 * 0.014814814552664757f));
      _1425 = (_1421 * _1421) * (3.0f - (_1421 * 2.0f));
      _1431 = ((_1425 * _1425) * ((_1330 * 0.18000000715255737f) * (0.029999999329447746f - _1372))) + _1372;
      _1441 = max(0.0f, mad(-0.21492856740951538f, _1374, mad(-0.2365107536315918f, _1373, (_1431 * 1.4514392614364624f))));
      _1442 = max(0.0f, mad(-0.09967592358589172f, _1374, mad(1.17622971534729f, _1373, (_1431 * -0.07655377686023712f))));
      _1443 = max(0.0f, mad(0.9977163076400757f, _1374, mad(-0.006032449658960104f, _1373, (_1431 * 0.008316148072481155f))));
      _1444 = dot(float3(_1441, _1442, _1443), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
      _1458 = (cb0_039w + 1.0f) - cb0_039y;
      _1461 = cb0_040x + 1.0f;
      _1463 = _1461 - cb0_039z;
      if (cb0_039y > 0.800000011920929f) {
        _1481 = (((0.8199999928474426f - cb0_039y) / cb0_039x) + -0.7447274923324585f);
      } else {
        _1472 = (cb0_039w + 0.18000000715255737f) / _1458;
        _1481 = (-0.7447274923324585f - ((log2(_1472 / (2.0f - _1472)) * 0.3465735912322998f) * (_1458 / cb0_039x)));
      }
      _1484 = ((1.0f - cb0_039y) / cb0_039x) - _1481;
      _1486 = (cb0_039z / cb0_039x) - _1484;
      _1490 = log2(lerp(_1444, _1441, 0.9599999785423279f)) * 0.3010300099849701f;
      _1491 = log2(lerp(_1444, _1442, 0.9599999785423279f)) * 0.3010300099849701f;
      _1492 = log2(lerp(_1444, _1443, 0.9599999785423279f)) * 0.3010300099849701f;
      _1496 = cb0_039x * (_1490 + _1484);
      _1497 = cb0_039x * (_1491 + _1484);
      _1498 = cb0_039x * (_1492 + _1484);
      _1499 = _1458 * 2.0f;
      _1501 = (cb0_039x * -2.0f) / _1458;
      _1502 = _1490 - _1481;
      _1503 = _1491 - _1481;
      _1504 = _1492 - _1481;
      _1523 = _1463 * 2.0f;
      _1525 = (cb0_039x * 2.0f) / _1463;
      _1550 = select((_1490 < _1481), ((_1499 / (exp2((_1502 * 1.4426950216293335f) * _1501) + 1.0f)) - cb0_039w), _1496);
      _1551 = select((_1491 < _1481), ((_1499 / (exp2((_1503 * 1.4426950216293335f) * _1501) + 1.0f)) - cb0_039w), _1497);
      _1552 = select((_1492 < _1481), ((_1499 / (exp2((_1504 * 1.4426950216293335f) * _1501) + 1.0f)) - cb0_039w), _1498);
      _1559 = _1486 - _1481;
      _1563 = saturate(_1502 / _1559);
      _1564 = saturate(_1503 / _1559);
      _1565 = saturate(_1504 / _1559);
      _1566 = (_1486 < _1481);
      _1570 = select(_1566, (1.0f - _1563), _1563);
      _1571 = select(_1566, (1.0f - _1564), _1564);
      _1572 = select(_1566, (1.0f - _1565), _1565);
      _1591 = (((_1570 * _1570) * (select((_1490 > _1486), (_1461 - (_1523 / (exp2(((_1490 - _1486) * 1.4426950216293335f) * _1525) + 1.0f))), _1496) - _1550)) * (3.0f - (_1570 * 2.0f))) + _1550;
      _1592 = (((_1571 * _1571) * (select((_1491 > _1486), (_1461 - (_1523 / (exp2(((_1491 - _1486) * 1.4426950216293335f) * _1525) + 1.0f))), _1497) - _1551)) * (3.0f - (_1571 * 2.0f))) + _1551;
      _1593 = (((_1572 * _1572) * (select((_1492 > _1486), (_1461 - (_1523 / (exp2(((_1492 - _1486) * 1.4426950216293335f) * _1525) + 1.0f))), _1498) - _1552)) * (3.0f - (_1572 * 2.0f))) + _1552;
      _1594 = dot(float3(_1591, _1592, _1593), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
      _1614 = (cb0_038z * (max(0.0f, (lerp(_1594, _1591, 0.9300000071525574f))) - _1310)) + _1310;
      _1615 = (cb0_038z * (max(0.0f, (lerp(_1594, _1592, 0.9300000071525574f))) - _1311)) + _1311;
      _1616 = (cb0_038z * (max(0.0f, (lerp(_1594, _1593, 0.9300000071525574f))) - _1312)) + _1312;
      _1632 = ((mad(-0.06537103652954102f, _1616, mad(1.451815478503704e-06f, _1615, (_1614 * 1.065374732017517f))) - _1614) * cb0_038x) + _1614;
      _1633 = ((mad(-0.20366770029067993f, _1616, mad(1.2036634683609009f, _1615, (_1614 * -2.57161445915699e-07f))) - _1615) * cb0_038x) + _1615;
      _1634 = ((mad(0.9999996423721313f, _1616, mad(2.0954757928848267e-08f, _1615, (_1614 * 1.862645149230957e-08f))) - _1616) * cb0_038x) + _1616;
      _1656 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _1634, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _1633, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _1632))));
      _1657 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _1634, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _1633, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _1632))));
      _1658 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _1634, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _1633, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _1632))));
      _1684 = cb0_015x * (((cb0_041y + (cb0_041x * _1656)) * _1656) + cb0_041z);
      _1685 = cb0_015y * (((cb0_041y + (cb0_041x * _1657)) * _1657) + cb0_041z);
      _1686 = cb0_015z * (((cb0_041y + (cb0_041x * _1658)) * _1658) + cb0_041z);
      _1707 = exp2(log2(max(0.0f, (lerp(_1684, cb0_014x, cb0_014w)))) * cb0_042y);
      _1708 = exp2(log2(max(0.0f, (lerp(_1685, cb0_014y, cb0_014w)))) * cb0_042y);
      _1709 = exp2(log2(max(0.0f, (lerp(_1686, cb0_014z, cb0_014w)))) * cb0_042y);
      if (!((WorkingColorSpace_000.FWorkingColorSpaceConstants_384 != 0) && (cb0_043x == 0))) {
        _1718 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _1709, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _1708, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _1707)));
        _1721 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _1709, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _1708, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _1707)));
        _1724 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _1709, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _1708, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _1707)));
        _1735 = mad(_40, _1724, mad(_39, _1721, (_1718 * _38)));
        _1736 = mad(_43, _1724, mad(_42, _1721, (_1718 * _41)));
        _1737 = mad(_46, _1724, mad(_45, _1721, (_1718 * _44)));
      } else {
        _1735 = _1707;
        _1736 = _1708;
        _1737 = _1709;
      }
      _3948 = min((_1735 * 4.5f), ((exp2(log2(max(_1735, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
      _3949 = min((_1736 * 4.5f), ((exp2(log2(max(_1736, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
      _3950 = min((_1737 * 4.5f), ((exp2(log2(max(_1737, 0.017999999225139618f)) * 0.44999998807907104f) * 1.0989999771118164f) + -0.0989999994635582f));
    } else {
      if ((uint)((int)((uint)(cb0_042w) + (uint)(-3))) < (uint)2) {
        _1782 = ((mad(0.061360642313957214f, _801, mad(-4.540197551250458e-09f, _799, (_797 * 0.9386394023895264f))) - _797) * cb0_038x) + _797;
        _1783 = ((mad(0.169205904006958f, _801, mad(0.8307942152023315f, _799, (_797 * 6.775371730327606e-08f))) - _799) * cb0_038x) + _799;
        _1784 = (mad(-2.3283064365386963e-10f, _799, (_797 * -9.313225746154785e-10f)) * cb0_038x) + _801;
        _1787 = mad(0.16386905312538147f, _1784, mad(0.14067868888378143f, _1783, (_1782 * 0.6954522132873535f)));
        _1790 = mad(0.0955343246459961f, _1784, mad(0.8596711158752441f, _1783, (_1782 * 0.044794581830501556f)));
        _1793 = mad(1.0015007257461548f, _1784, mad(0.004025210160762072f, _1783, (_1782 * -0.005525882821530104f)));
        _1797 = max(max(_1787, _1790), _1793);
        _1802 = (max(_1797, 1.000000013351432e-10f) - max(min(min(_1787, _1790), _1793), 1.000000013351432e-10f)) / max(_1797, 0.009999999776482582f);
        _1815 = ((_1790 + _1787) + _1793) + (sqrt((((_1793 - _1790) * _1793) + ((_1790 - _1787) * _1790)) + ((_1787 - _1793) * _1787)) * 1.75f);
        _1816 = _1815 * 0.3333333432674408f;
        _1817 = _1802 + -0.4000000059604645f;
        _1818 = _1817 * 5.0f;
        _1822 = max((1.0f - abs(_1817 * 2.5f)), 0.0f);
        _1833 = ((float((int)(((int)(uint)((int)(_1818 > 0.0f))) - ((int)(uint)((int)(_1818 < 0.0f))))) * (1.0f - (_1822 * _1822))) + 1.0f) * 0.02500000037252903f;
        if (!(_1816 <= 0.0533333346247673f)) {
          if (!(_1816 >= 0.1599999964237213f)) {
            _1842 = (((0.23999999463558197f / _1815) + -0.5f) * _1833);
          } else {
            _1842 = 0.0f;
          }
        } else {
          _1842 = _1833;
        }
        _1843 = _1842 + 1.0f;
        _1844 = _1843 * _1787;
        _1845 = _1843 * _1790;
        _1846 = _1843 * _1793;
        if (!((_1844 == _1845) && (_1845 == _1846))) {
          _1853 = ((_1844 * 2.0f) - _1845) - _1846;
          _1856 = ((_1790 - _1793) * 1.7320507764816284f) * _1843;
          _1858 = atan(_1856 / _1853);
          _1861 = (_1853 < 0.0f);
          _1862 = (_1853 == 0.0f);
          _1863 = (_1856 >= 0.0f);
          _1864 = (_1856 < 0.0f);
          _1875 = select((_1863 && _1862), 90.0f, select((_1864 && _1862), -90.0f, (select((_1864 && _1861), (_1858 + -3.1415927410125732f), select((_1863 && _1861), (_1858 + 3.1415927410125732f), _1858)) * 57.2957763671875f)));
        } else {
          _1875 = 0.0f;
        }
        _1880 = min(max(select((_1875 < 0.0f), (_1875 + 360.0f), _1875), 0.0f), 360.0f);
        if (_1880 < -180.0f) {
          _1889 = (_1880 + 360.0f);
        } else {
          if (_1880 > 180.0f) {
            _1889 = (_1880 + -360.0f);
          } else {
            _1889 = _1880;
          }
        }
        _1893 = saturate(1.0f - abs(_1889 * 0.014814814552664757f));
        _1897 = (_1893 * _1893) * (3.0f - (_1893 * 2.0f));
        _1903 = ((_1897 * _1897) * ((_1802 * 0.18000000715255737f) * (0.029999999329447746f - _1844))) + _1844;
        _1913 = max(0.0f, mad(-0.21492856740951538f, _1846, mad(-0.2365107536315918f, _1845, (_1903 * 1.4514392614364624f))));
        _1914 = max(0.0f, mad(-0.09967592358589172f, _1846, mad(1.17622971534729f, _1845, (_1903 * -0.07655377686023712f))));
        _1915 = max(0.0f, mad(0.9977163076400757f, _1846, mad(-0.006032449658960104f, _1845, (_1903 * 0.008316148072481155f))));
        _1916 = dot(float3(_1913, _1914, _1915), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
        _1930 = (cb0_039w + 1.0f) - cb0_039y;
        _1933 = cb0_040x + 1.0f;
        _1935 = _1933 - cb0_039z;
        if (cb0_039y > 0.800000011920929f) {
          _1953 = (((0.8199999928474426f - cb0_039y) / cb0_039x) + -0.7447274923324585f);
        } else {
          _1944 = (cb0_039w + 0.18000000715255737f) / _1930;
          _1953 = (-0.7447274923324585f - ((log2(_1944 / (2.0f - _1944)) * 0.3465735912322998f) * (_1930 / cb0_039x)));
        }
        _1956 = ((1.0f - cb0_039y) / cb0_039x) - _1953;
        _1958 = (cb0_039z / cb0_039x) - _1956;
        _1962 = log2(lerp(_1916, _1913, 0.9599999785423279f)) * 0.3010300099849701f;
        _1963 = log2(lerp(_1916, _1914, 0.9599999785423279f)) * 0.3010300099849701f;
        _1964 = log2(lerp(_1916, _1915, 0.9599999785423279f)) * 0.3010300099849701f;
        _1968 = cb0_039x * (_1962 + _1956);
        _1969 = cb0_039x * (_1963 + _1956);
        _1970 = cb0_039x * (_1964 + _1956);
        _1971 = _1930 * 2.0f;
        _1973 = (cb0_039x * -2.0f) / _1930;
        _1974 = _1962 - _1953;
        _1975 = _1963 - _1953;
        _1976 = _1964 - _1953;
        _1995 = _1935 * 2.0f;
        _1997 = (cb0_039x * 2.0f) / _1935;
        _2022 = select((_1962 < _1953), ((_1971 / (exp2((_1974 * 1.4426950216293335f) * _1973) + 1.0f)) - cb0_039w), _1968);
        _2023 = select((_1963 < _1953), ((_1971 / (exp2((_1975 * 1.4426950216293335f) * _1973) + 1.0f)) - cb0_039w), _1969);
        _2024 = select((_1964 < _1953), ((_1971 / (exp2((_1976 * 1.4426950216293335f) * _1973) + 1.0f)) - cb0_039w), _1970);
        _2031 = _1958 - _1953;
        _2035 = saturate(_1974 / _2031);
        _2036 = saturate(_1975 / _2031);
        _2037 = saturate(_1976 / _2031);
        _2038 = (_1958 < _1953);
        _2042 = select(_2038, (1.0f - _2035), _2035);
        _2043 = select(_2038, (1.0f - _2036), _2036);
        _2044 = select(_2038, (1.0f - _2037), _2037);
        _2063 = (((_2042 * _2042) * (select((_1962 > _1958), (_1933 - (_1995 / (exp2(((_1962 - _1958) * 1.4426950216293335f) * _1997) + 1.0f))), _1968) - _2022)) * (3.0f - (_2042 * 2.0f))) + _2022;
        _2064 = (((_2043 * _2043) * (select((_1963 > _1958), (_1933 - (_1995 / (exp2(((_1963 - _1958) * 1.4426950216293335f) * _1997) + 1.0f))), _1969) - _2023)) * (3.0f - (_2043 * 2.0f))) + _2023;
        _2065 = (((_2044 * _2044) * (select((_1964 > _1958), (_1933 - (_1995 / (exp2(((_1964 - _1958) * 1.4426950216293335f) * _1997) + 1.0f))), _1970) - _2024)) * (3.0f - (_2044 * 2.0f))) + _2024;
        _2066 = dot(float3(_2063, _2064, _2065), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
        _2086 = (cb0_038z * (max(0.0f, (lerp(_2066, _2063, 0.9300000071525574f))) - _1782)) + _1782;
        _2087 = (cb0_038z * (max(0.0f, (lerp(_2066, _2064, 0.9300000071525574f))) - _1783)) + _1783;
        _2088 = (cb0_038z * (max(0.0f, (lerp(_2066, _2065, 0.9300000071525574f))) - _1784)) + _1784;
        _2104 = ((mad(-0.06537103652954102f, _2088, mad(1.451815478503704e-06f, _2087, (_2086 * 1.065374732017517f))) - _2086) * cb0_038x) + _2086;
        _2105 = ((mad(-0.20366770029067993f, _2088, mad(1.2036634683609009f, _2087, (_2086 * -2.57161445915699e-07f))) - _2087) * cb0_038x) + _2087;
        _2106 = ((mad(0.9999996423721313f, _2088, mad(2.0954757928848267e-08f, _2087, (_2086 * 1.862645149230957e-08f))) - _2088) * cb0_038x) + _2088;
        _2128 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _2106, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _2105, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _2104))));
        _2129 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _2106, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _2105, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _2104))));
        _2130 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _2106, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _2105, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _2104))));
        _2156 = cb0_015x * (((cb0_041y + (cb0_041x * _2128)) * _2128) + cb0_041z);
        _2157 = cb0_015y * (((cb0_041y + (cb0_041x * _2129)) * _2129) + cb0_041z);
        _2158 = cb0_015z * (((cb0_041y + (cb0_041x * _2130)) * _2130) + cb0_041z);
        _2179 = exp2(log2(max(0.0f, (lerp(_2156, cb0_014x, cb0_014w)))) * cb0_042y);
        _2180 = exp2(log2(max(0.0f, (lerp(_2157, cb0_014y, cb0_014w)))) * cb0_042y);
        _2181 = exp2(log2(max(0.0f, (lerp(_2158, cb0_014z, cb0_014w)))) * cb0_042y);
        if (!((WorkingColorSpace_000.FWorkingColorSpaceConstants_384 != 0) && (cb0_043x == 0))) {
          _2190 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _2181, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _2180, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _2179)));
          _2193 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _2181, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _2180, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _2179)));
          _2196 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _2181, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _2180, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _2179)));
          _2207 = mad(_40, _2196, mad(_39, _2193, (_2190 * _38)));
          _2208 = mad(_43, _2196, mad(_42, _2193, (_2190 * _41)));
          _2209 = mad(_46, _2196, mad(_45, _2193, (_2190 * _44)));
        } else {
          _2207 = _2179;
          _2208 = _2180;
          _2209 = _2181;
        }
        if (cb0_043y > 100.0f) {
          if (cb0_038w == 0) {
            if (_2207 < 0.0031306699384003878f) {
              _2226 = (_2207 * 12.920000076293945f);
            } else {
              _2226 = (((pow(_2207, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
            }
            if (_2208 < 0.0031306699384003878f) {
              _2237 = (_2208 * 12.920000076293945f);
            } else {
              _2237 = (((pow(_2208, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
            }
            if (_2209 < 0.0031306699384003878f) {
              _2248 = (_2209 * 12.920000076293945f);
            } else {
              _2248 = (((pow(_2209, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
            }
            _2259 = (pow(_2226, 2.4000000953674316f));
            _2260 = (pow(_2237, 2.4000000953674316f));
            _2261 = (pow(_2248, 2.4000000953674316f));
          } else {
            _2259 = _2207;
            _2260 = _2208;
            _2261 = _2209;
          }
          _2280 = exp2(log2(min(max((_2259 * 100.0f), 0.0f), 10000.0f) * 9.999999747378752e-05f) * 0.1593017578125f);
          _2281 = exp2(log2(min(max((_2260 * 100.0f), 0.0f), 10000.0f) * 9.999999747378752e-05f) * 0.1593017578125f);
          _2282 = exp2(log2(min(max((_2261 * 100.0f), 0.0f), 10000.0f) * 9.999999747378752e-05f) * 0.1593017578125f);
          _2314 = 1.0f / cb0_036z;
          _2315 = 1.0f - _2314;
          _2316 = _2314 * 0.5f;
          _2322 = t0.SampleLevel(s0, float3(mad((exp2(log2((1.0f / ((_2280 * 18.6875f) + 1.0f)) * ((_2280 * 18.8515625f) + 0.8359375f)) * 78.84375f) * 1.9682000875473022f), _2315, _2316), mad((exp2(log2((1.0f / ((_2281 * 18.6875f) + 1.0f)) * ((_2281 * 18.8515625f) + 0.8359375f)) * 78.84375f) * 1.9682000875473022f), _2315, _2316), mad((exp2(log2((1.0f / ((_2282 * 18.6875f) + 1.0f)) * ((_2282 * 18.8515625f) + 0.8359375f)) * 78.84375f) * 1.9682000875473022f), _2315, _2316)), 0.0f);
          _3948 = _2322.x;
          _3949 = _2322.y;
          _3950 = _2322.z;
        } else {
          _2336 = exp2(log2(_2207 * 0.009999999776482582f) * 0.1593017578125f);
          _2337 = exp2(log2(_2208 * 0.009999999776482582f) * 0.1593017578125f);
          _2338 = exp2(log2(_2209 * 0.009999999776482582f) * 0.1593017578125f);
          _3948 = exp2(log2((1.0f / ((_2336 * 18.6875f) + 1.0f)) * ((_2336 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          _3949 = exp2(log2((1.0f / ((_2337 * 18.6875f) + 1.0f)) * ((_2337 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          _3950 = exp2(log2((1.0f / ((_2338 * 18.6875f) + 1.0f)) * ((_2338 * 18.8515625f) + 0.8359375f)) * 78.84375f);
        }
      } else {
        if ((uint)((int)((uint)(cb0_042w) + (uint)(-5))) < (uint)2) {
          _2386 = ((mad(0.061360642313957214f, _801, mad(-4.540197551250458e-09f, _799, (_797 * 0.9386394023895264f))) - _797) * cb0_038x) + _797;
          _2387 = ((mad(0.169205904006958f, _801, mad(0.8307942152023315f, _799, (_797 * 6.775371730327606e-08f))) - _799) * cb0_038x) + _799;
          _2388 = (mad(-2.3283064365386963e-10f, _799, (_797 * -9.313225746154785e-10f)) * cb0_038x) + _801;
          _2391 = mad(0.16386905312538147f, _2388, mad(0.14067868888378143f, _2387, (_2386 * 0.6954522132873535f)));
          _2394 = mad(0.0955343246459961f, _2388, mad(0.8596711158752441f, _2387, (_2386 * 0.044794581830501556f)));
          _2397 = mad(1.0015007257461548f, _2388, mad(0.004025210160762072f, _2387, (_2386 * -0.005525882821530104f)));
          _2401 = max(max(_2391, _2394), _2397);
          _2406 = (max(_2401, 1.000000013351432e-10f) - max(min(min(_2391, _2394), _2397), 1.000000013351432e-10f)) / max(_2401, 0.009999999776482582f);
          _2419 = ((_2394 + _2391) + _2397) + (sqrt((((_2397 - _2394) * _2397) + ((_2394 - _2391) * _2394)) + ((_2391 - _2397) * _2391)) * 1.75f);
          _2420 = _2419 * 0.3333333432674408f;
          _2421 = _2406 + -0.4000000059604645f;
          _2422 = _2421 * 5.0f;
          _2426 = max((1.0f - abs(_2421 * 2.5f)), 0.0f);
          _2437 = ((float((int)(((int)(uint)((int)(_2422 > 0.0f))) - ((int)(uint)((int)(_2422 < 0.0f))))) * (1.0f - (_2426 * _2426))) + 1.0f) * 0.02500000037252903f;
          if (!(_2420 <= 0.0533333346247673f)) {
            if (!(_2420 >= 0.1599999964237213f)) {
              _2446 = (((0.23999999463558197f / _2419) + -0.5f) * _2437);
            } else {
              _2446 = 0.0f;
            }
          } else {
            _2446 = _2437;
          }
          _2447 = _2446 + 1.0f;
          _2448 = _2447 * _2391;
          _2449 = _2447 * _2394;
          _2450 = _2447 * _2397;
          if (!((_2448 == _2449) && (_2449 == _2450))) {
            _2457 = ((_2448 * 2.0f) - _2449) - _2450;
            _2460 = ((_2394 - _2397) * 1.7320507764816284f) * _2447;
            _2462 = atan(_2460 / _2457);
            _2465 = (_2457 < 0.0f);
            _2466 = (_2457 == 0.0f);
            _2467 = (_2460 >= 0.0f);
            _2468 = (_2460 < 0.0f);
            _2479 = select((_2467 && _2466), 90.0f, select((_2468 && _2466), -90.0f, (select((_2468 && _2465), (_2462 + -3.1415927410125732f), select((_2467 && _2465), (_2462 + 3.1415927410125732f), _2462)) * 57.2957763671875f)));
          } else {
            _2479 = 0.0f;
          }
          _2484 = min(max(select((_2479 < 0.0f), (_2479 + 360.0f), _2479), 0.0f), 360.0f);
          if (_2484 < -180.0f) {
            _2493 = (_2484 + 360.0f);
          } else {
            if (_2484 > 180.0f) {
              _2493 = (_2484 + -360.0f);
            } else {
              _2493 = _2484;
            }
          }
          _2497 = saturate(1.0f - abs(_2493 * 0.014814814552664757f));
          _2501 = (_2497 * _2497) * (3.0f - (_2497 * 2.0f));
          _2507 = ((_2501 * _2501) * ((_2406 * 0.18000000715255737f) * (0.029999999329447746f - _2448))) + _2448;
          _2517 = max(0.0f, mad(-0.21492856740951538f, _2450, mad(-0.2365107536315918f, _2449, (_2507 * 1.4514392614364624f))));
          _2518 = max(0.0f, mad(-0.09967592358589172f, _2450, mad(1.17622971534729f, _2449, (_2507 * -0.07655377686023712f))));
          _2519 = max(0.0f, mad(0.9977163076400757f, _2450, mad(-0.006032449658960104f, _2449, (_2507 * 0.008316148072481155f))));
          _2520 = dot(float3(_2517, _2518, _2519), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
          _2534 = (cb0_039w + 1.0f) - cb0_039y;
          _2537 = cb0_040x + 1.0f;
          _2539 = _2537 - cb0_039z;
          if (cb0_039y > 0.800000011920929f) {
            _2557 = (((0.8199999928474426f - cb0_039y) / cb0_039x) + -0.7447274923324585f);
          } else {
            _2548 = (cb0_039w + 0.18000000715255737f) / _2534;
            _2557 = (-0.7447274923324585f - ((log2(_2548 / (2.0f - _2548)) * 0.3465735912322998f) * (_2534 / cb0_039x)));
          }
          _2560 = ((1.0f - cb0_039y) / cb0_039x) - _2557;
          _2562 = (cb0_039z / cb0_039x) - _2560;
          _2566 = log2(lerp(_2520, _2517, 0.9599999785423279f)) * 0.3010300099849701f;
          _2567 = log2(lerp(_2520, _2518, 0.9599999785423279f)) * 0.3010300099849701f;
          _2568 = log2(lerp(_2520, _2519, 0.9599999785423279f)) * 0.3010300099849701f;
          _2572 = cb0_039x * (_2566 + _2560);
          _2573 = cb0_039x * (_2567 + _2560);
          _2574 = cb0_039x * (_2568 + _2560);
          _2575 = _2534 * 2.0f;
          _2577 = (cb0_039x * -2.0f) / _2534;
          _2578 = _2566 - _2557;
          _2579 = _2567 - _2557;
          _2580 = _2568 - _2557;
          _2599 = _2539 * 2.0f;
          _2601 = (cb0_039x * 2.0f) / _2539;
          _2626 = select((_2566 < _2557), ((_2575 / (exp2((_2578 * 1.4426950216293335f) * _2577) + 1.0f)) - cb0_039w), _2572);
          _2627 = select((_2567 < _2557), ((_2575 / (exp2((_2579 * 1.4426950216293335f) * _2577) + 1.0f)) - cb0_039w), _2573);
          _2628 = select((_2568 < _2557), ((_2575 / (exp2((_2580 * 1.4426950216293335f) * _2577) + 1.0f)) - cb0_039w), _2574);
          _2635 = _2562 - _2557;
          _2639 = saturate(_2578 / _2635);
          _2640 = saturate(_2579 / _2635);
          _2641 = saturate(_2580 / _2635);
          _2642 = (_2562 < _2557);
          _2646 = select(_2642, (1.0f - _2639), _2639);
          _2647 = select(_2642, (1.0f - _2640), _2640);
          _2648 = select(_2642, (1.0f - _2641), _2641);
          _2667 = (((_2646 * _2646) * (select((_2566 > _2562), (_2537 - (_2599 / (exp2(((_2566 - _2562) * 1.4426950216293335f) * _2601) + 1.0f))), _2572) - _2626)) * (3.0f - (_2646 * 2.0f))) + _2626;
          _2668 = (((_2647 * _2647) * (select((_2567 > _2562), (_2537 - (_2599 / (exp2(((_2567 - _2562) * 1.4426950216293335f) * _2601) + 1.0f))), _2573) - _2627)) * (3.0f - (_2647 * 2.0f))) + _2627;
          _2669 = (((_2648 * _2648) * (select((_2568 > _2562), (_2537 - (_2599 / (exp2(((_2568 - _2562) * 1.4426950216293335f) * _2601) + 1.0f))), _2574) - _2628)) * (3.0f - (_2648 * 2.0f))) + _2628;
          _2670 = dot(float3(_2667, _2668, _2669), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
          _2690 = (cb0_038z * (max(0.0f, (lerp(_2670, _2667, 0.9300000071525574f))) - _2386)) + _2386;
          _2691 = (cb0_038z * (max(0.0f, (lerp(_2670, _2668, 0.9300000071525574f))) - _2387)) + _2387;
          _2692 = (cb0_038z * (max(0.0f, (lerp(_2670, _2669, 0.9300000071525574f))) - _2388)) + _2388;
          _2708 = ((mad(-0.06537103652954102f, _2692, mad(1.451815478503704e-06f, _2691, (_2690 * 1.065374732017517f))) - _2690) * cb0_038x) + _2690;
          _2709 = ((mad(-0.20366770029067993f, _2692, mad(1.2036634683609009f, _2691, (_2690 * -2.57161445915699e-07f))) - _2691) * cb0_038x) + _2691;
          _2710 = ((mad(0.9999996423721313f, _2692, mad(2.0954757928848267e-08f, _2691, (_2690 * 1.862645149230957e-08f))) - _2692) * cb0_038x) + _2692;
          _2732 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _2710, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _2709, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _2708))));
          _2733 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _2710, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _2709, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _2708))));
          _2734 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _2710, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _2709, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _2708))));
          _2760 = cb0_015x * (((cb0_041y + (cb0_041x * _2732)) * _2732) + cb0_041z);
          _2761 = cb0_015y * (((cb0_041y + (cb0_041x * _2733)) * _2733) + cb0_041z);
          _2762 = cb0_015z * (((cb0_041y + (cb0_041x * _2734)) * _2734) + cb0_041z);
          _2783 = exp2(log2(max(0.0f, (lerp(_2760, cb0_014x, cb0_014w)))) * cb0_042y);
          _2784 = exp2(log2(max(0.0f, (lerp(_2761, cb0_014y, cb0_014w)))) * cb0_042y);
          _2785 = exp2(log2(max(0.0f, (lerp(_2762, cb0_014z, cb0_014w)))) * cb0_042y);
          if (!((WorkingColorSpace_000.FWorkingColorSpaceConstants_384 != 0) && (cb0_043x == 0))) {
            _2794 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _2785, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _2784, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _2783)));
            _2797 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _2785, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _2784, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _2783)));
            _2800 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _2785, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _2784, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _2783)));
            _2811 = mad(_40, _2800, mad(_39, _2797, (_2794 * _38)));
            _2812 = mad(_43, _2800, mad(_42, _2797, (_2794 * _41)));
            _2813 = mad(_46, _2800, mad(_45, _2797, (_2794 * _44)));
          } else {
            _2811 = _2783;
            _2812 = _2784;
            _2813 = _2785;
          }
          if (cb0_043y > 100.0f) {
            if (cb0_038w == 0) {
              if (_2811 < 0.0031306699384003878f) {
                _2830 = (_2811 * 12.920000076293945f);
              } else {
                _2830 = (((pow(_2811, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
              }
              if (_2812 < 0.0031306699384003878f) {
                _2841 = (_2812 * 12.920000076293945f);
              } else {
                _2841 = (((pow(_2812, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
              }
              if (_2813 < 0.0031306699384003878f) {
                _2852 = (_2813 * 12.920000076293945f);
              } else {
                _2852 = (((pow(_2813, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
              }
              _2863 = (pow(_2830, 2.4000000953674316f));
              _2864 = (pow(_2841, 2.4000000953674316f));
              _2865 = (pow(_2852, 2.4000000953674316f));
            } else {
              _2863 = _2811;
              _2864 = _2812;
              _2865 = _2813;
            }
            _2884 = exp2(log2(min(max((_2863 * 100.0f), 0.0f), 10000.0f) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2885 = exp2(log2(min(max((_2864 * 100.0f), 0.0f), 10000.0f) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2886 = exp2(log2(min(max((_2865 * 100.0f), 0.0f), 10000.0f) * 9.999999747378752e-05f) * 0.1593017578125f);
            _2918 = 1.0f / cb0_036z;
            _2919 = 1.0f - _2918;
            _2920 = _2918 * 0.5f;
            _2926 = t0.SampleLevel(s0, float3(mad((exp2(log2((1.0f / ((_2884 * 18.6875f) + 1.0f)) * ((_2884 * 18.8515625f) + 0.8359375f)) * 78.84375f) * 1.9682000875473022f), _2919, _2920), mad((exp2(log2((1.0f / ((_2885 * 18.6875f) + 1.0f)) * ((_2885 * 18.8515625f) + 0.8359375f)) * 78.84375f) * 1.9682000875473022f), _2919, _2920), mad((exp2(log2((1.0f / ((_2886 * 18.6875f) + 1.0f)) * ((_2886 * 18.8515625f) + 0.8359375f)) * 78.84375f) * 1.9682000875473022f), _2919, _2920)), 0.0f);
            _2936 = (pow(_2926.x, 0.012683313339948654f));
            _2937 = (pow(_2926.y, 0.012683313339948654f));
            _2938 = (pow(_2926.z, 0.012683313339948654f));
            _2967 = (exp2(log2(max(0.0f, (_2936 + -0.8359375f)) / (18.8515625f - (_2936 * 18.6875f))) * 6.277394771575928f) * 100.0f);
            _2968 = (exp2(log2(max(0.0f, (_2937 + -0.8359375f)) / (18.8515625f - (_2937 * 18.6875f))) * 6.277394771575928f) * 100.0f);
            _2969 = (exp2(log2(max(0.0f, (_2938 + -0.8359375f)) / (18.8515625f - (_2938 * 18.6875f))) * 6.277394771575928f) * 100.0f);
          } else {
            _2967 = _2811;
            _2968 = _2812;
            _2969 = _2813;
          }
          _3948 = (_2967 * 1.25f);
          _3949 = (_2968 * 1.25f);
          _3950 = (_2969 * 1.25f);
        } else {
          [branch]
          if (cb0_042w == 7) {
            _3006 = cb0_015x * mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _801, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _799, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _797)));
            _3007 = cb0_015y * mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _801, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _799, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _797)));
            _3008 = cb0_015z * mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _801, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _799, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _797)));
            _3015 = ((cb0_014x - _3006) * cb0_014w) + _3006;
            _3016 = ((cb0_014y - _3007) * cb0_014w) + _3007;
            _3017 = ((cb0_014z - _3008) * cb0_014w) + _3008;
            _3020 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _3017, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _3016, (_3015 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x))));
            _3023 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _3017, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _3016, (_3015 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x))));
            _3026 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _3017, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _3016, (_3015 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x))));
            _3045 = exp2(log2(mad(_40, _3026, mad(_39, _3023, (_3020 * _38))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _3046 = exp2(log2(mad(_43, _3026, mad(_42, _3023, (_3020 * _41))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _3047 = exp2(log2(mad(_46, _3026, mad(_45, _3023, (_3020 * _44))) * 9.999999747378752e-05f) * 0.1593017578125f);
            _3948 = exp2(log2((1.0f / ((_3045 * 18.6875f) + 1.0f)) * ((_3045 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            _3949 = exp2(log2((1.0f / ((_3046 * 18.6875f) + 1.0f)) * ((_3046 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            _3950 = exp2(log2((1.0f / ((_3047 * 18.6875f) + 1.0f)) * ((_3047 * 18.8515625f) + 0.8359375f)) * 78.84375f);
          } else {
            [branch]
            if (cb0_042w == 8) {
              _3108 = cb0_015x * mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _801, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _799, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _797)));
              _3109 = cb0_015y * mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _801, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _799, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _797)));
              _3110 = cb0_015z * mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _801, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _799, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _797)));
              _3948 = (lerp(_3108, cb0_014x, cb0_014w));
              _3949 = (lerp(_3109, cb0_014y, cb0_014w));
              _3950 = (lerp(_3110, cb0_014z, cb0_014w));
            } else {
              _3136 = ((mad(0.061360642313957214f, _801, mad(-4.540197551250458e-09f, _799, (_797 * 0.9386394023895264f))) - _797) * cb0_038x) + _797;
              _3137 = ((mad(0.169205904006958f, _801, mad(0.8307942152023315f, _799, (_797 * 6.775371730327606e-08f))) - _799) * cb0_038x) + _799;
              _3138 = (mad(-2.3283064365386963e-10f, _799, (_797 * -9.313225746154785e-10f)) * cb0_038x) + _801;
              _3141 = mad(0.16386905312538147f, _3138, mad(0.14067868888378143f, _3137, (_3136 * 0.6954522132873535f)));
              _3144 = mad(0.0955343246459961f, _3138, mad(0.8596711158752441f, _3137, (_3136 * 0.044794581830501556f)));
              _3147 = mad(1.0015007257461548f, _3138, mad(0.004025210160762072f, _3137, (_3136 * -0.005525882821530104f)));
              _3151 = max(max(_3141, _3144), _3147);
              _3156 = (max(_3151, 1.000000013351432e-10f) - max(min(min(_3141, _3144), _3147), 1.000000013351432e-10f)) / max(_3151, 0.009999999776482582f);
              _3169 = ((_3144 + _3141) + _3147) + (sqrt((((_3147 - _3144) * _3147) + ((_3144 - _3141) * _3144)) + ((_3141 - _3147) * _3141)) * 1.75f);
              _3170 = _3169 * 0.3333333432674408f;
              _3171 = _3156 + -0.4000000059604645f;
              _3172 = _3171 * 5.0f;
              _3176 = max((1.0f - abs(_3171 * 2.5f)), 0.0f);
              _3187 = ((float((int)(((int)(uint)((int)(_3172 > 0.0f))) - ((int)(uint)((int)(_3172 < 0.0f))))) * (1.0f - (_3176 * _3176))) + 1.0f) * 0.02500000037252903f;
              _3188 = !(_3170 <= 0.0533333346247673f);
              [branch]
              if (cb0_042w == 9) {
                if (_3188) {
                  if (!(_3170 >= 0.1599999964237213f)) {
                    _3197 = (((0.23999999463558197f / _3169) + -0.5f) * _3187);
                  } else {
                    _3197 = 0.0f;
                  }
                } else {
                  _3197 = _3187;
                }
                _3198 = _3197 + 1.0f;
                _3199 = _3198 * _3141;
                _3200 = _3198 * _3144;
                _3201 = _3198 * _3147;
                if (!((_3199 == _3200) && (_3200 == _3201))) {
                  _3208 = ((_3199 * 2.0f) - _3200) - _3201;
                  _3211 = ((_3144 - _3147) * 1.7320507764816284f) * _3198;
                  _3213 = atan(_3211 / _3208);
                  _3216 = (_3208 < 0.0f);
                  _3217 = (_3208 == 0.0f);
                  _3218 = (_3211 >= 0.0f);
                  _3219 = (_3211 < 0.0f);
                  _3230 = select((_3218 && _3217), 90.0f, select((_3219 && _3217), -90.0f, (select((_3219 && _3216), (_3213 + -3.1415927410125732f), select((_3218 && _3216), (_3213 + 3.1415927410125732f), _3213)) * 57.2957763671875f)));
                } else {
                  _3230 = 0.0f;
                }
                _3235 = min(max(select((_3230 < 0.0f), (_3230 + 360.0f), _3230), 0.0f), 360.0f);
                if (_3235 < -180.0f) {
                  _3244 = (_3235 + 360.0f);
                } else {
                  if (_3235 > 180.0f) {
                    _3244 = (_3235 + -360.0f);
                  } else {
                    _3244 = _3235;
                  }
                }
                _3248 = saturate(1.0f - abs(_3244 * 0.014814814552664757f));
                _3252 = (_3248 * _3248) * (3.0f - (_3248 * 2.0f));
                _3258 = ((_3252 * _3252) * ((_3156 * 0.18000000715255737f) * (0.029999999329447746f - _3199))) + _3199;
                _3268 = max(0.0f, mad(-0.21492856740951538f, _3201, mad(-0.2365107536315918f, _3200, (_3258 * 1.4514392614364624f))));
                _3269 = max(0.0f, mad(-0.09967592358589172f, _3201, mad(1.17622971534729f, _3200, (_3258 * -0.07655377686023712f))));
                _3270 = max(0.0f, mad(0.9977163076400757f, _3201, mad(-0.006032449658960104f, _3200, (_3258 * 0.008316148072481155f))));
                _3271 = dot(float3(_3268, _3269, _3270), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
                _3285 = (cb0_039w + 1.0f) - cb0_039y;
                _3288 = cb0_040x + 1.0f;
                _3290 = _3288 - cb0_039z;
                if (cb0_039y > 0.800000011920929f) {
                  _3308 = (((0.8199999928474426f - cb0_039y) / cb0_039x) + -0.7447274923324585f);
                } else {
                  _3299 = (cb0_039w + 0.18000000715255737f) / _3285;
                  _3308 = (-0.7447274923324585f - ((log2(_3299 / (2.0f - _3299)) * 0.3465735912322998f) * (_3285 / cb0_039x)));
                }
                _3311 = ((1.0f - cb0_039y) / cb0_039x) - _3308;
                _3313 = (cb0_039z / cb0_039x) - _3311;
                _3317 = log2(lerp(_3271, _3268, 0.9599999785423279f)) * 0.3010300099849701f;
                _3318 = log2(lerp(_3271, _3269, 0.9599999785423279f)) * 0.3010300099849701f;
                _3319 = log2(lerp(_3271, _3270, 0.9599999785423279f)) * 0.3010300099849701f;
                _3323 = cb0_039x * (_3317 + _3311);
                _3324 = cb0_039x * (_3318 + _3311);
                _3325 = cb0_039x * (_3319 + _3311);
                _3326 = _3285 * 2.0f;
                _3328 = (cb0_039x * -2.0f) / _3285;
                _3329 = _3317 - _3308;
                _3330 = _3318 - _3308;
                _3331 = _3319 - _3308;
                _3350 = _3290 * 2.0f;
                _3352 = (cb0_039x * 2.0f) / _3290;
                _3377 = select((_3317 < _3308), ((_3326 / (exp2((_3329 * 1.4426950216293335f) * _3328) + 1.0f)) - cb0_039w), _3323);
                _3378 = select((_3318 < _3308), ((_3326 / (exp2((_3330 * 1.4426950216293335f) * _3328) + 1.0f)) - cb0_039w), _3324);
                _3379 = select((_3319 < _3308), ((_3326 / (exp2((_3331 * 1.4426950216293335f) * _3328) + 1.0f)) - cb0_039w), _3325);
                _3386 = _3313 - _3308;
                _3390 = saturate(_3329 / _3386);
                _3391 = saturate(_3330 / _3386);
                _3392 = saturate(_3331 / _3386);
                _3393 = (_3313 < _3308);
                _3397 = select(_3393, (1.0f - _3390), _3390);
                _3398 = select(_3393, (1.0f - _3391), _3391);
                _3399 = select(_3393, (1.0f - _3392), _3392);
                _3418 = (((_3397 * _3397) * (select((_3317 > _3313), (_3288 - (_3350 / (exp2(((_3317 - _3313) * 1.4426950216293335f) * _3352) + 1.0f))), _3323) - _3377)) * (3.0f - (_3397 * 2.0f))) + _3377;
                _3419 = (((_3398 * _3398) * (select((_3318 > _3313), (_3288 - (_3350 / (exp2(((_3318 - _3313) * 1.4426950216293335f) * _3352) + 1.0f))), _3324) - _3378)) * (3.0f - (_3398 * 2.0f))) + _3378;
                _3420 = (((_3399 * _3399) * (select((_3319 > _3313), (_3288 - (_3350 / (exp2(((_3319 - _3313) * 1.4426950216293335f) * _3352) + 1.0f))), _3325) - _3379)) * (3.0f - (_3399 * 2.0f))) + _3379;
                _3421 = dot(float3(_3418, _3419, _3420), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
                _3441 = (cb0_038z * (max(0.0f, (lerp(_3421, _3418, 0.9300000071525574f))) - _3136)) + _3136;
                _3442 = (cb0_038z * (max(0.0f, (lerp(_3421, _3419, 0.9300000071525574f))) - _3137)) + _3137;
                _3443 = (cb0_038z * (max(0.0f, (lerp(_3421, _3420, 0.9300000071525574f))) - _3138)) + _3138;
                _3459 = ((mad(-0.06537103652954102f, _3443, mad(1.451815478503704e-06f, _3442, (_3441 * 1.065374732017517f))) - _3441) * cb0_038x) + _3441;
                _3460 = ((mad(-0.20366770029067993f, _3443, mad(1.2036634683609009f, _3442, (_3441 * -2.57161445915699e-07f))) - _3442) * cb0_038x) + _3442;
                _3461 = ((mad(0.9999996423721313f, _3443, mad(2.0954757928848267e-08f, _3442, (_3441 * 1.862645149230957e-08f))) - _3443) * cb0_038x) + _3443;
                _3483 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _3461, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _3460, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _3459))));
                _3484 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _3461, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _3460, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _3459))));
                _3485 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _3461, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _3460, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _3459))));
                _3511 = cb0_015x * (((cb0_041y + (cb0_041x * _3483)) * _3483) + cb0_041z);
                _3512 = cb0_015y * (((cb0_041y + (cb0_041x * _3484)) * _3484) + cb0_041z);
                _3513 = cb0_015z * (((cb0_041y + (cb0_041x * _3485)) * _3485) + cb0_041z);
                _3534 = exp2(log2(max(0.0f, (lerp(_3511, cb0_014x, cb0_014w)))) * cb0_042y);
                _3535 = exp2(log2(max(0.0f, (lerp(_3512, cb0_014y, cb0_014w)))) * cb0_042y);
                _3536 = exp2(log2(max(0.0f, (lerp(_3513, cb0_014z, cb0_014w)))) * cb0_042y);
                if (!((WorkingColorSpace_000.FWorkingColorSpaceConstants_384 != 0) && (cb0_043x == 0))) {
                  _3545 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _3536, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _3535, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _3534)));
                  _3548 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _3536, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _3535, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _3534)));
                  _3551 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _3536, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _3535, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _3534)));
                  _3948 = mad(_40, _3551, mad(_39, _3548, (_3545 * _38)));
                  _3949 = mad(_43, _3551, mad(_42, _3548, (_3545 * _41)));
                  _3950 = mad(_46, _3551, mad(_45, _3548, (_3545 * _44)));
                } else {
                  _3948 = _3534;
                  _3949 = _3535;
                  _3950 = _3536;
                }
              } else {
                if (_3188) {
                  if (!(_3170 >= 0.1599999964237213f)) {
                    _3569 = (((0.23999999463558197f / _3169) + -0.5f) * _3187);
                  } else {
                    _3569 = 0.0f;
                  }
                } else {
                  _3569 = _3187;
                }
                _3570 = _3569 + 1.0f;
                _3571 = _3570 * _3141;
                _3572 = _3570 * _3144;
                _3573 = _3570 * _3147;
                if (!((_3571 == _3572) && (_3572 == _3573))) {
                  _3580 = ((_3571 * 2.0f) - _3572) - _3573;
                  _3583 = ((_3144 - _3147) * 1.7320507764816284f) * _3570;
                  _3585 = atan(_3583 / _3580);
                  _3588 = (_3580 < 0.0f);
                  _3589 = (_3580 == 0.0f);
                  _3590 = (_3583 >= 0.0f);
                  _3591 = (_3583 < 0.0f);
                  _3602 = select((_3590 && _3589), 90.0f, select((_3591 && _3589), -90.0f, (select((_3591 && _3588), (_3585 + -3.1415927410125732f), select((_3590 && _3588), (_3585 + 3.1415927410125732f), _3585)) * 57.2957763671875f)));
                } else {
                  _3602 = 0.0f;
                }
                _3607 = min(max(select((_3602 < 0.0f), (_3602 + 360.0f), _3602), 0.0f), 360.0f);
                if (_3607 < -180.0f) {
                  _3616 = (_3607 + 360.0f);
                } else {
                  if (_3607 > 180.0f) {
                    _3616 = (_3607 + -360.0f);
                  } else {
                    _3616 = _3607;
                  }
                }
                _3620 = saturate(1.0f - abs(_3616 * 0.014814814552664757f));
                _3624 = (_3620 * _3620) * (3.0f - (_3620 * 2.0f));
                _3630 = ((_3624 * _3624) * ((_3156 * 0.18000000715255737f) * (0.029999999329447746f - _3571))) + _3571;
                _3640 = max(0.0f, mad(-0.21492856740951538f, _3573, mad(-0.2365107536315918f, _3572, (_3630 * 1.4514392614364624f))));
                _3641 = max(0.0f, mad(-0.09967592358589172f, _3573, mad(1.17622971534729f, _3572, (_3630 * -0.07655377686023712f))));
                _3642 = max(0.0f, mad(0.9977163076400757f, _3573, mad(-0.006032449658960104f, _3572, (_3630 * 0.008316148072481155f))));
                _3643 = dot(float3(_3640, _3641, _3642), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
                _3657 = (cb0_039w + 1.0f) - cb0_039y;
                _3660 = cb0_040x + 1.0f;
                _3662 = _3660 - cb0_039z;
                if (cb0_039y > 0.800000011920929f) {
                  _3680 = (((0.8199999928474426f - cb0_039y) / cb0_039x) + -0.7447274923324585f);
                } else {
                  _3671 = (cb0_039w + 0.18000000715255737f) / _3657;
                  _3680 = (-0.7447274923324585f - ((log2(_3671 / (2.0f - _3671)) * 0.3465735912322998f) * (_3657 / cb0_039x)));
                }
                _3683 = ((1.0f - cb0_039y) / cb0_039x) - _3680;
                _3685 = (cb0_039z / cb0_039x) - _3683;
                _3689 = log2(lerp(_3643, _3640, 0.9599999785423279f)) * 0.3010300099849701f;
                _3690 = log2(lerp(_3643, _3641, 0.9599999785423279f)) * 0.3010300099849701f;
                _3691 = log2(lerp(_3643, _3642, 0.9599999785423279f)) * 0.3010300099849701f;
                _3695 = cb0_039x * (_3689 + _3683);
                _3696 = cb0_039x * (_3690 + _3683);
                _3697 = cb0_039x * (_3691 + _3683);
                _3698 = _3657 * 2.0f;
                _3700 = (cb0_039x * -2.0f) / _3657;
                _3701 = _3689 - _3680;
                _3702 = _3690 - _3680;
                _3703 = _3691 - _3680;
                _3722 = _3662 * 2.0f;
                _3724 = (cb0_039x * 2.0f) / _3662;
                _3749 = select((_3689 < _3680), ((_3698 / (exp2((_3701 * 1.4426950216293335f) * _3700) + 1.0f)) - cb0_039w), _3695);
                _3750 = select((_3690 < _3680), ((_3698 / (exp2((_3702 * 1.4426950216293335f) * _3700) + 1.0f)) - cb0_039w), _3696);
                _3751 = select((_3691 < _3680), ((_3698 / (exp2((_3703 * 1.4426950216293335f) * _3700) + 1.0f)) - cb0_039w), _3697);
                _3758 = _3685 - _3680;
                _3762 = saturate(_3701 / _3758);
                _3763 = saturate(_3702 / _3758);
                _3764 = saturate(_3703 / _3758);
                _3765 = (_3685 < _3680);
                _3769 = select(_3765, (1.0f - _3762), _3762);
                _3770 = select(_3765, (1.0f - _3763), _3763);
                _3771 = select(_3765, (1.0f - _3764), _3764);
                _3790 = (((_3769 * _3769) * (select((_3689 > _3685), (_3660 - (_3722 / (exp2(((_3689 - _3685) * 1.4426950216293335f) * _3724) + 1.0f))), _3695) - _3749)) * (3.0f - (_3769 * 2.0f))) + _3749;
                _3791 = (((_3770 * _3770) * (select((_3690 > _3685), (_3660 - (_3722 / (exp2(((_3690 - _3685) * 1.4426950216293335f) * _3724) + 1.0f))), _3696) - _3750)) * (3.0f - (_3770 * 2.0f))) + _3750;
                _3792 = (((_3771 * _3771) * (select((_3691 > _3685), (_3660 - (_3722 / (exp2(((_3691 - _3685) * 1.4426950216293335f) * _3724) + 1.0f))), _3697) - _3751)) * (3.0f - (_3771 * 2.0f))) + _3751;
                _3793 = dot(float3(_3790, _3791, _3792), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
                _3813 = (cb0_038z * (max(0.0f, (lerp(_3793, _3790, 0.9300000071525574f))) - _3136)) + _3136;
                _3814 = (cb0_038z * (max(0.0f, (lerp(_3793, _3791, 0.9300000071525574f))) - _3137)) + _3137;
                _3815 = (cb0_038z * (max(0.0f, (lerp(_3793, _3792, 0.9300000071525574f))) - _3138)) + _3138;
                _3831 = ((mad(-0.06537103652954102f, _3815, mad(1.451815478503704e-06f, _3814, (_3813 * 1.065374732017517f))) - _3813) * cb0_038x) + _3813;
                _3832 = ((mad(-0.20366770029067993f, _3815, mad(1.2036634683609009f, _3814, (_3813 * -2.57161445915699e-07f))) - _3814) * cb0_038x) + _3814;
                _3833 = ((mad(0.9999996423721313f, _3815, mad(2.0954757928848267e-08f, _3814, (_3813 * 1.862645149230957e-08f))) - _3815) * cb0_038x) + _3815;
                _3855 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _3833, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _3832, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _3831))));
                _3856 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _3833, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _3832, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _3831))));
                _3857 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _3833, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _3832, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _3831))));
                _3883 = cb0_015x * (((cb0_041y + (cb0_041x * _3855)) * _3855) + cb0_041z);
                _3884 = cb0_015y * (((cb0_041y + (cb0_041x * _3856)) * _3856) + cb0_041z);
                _3885 = cb0_015z * (((cb0_041y + (cb0_041x * _3857)) * _3857) + cb0_041z);
                _3906 = exp2(log2(max(0.0f, (lerp(_3883, cb0_014x, cb0_014w)))) * cb0_042y);
                _3907 = exp2(log2(max(0.0f, (lerp(_3884, cb0_014y, cb0_014w)))) * cb0_042y);
                _3908 = exp2(log2(max(0.0f, (lerp(_3885, cb0_014z, cb0_014w)))) * cb0_042y);
                if (!((WorkingColorSpace_000.FWorkingColorSpaceConstants_384 != 0) && (cb0_043x == 0))) {
                  _3917 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _3908, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _3907, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _3906)));
                  _3920 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _3908, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _3907, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _3906)));
                  _3923 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _3908, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _3907, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _3906)));
                  _3934 = mad(_40, _3923, mad(_39, _3920, (_3917 * _38)));
                  _3935 = mad(_43, _3923, mad(_42, _3920, (_3917 * _41)));
                  _3936 = mad(_46, _3923, mad(_45, _3920, (_3917 * _44)));
                } else {
                  _3934 = _3906;
                  _3935 = _3907;
                  _3936 = _3908;
                }
                _3948 = (pow(_3934, cb0_042z));
                _3949 = (pow(_3935, cb0_042z));
                _3950 = (pow(_3936, cb0_042z));
              }
            }
          }
        }
      }
    }
  }
  u0[int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), (int)(SV_DispatchThreadID.z))] = float4((cb0_036x * _3948), (cb0_036x * _3949), (cb0_036x * _3950), 0.0f);
}
