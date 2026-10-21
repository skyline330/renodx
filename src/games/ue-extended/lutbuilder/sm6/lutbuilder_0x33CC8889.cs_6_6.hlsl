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
  int cb0_043x : packoffset(c043.x);
  int cb0_043z : packoffset(c043.z);
  float cb0_044x : packoffset(c044.x);
};

cbuffer cb1 : register(b1) {
  FWorkingColorSpaceConstants WorkingColorSpace_000 : packoffset(c000.x);
};

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
  float _14;
  float _15;
  float _16;
  float _36;
  float _37;
  float _38;
  float _39;
  float _40;
  float _41;
  float _42;
  float _43;
  float _44;
  float _101;
  float _102;
  float _103;
  float _162;
  float _369;
  float _370;
  float _371;
  float _874;
  float _907;
  float _921;
  float _985;
  float _1239;
  float _1240;
  float _1241;
  float _1256;
  float _1267;
  float _1288;
  float _1289;
  float _1290;
  bool _25;
  float _54;
  float _55;
  float _56;
  bool _141;
  float _145;
  float _176;
  float _183;
  float _186;
  float _191;
  float _192;
  float _194;
  bool _195;
  float _204;
  float _206;
  float _213;
  float _215;
  float _217;
  float _218;
  float _221;
  float _224;
  float _229;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _245;
  float _246;
  float _247;
  float _250;
  float _269;
  float _270;
  float _271;
  float _272;
  float _273;
  float _274;
  float _275;
  float _276;
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
  float _331;
  float _386;
  float _389;
  float _392;
  float _393;
  float _397;
  float _398;
  float _399;
  float _411;
  float _427;
  float _428;
  float _429;
  float _430;
  float _444;
  float _458;
  float _472;
  float _486;
  float _500;
  float _504;
  float _505;
  float _506;
  float _564;
  float _568;
  float _569;
  float _578;
  float _587;
  float _596;
  float _605;
  float _614;
  float _677;
  float _681;
  float _690;
  float _699;
  float _708;
  float _717;
  float _726;
  float _784;
  float _795;
  float _797;
  float _799;
  float _814;
  float _815;
  float _816;
  float _819;
  float _822;
  float _825;
  float _829;
  float _834;
  float _847;
  float _848;
  float _849;
  float _850;
  float _854;
  float _865;
  float _875;
  float _876;
  float _877;
  float _878;
  float _885;
  float _888;
  float _890;
  bool _893;
  bool _894;
  bool _895;
  bool _896;
  float _912;
  float _925;
  float _929;
  float _935;
  float _945;
  float _946;
  float _947;
  float _948;
  float _962;
  float _965;
  float _967;
  float _976;
  float _988;
  float _990;
  float _994;
  float _995;
  float _996;
  float _1000;
  float _1001;
  float _1002;
  float _1003;
  float _1005;
  float _1006;
  float _1007;
  float _1008;
  float _1027;
  float _1029;
  float _1054;
  float _1055;
  float _1056;
  float _1063;
  float _1067;
  float _1068;
  float _1069;
  bool _1070;
  float _1074;
  float _1075;
  float _1076;
  float _1095;
  float _1096;
  float _1097;
  float _1098;
  float _1118;
  float _1119;
  float _1120;
  float _1136;
  float _1137;
  float _1138;
  float _1160;
  float _1161;
  float _1162;
  float _1188;
  float _1189;
  float _1190;
  float _1211;
  float _1212;
  float _1213;
  float _1222;
  float _1225;
  float _1228;
  _14 = cb0_044x * ((float)((uint)SV_DispatchThreadID.x));
  _15 = cb0_044x * ((float)((uint)SV_DispatchThreadID.y));
  _16 = cb0_044x * ((float)((uint)SV_DispatchThreadID.z));
  if (!(cb0_043x == 1)) {
    if (!(cb0_043x == 2)) {
      if (!(cb0_043x == 3)) {
        _25 = (cb0_043x == 4);
        _36 = select(_25, 1.0f, 1.705051064491272f);
        _37 = select(_25, 0.0f, -0.6217921376228333f);
        _38 = select(_25, 0.0f, -0.0832589864730835f);
        _39 = select(_25, 0.0f, -0.13025647401809692f);
        _40 = select(_25, 1.0f, 1.140804648399353f);
        _41 = select(_25, 0.0f, -0.010548308491706848f);
        _42 = select(_25, 0.0f, -0.024003351107239723f);
        _43 = select(_25, 0.0f, -0.1289689838886261f);
        _44 = select(_25, 1.0f, 1.1529725790023804f);
      } else {
        _36 = 0.6954522132873535f;
        _37 = 0.14067870378494263f;
        _38 = 0.16386906802654266f;
        _39 = 0.044794563204050064f;
        _40 = 0.8596711158752441f;
        _41 = 0.0955343171954155f;
        _42 = -0.005525882821530104f;
        _43 = 0.004025210160762072f;
        _44 = 1.0015007257461548f;
      }
    } else {
      _36 = 1.0258246660232544f;
      _37 = -0.020053181797266006f;
      _38 = -0.005771636962890625f;
      _39 = -0.002234415616840124f;
      _40 = 1.0045864582061768f;
      _41 = -0.002352118492126465f;
      _42 = -0.005013350863009691f;
      _43 = -0.025290070101618767f;
      _44 = 1.0303035974502563f;
    }
  } else {
    _36 = 1.3792141675949097f;
    _37 = -0.30886411666870117f;
    _38 = -0.0703500509262085f;
    _39 = -0.06933490186929703f;
    _40 = 1.08229660987854f;
    _41 = -0.012961871922016144f;
    _42 = -0.0021590073592960835f;
    _43 = -0.0454593189060688f;
    _44 = 1.0476183891296387f;
  }
  [branch]
  if (cb0_043z == 0) {
    _101 = ((exp2((_14 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
    _102 = ((exp2((_15 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
    _103 = ((exp2((_16 + -0.4340175986289978f) * 14.0f) * 0.18000000715255737f) + -0.002667719265446067f);
  } else {
    _54 = (pow(_14, 0.012683313339948654f));
    _55 = (pow(_15, 0.012683313339948654f));
    _56 = (pow(_16, 0.012683313339948654f));
    _101 = (exp2(log2(max(0.0f, (_54 + -0.8359375f)) / (18.8515625f - (_54 * 18.6875f))) * 6.277394771575928f) * 100.0f);
    _102 = (exp2(log2(max(0.0f, (_55 + -0.8359375f)) / (18.8515625f - (_55 * 18.6875f))) * 6.277394771575928f) * 100.0f);
    _103 = (exp2(log2(max(0.0f, (_56 + -0.8359375f)) / (18.8515625f - (_56 * 18.6875f))) * 6.277394771575928f) * 100.0f);
  }
  [branch]
  if ((abs(cb0_036w + -6500.0f) > 9.99999993922529e-09f) | (abs(cb0_037x) > 9.99999993922529e-09f)) {
    _141 = (cb0_040y != 0);
    _145 = 0.9994439482688904f / cb0_036w;
    if (!((cb0_036w * 1.0005563497543335f) <= 7000.0f)) {
      _162 = (((((1901800.0f - (_145 * 2006400000.0f)) * _145) + 247.47999572753906f) * _145) + 0.23703999817371368f);
    } else {
      _162 = (((((2967800.0f - (_145 * 4607000064.0f)) * _145) + 99.11000061035156f) * _145) + 0.24406300485134125f);
    }
    _176 = ((((cb0_036w * 1.2864121856637212e-07f) + 0.00015411825734190643f) * cb0_036w) + 0.8601177334785461f) / ((((cb0_036w * 7.081451371959702e-07f) + 0.0008424202096648514f) * cb0_036w) + 1.0f);
    _183 = cb0_036w * cb0_036w;
    _186 = ((((cb0_036w * 4.204816761443908e-08f) + 4.228062607580796e-05f) * cb0_036w) + 0.31739872694015503f) / ((1.0f - (cb0_036w * 2.8974181986995973e-05f)) + (_183 * 1.6145605741257896e-07f));
    _191 = ((_176 * 2.0f) + 4.0f) - (_186 * 8.0f);
    _192 = (_176 * 3.0f) / _191;
    _194 = (_186 * 2.0f) / _191;
    _195 = (cb0_036w < 4000.0f);
    _204 = ((cb0_036w + 1189.6199951171875f) * cb0_036w) + 1412139.875f;
    _206 = ((-1137581184.0f - (cb0_036w * 1916156.25f)) - (_183 * 1.5317699909210205f)) / (_204 * _204);
    _213 = (6193636.0f - (cb0_036w * 179.45599365234375f)) + _183;
    _215 = ((1974715392.0f - (cb0_036w * 705674.0f)) - (_183 * 308.60699462890625f)) / (_213 * _213);
    _217 = rsqrt(dot(float2(_206, _215), float2(_206, _215)));
    _218 = cb0_037x * 0.05000000074505806f;
    _221 = ((_218 * _215) * _217) + _176;
    _224 = _186 - ((_218 * _206) * _217);
    _229 = (4.0f - (_224 * 8.0f)) + (_221 * 2.0f);
    _235 = (((_221 * 3.0f) / _229) - _192) + select(_195, _192, _162);
    _236 = (((_224 * 2.0f) / _229) - _194) + select(_195, _194, (((_162 * 2.869999885559082f) + -0.2750000059604645f) - ((_162 * _162) * 3.0f)));
    _237 = select(_141, _235, 0.3127000033855438f);
    _238 = select(_141, _236, 0.32899999618530273f);
    _239 = select(_141, 0.3127000033855438f, _235);
    _240 = select(_141, 0.32899999618530273f, _236);
    _241 = max(_238, 1.000000013351432e-10f);
    _242 = _237 / _241;
    _245 = ((1.0f - _237) - _238) / _241;
    _246 = max(_240, 1.000000013351432e-10f);
    _247 = _239 / _246;
    _250 = ((1.0f - _239) - _240) / _246;
    _269 = mad(-0.16140000522136688f, _250, ((_247 * 0.8950999975204468f) + 0.266400009393692f)) / mad(-0.16140000522136688f, _245, ((_242 * 0.8950999975204468f) + 0.266400009393692f));
    _270 = mad(0.03669999912381172f, _250, (1.7135000228881836f - (_247 * 0.7501999735832214f))) / mad(0.03669999912381172f, _245, (1.7135000228881836f - (_242 * 0.7501999735832214f)));
    _271 = mad(1.0296000242233276f, _250, ((_247 * 0.03889999911189079f) + -0.06849999725818634f)) / mad(1.0296000242233276f, _245, ((_242 * 0.03889999911189079f) + -0.06849999725818634f));
    _272 = mad(_270, -0.7501999735832214f, 0.0f);
    _273 = mad(_270, 1.7135000228881836f, 0.0f);
    _274 = mad(_270, 0.03669999912381172f, -0.0f);
    _275 = mad(_271, 0.03889999911189079f, 0.0f);
    _276 = mad(_271, -0.06849999725818634f, 0.0f);
    _277 = mad(_271, 1.0296000242233276f, 0.0f);
    _280 = mad(0.1599626988172531f, _275, mad(-0.1470542997121811f, _272, (_269 * 0.883457362651825f)));
    _283 = mad(0.1599626988172531f, _276, mad(-0.1470542997121811f, _273, (_269 * 0.26293492317199707f)));
    _286 = mad(0.1599626988172531f, _277, mad(-0.1470542997121811f, _274, (_269 * -0.15930065512657166f)));
    _289 = mad(0.04929120093584061f, _275, mad(0.5183603167533875f, _272, (_269 * 0.38695648312568665f)));
    _292 = mad(0.04929120093584061f, _276, mad(0.5183603167533875f, _273, (_269 * 0.11516613513231277f)));
    _295 = mad(0.04929120093584061f, _277, mad(0.5183603167533875f, _274, (_269 * -0.0697740763425827f)));
    _298 = mad(0.9684867262840271f, _275, mad(0.04004279896616936f, _272, (_269 * -0.007634039502590895f)));
    _301 = mad(0.9684867262840271f, _276, mad(0.04004279896616936f, _273, (_269 * -0.0022720457054674625f)));
    _304 = mad(0.9684867262840271f, _277, mad(0.04004279896616936f, _274, (_269 * 0.0013765322510153055f)));
    _307 = mad(_286, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].x), mad(_283, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].x), (_280 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].x))));
    _310 = mad(_286, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].y), mad(_283, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].y), (_280 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].y))));
    _313 = mad(_286, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].z), mad(_283, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].z), (_280 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].z))));
    _316 = mad(_295, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].x), mad(_292, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].x), (_289 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].x))));
    _319 = mad(_295, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].y), mad(_292, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].y), (_289 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].y))));
    _322 = mad(_295, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].z), mad(_292, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].z), (_289 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].z))));
    _325 = mad(_304, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].x), mad(_301, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].x), (_298 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].x))));
    _328 = mad(_304, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].y), mad(_301, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].y), (_298 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].y))));
    _331 = mad(_304, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[2].z), mad(_301, (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[1].z), (_298 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_000[0].z))));
    _369 = mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].z), _331, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].y), _322, (_313 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].x)))), _103, mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].z), _328, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].y), _319, (_310 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].x)))), _102, (mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].z), _325, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].y), _316, (_307 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[0].x)))) * _101)));
    _370 = mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].z), _331, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].y), _322, (_313 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].x)))), _103, mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].z), _328, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].y), _319, (_310 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].x)))), _102, (mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].z), _325, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].y), _316, (_307 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[1].x)))) * _101)));
    _371 = mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].z), _331, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].y), _322, (_313 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].x)))), _103, mad(mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].z), _328, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].y), _319, (_310 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].x)))), _102, (mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].z), _325, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].y), _316, (_307 * (WorkingColorSpace_000.FWorkingColorSpaceConstants_064[2].x)))) * _101)));
  } else {
    _369 = _101;
    _370 = _102;
    _371 = _103;
  }
  _386 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _371, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _370, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _369)));
  _389 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _371, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _370, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _369)));
  _392 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _371, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _370, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _369)));
  _393 = dot(float3(_386, _389, _392), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _397 = (_386 / _393) + -1.0f;
  _398 = (_389 / _393) + -1.0f;
  _399 = (_392 / _393) + -1.0f;

  // _411 = (1.0f - exp2(((_393 * _393) * -4.0f) * cb0_038y)) * (1.0f - exp2(dot(float3(_397, _398, _399), float3(_397, _398, _399)) * -4.0f));
  _411 = (1.0f - exp2(((_393 * _393) * -4.0f) * 0.f)) * (1.0f - exp2(dot(float3(_397, _398, _399), float3(_397, _398, _399)) * -4.0f));

  _427 = ((mad(-0.06368321925401688f, _392, mad(-0.3292922377586365f, _389, (_386 * 1.3704125881195068f))) - _386) * _411) + _386;
  _428 = ((mad(-0.010861365124583244f, _392, mad(1.0970927476882935f, _389, (_386 * -0.08343357592821121f))) - _389) * _411) + _389;
  _429 = ((mad(1.2036951780319214f, _392, mad(-0.09862580895423889f, _389, (_386 * -0.02579331398010254f))) - _392) * _411) + _392;
  _430 = dot(float3(_427, _428, _429), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _444 = cb0_020w + cb0_025w;
  _458 = cb0_019w * cb0_024w;
  _472 = cb0_018w * cb0_023w;
  _486 = cb0_017w * cb0_022w;
  _500 = cb0_016w * cb0_021w;
  _504 = _427 - _430;
  _505 = _428 - _430;
  _506 = _429 - _430;
  _564 = saturate(_430 / cb0_037y);
  _568 = (_564 * _564) * (3.0f - (_564 * 2.0f));
  _569 = 1.0f - _568;
  _578 = cb0_020w + cb0_035w;
  _587 = cb0_019w * cb0_034w;
  _596 = cb0_018w * cb0_033w;
  _605 = cb0_017w * cb0_032w;
  _614 = cb0_016w * cb0_031w;
  _677 = saturate((_430 - cb0_037z) / (cb0_037w - cb0_037z));
  _681 = (_677 * _677) * (3.0f - (_677 * 2.0f));
  _690 = cb0_020w + cb0_030w;
  _699 = cb0_019w * cb0_029w;
  _708 = cb0_018w * cb0_028w;
  _717 = cb0_017w * cb0_027w;
  _726 = cb0_016w * cb0_026w;
  _784 = _568 - _681;
  _795 = ((_681 * (((cb0_020x + cb0_035x) + _578) + (((cb0_019x * cb0_034x) * _587) * exp2(log2(exp2(((cb0_017x * cb0_032x) * _605) * log2(max(0.0f, ((((cb0_016x * cb0_031x) * _614) * _504) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018x * cb0_033x) * _596)))))) + (_569 * (((cb0_020x + cb0_025x) + _444) + (((cb0_019x * cb0_024x) * _458) * exp2(log2(exp2(((cb0_017x * cb0_022x) * _486) * log2(max(0.0f, ((((cb0_016x * cb0_021x) * _500) * _504) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018x * cb0_023x) * _472))))))) + ((((cb0_020x + cb0_030x) + _690) + (((cb0_019x * cb0_029x) * _699) * exp2(log2(exp2(((cb0_017x * cb0_027x) * _717) * log2(max(0.0f, ((((cb0_016x * cb0_026x) * _726) * _504) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018x * cb0_028x) * _708))))) * _784);
  _797 = ((_681 * (((cb0_020y + cb0_035y) + _578) + (((cb0_019y * cb0_034y) * _587) * exp2(log2(exp2(((cb0_017y * cb0_032y) * _605) * log2(max(0.0f, ((((cb0_016y * cb0_031y) * _614) * _505) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018y * cb0_033y) * _596)))))) + (_569 * (((cb0_020y + cb0_025y) + _444) + (((cb0_019y * cb0_024y) * _458) * exp2(log2(exp2(((cb0_017y * cb0_022y) * _486) * log2(max(0.0f, ((((cb0_016y * cb0_021y) * _500) * _505) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018y * cb0_023y) * _472))))))) + ((((cb0_020y + cb0_030y) + _690) + (((cb0_019y * cb0_029y) * _699) * exp2(log2(exp2(((cb0_017y * cb0_027y) * _717) * log2(max(0.0f, ((((cb0_016y * cb0_026y) * _726) * _505) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018y * cb0_028y) * _708))))) * _784);
  _799 = ((_681 * (((cb0_020z + cb0_035z) + _578) + (((cb0_019z * cb0_034z) * _587) * exp2(log2(exp2(((cb0_017z * cb0_032z) * _605) * log2(max(0.0f, ((((cb0_016z * cb0_031z) * _614) * _506) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018z * cb0_033z) * _596)))))) + (_569 * (((cb0_020z + cb0_025z) + _444) + (((cb0_019z * cb0_024z) * _458) * exp2(log2(exp2(((cb0_017z * cb0_022z) * _486) * log2(max(0.0f, ((((cb0_016z * cb0_021z) * _500) * _506) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018z * cb0_023z) * _472))))))) + ((((cb0_020z + cb0_030z) + _690) + (((cb0_019z * cb0_029z) * _699) * exp2(log2(exp2(((cb0_017z * cb0_027z) * _717) * log2(max(0.0f, ((((cb0_016z * cb0_026z) * _726) * _506) + _430)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_018z * cb0_028z) * _708))))) * _784);

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

  float4 output = ProcessLutbuilder(float3(_795, _797, _799), cb_config, u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))], cb0_038w);
  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = output;
  return;

  _814 = ((mad(0.061360642313957214f, _799, mad(-4.540197551250458e-09f, _797, (_795 * 0.9386394023895264f))) - _795) * cb0_038x) + _795;
  _815 = ((mad(0.169205904006958f, _799, mad(0.8307942152023315f, _797, (_795 * 6.775371730327606e-08f))) - _797) * cb0_038x) + _797;
  _816 = (mad(-2.3283064365386963e-10f, _797, (_795 * -9.313225746154785e-10f)) * cb0_038x) + _799;
  _819 = mad(0.16386905312538147f, _816, mad(0.14067868888378143f, _815, (_814 * 0.6954522132873535f)));
  _822 = mad(0.0955343246459961f, _816, mad(0.8596711158752441f, _815, (_814 * 0.044794581830501556f)));
  _825 = mad(1.0015007257461548f, _816, mad(0.004025210160762072f, _815, (_814 * -0.005525882821530104f)));
  _829 = max(max(_819, _822), _825);
  _834 = (max(_829, 1.000000013351432e-10f) - max(min(min(_819, _822), _825), 1.000000013351432e-10f)) / max(_829, 0.009999999776482582f);
  _847 = ((_822 + _819) + _825) + (sqrt((((_825 - _822) * _825) + ((_822 - _819) * _822)) + ((_819 - _825) * _819)) * 1.75f);
  _848 = _847 * 0.3333333432674408f;
  _849 = _834 + -0.4000000059604645f;
  _850 = _849 * 5.0f;
  _854 = max((1.0f - abs(_849 * 2.5f)), 0.0f);
  _865 = ((float((int)(((int)(uint)((int)(_850 > 0.0f))) - ((int)(uint)((int)(_850 < 0.0f))))) * (1.0f - (_854 * _854))) + 1.0f) * 0.02500000037252903f;
  if (!(_848 <= 0.0533333346247673f)) {
    if (!(_848 >= 0.1599999964237213f)) {
      _874 = (((0.23999999463558197f / _847) + -0.5f) * _865);
    } else {
      _874 = 0.0f;
    }
  } else {
    _874 = _865;
  }
  _875 = _874 + 1.0f;
  _876 = _875 * _819;
  _877 = _875 * _822;
  _878 = _875 * _825;
  if (!((_876 == _877) && (_877 == _878))) {
    _885 = ((_876 * 2.0f) - _877) - _878;
    _888 = ((_822 - _825) * 1.7320507764816284f) * _875;
    _890 = atan(_888 / _885);
    _893 = (_885 < 0.0f);
    _894 = (_885 == 0.0f);
    _895 = (_888 >= 0.0f);
    _896 = (_888 < 0.0f);
    _907 = select((_895 && _894), 90.0f, select((_896 && _894), -90.0f, (select((_896 && _893), (_890 + -3.1415927410125732f), select((_895 && _893), (_890 + 3.1415927410125732f), _890)) * 57.2957763671875f)));
  } else {
    _907 = 0.0f;
  }
  _912 = min(max(select((_907 < 0.0f), (_907 + 360.0f), _907), 0.0f), 360.0f);
  if (_912 < -180.0f) {
    _921 = (_912 + 360.0f);
  } else {
    if (_912 > 180.0f) {
      _921 = (_912 + -360.0f);
    } else {
      _921 = _912;
    }
  }
  _925 = saturate(1.0f - abs(_921 * 0.014814814552664757f));
  _929 = (_925 * _925) * (3.0f - (_925 * 2.0f));
  _935 = ((_929 * _929) * ((_834 * 0.18000000715255737f) * (0.029999999329447746f - _876))) + _876;
  _945 = max(0.0f, mad(-0.21492856740951538f, _878, mad(-0.2365107536315918f, _877, (_935 * 1.4514392614364624f))));
  _946 = max(0.0f, mad(-0.09967592358589172f, _878, mad(1.17622971534729f, _877, (_935 * -0.07655377686023712f))));
  _947 = max(0.0f, mad(0.9977163076400757f, _878, mad(-0.006032449658960104f, _877, (_935 * 0.008316148072481155f))));
  _948 = dot(float3(_945, _946, _947), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _962 = (cb0_039w + 1.0f) - cb0_039y;
  _965 = cb0_040x + 1.0f;
  _967 = _965 - cb0_039z;
  if (cb0_039y > 0.800000011920929f) {
    _985 = (((0.8199999928474426f - cb0_039y) / cb0_039x) + -0.7447274923324585f);
  } else {
    _976 = (cb0_039w + 0.18000000715255737f) / _962;
    _985 = (-0.7447274923324585f - ((log2(_976 / (2.0f - _976)) * 0.3465735912322998f) * (_962 / cb0_039x)));
  }
  _988 = ((1.0f - cb0_039y) / cb0_039x) - _985;
  _990 = (cb0_039z / cb0_039x) - _988;
  _994 = log2(lerp(_948, _945, 0.9599999785423279f)) * 0.3010300099849701f;
  _995 = log2(lerp(_948, _946, 0.9599999785423279f)) * 0.3010300099849701f;
  _996 = log2(lerp(_948, _947, 0.9599999785423279f)) * 0.3010300099849701f;
  _1000 = cb0_039x * (_994 + _988);
  _1001 = cb0_039x * (_995 + _988);
  _1002 = cb0_039x * (_996 + _988);
  _1003 = _962 * 2.0f;
  _1005 = (cb0_039x * -2.0f) / _962;
  _1006 = _994 - _985;
  _1007 = _995 - _985;
  _1008 = _996 - _985;
  _1027 = _967 * 2.0f;
  _1029 = (cb0_039x * 2.0f) / _967;
  _1054 = select((_994 < _985), ((_1003 / (exp2((_1006 * 1.4426950216293335f) * _1005) + 1.0f)) - cb0_039w), _1000);
  _1055 = select((_995 < _985), ((_1003 / (exp2((_1007 * 1.4426950216293335f) * _1005) + 1.0f)) - cb0_039w), _1001);
  _1056 = select((_996 < _985), ((_1003 / (exp2((_1008 * 1.4426950216293335f) * _1005) + 1.0f)) - cb0_039w), _1002);
  _1063 = _990 - _985;
  _1067 = saturate(_1006 / _1063);
  _1068 = saturate(_1007 / _1063);
  _1069 = saturate(_1008 / _1063);
  _1070 = (_990 < _985);
  _1074 = select(_1070, (1.0f - _1067), _1067);
  _1075 = select(_1070, (1.0f - _1068), _1068);
  _1076 = select(_1070, (1.0f - _1069), _1069);
  _1095 = (((_1074 * _1074) * (select((_994 > _990), (_965 - (_1027 / (exp2(((_994 - _990) * 1.4426950216293335f) * _1029) + 1.0f))), _1000) - _1054)) * (3.0f - (_1074 * 2.0f))) + _1054;
  _1096 = (((_1075 * _1075) * (select((_995 > _990), (_965 - (_1027 / (exp2(((_995 - _990) * 1.4426950216293335f) * _1029) + 1.0f))), _1001) - _1055)) * (3.0f - (_1075 * 2.0f))) + _1055;
  _1097 = (((_1076 * _1076) * (select((_996 > _990), (_965 - (_1027 / (exp2(((_996 - _990) * 1.4426950216293335f) * _1029) + 1.0f))), _1002) - _1056)) * (3.0f - (_1076 * 2.0f))) + _1056;
  _1098 = dot(float3(_1095, _1096, _1097), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  _1118 = (cb0_038z * (max(0.0f, (lerp(_1098, _1095, 0.9300000071525574f))) - _814)) + _814;
  _1119 = (cb0_038z * (max(0.0f, (lerp(_1098, _1096, 0.9300000071525574f))) - _815)) + _815;
  _1120 = (cb0_038z * (max(0.0f, (lerp(_1098, _1097, 0.9300000071525574f))) - _816)) + _816;
  _1136 = ((mad(-0.06537103652954102f, _1120, mad(1.451815478503704e-06f, _1119, (_1118 * 1.065374732017517f))) - _1118) * cb0_038x) + _1118;
  _1137 = ((mad(-0.20366770029067993f, _1120, mad(1.2036634683609009f, _1119, (_1118 * -2.57161445915699e-07f))) - _1119) * cb0_038x) + _1119;
  _1138 = ((mad(0.9999996423721313f, _1120, mad(2.0954757928848267e-08f, _1119, (_1118 * 1.862645149230957e-08f))) - _1120) * cb0_038x) + _1120;
  _1160 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].z), _1138, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].y), _1137, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[0].x) * _1136))));
  _1161 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].z), _1138, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].y), _1137, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[1].x) * _1136))));
  _1162 = max(0.0f, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].z), _1138, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].y), _1137, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_192[2].x) * _1136))));
  _1188 = cb0_015x * (((cb0_041y + (cb0_041x * _1160)) * _1160) + cb0_041z);
  _1189 = cb0_015y * (((cb0_041y + (cb0_041x * _1161)) * _1161) + cb0_041z);
  _1190 = cb0_015z * (((cb0_041y + (cb0_041x * _1162)) * _1162) + cb0_041z);
  _1211 = exp2(log2(max(0.0f, (lerp(_1188, cb0_014x, cb0_014w)))) * cb0_042y);
  _1212 = exp2(log2(max(0.0f, (lerp(_1189, cb0_014y, cb0_014w)))) * cb0_042y);
  _1213 = exp2(log2(max(0.0f, (lerp(_1190, cb0_014z, cb0_014w)))) * cb0_042y);
  if (!((WorkingColorSpace_000.FWorkingColorSpaceConstants_384 != 0) && (cb0_043x == 0))) {
    _1222 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].z), _1213, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].y), _1212, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[0].x) * _1211)));
    _1225 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].z), _1213, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].y), _1212, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[1].x) * _1211)));
    _1228 = mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].z), _1213, mad((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].y), _1212, ((WorkingColorSpace_000.FWorkingColorSpaceConstants_128[2].x) * _1211)));
    _1239 = mad(_38, _1228, mad(_37, _1225, (_1222 * _36)));
    _1240 = mad(_41, _1228, mad(_40, _1225, (_1222 * _39)));
    _1241 = mad(_44, _1228, mad(_43, _1225, (_1222 * _42)));
  } else {
    _1239 = _1211;
    _1240 = _1212;
    _1241 = _1213;
  }
  [branch]
  if (cb0_038w == 0) {
    if (_1239 < 0.0031306699384003878f) {
      _1256 = (_1239 * 12.920000076293945f);
    } else {
      _1256 = (((pow(_1239, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
    if (_1240 < 0.0031306699384003878f) {
      _1267 = (_1240 * 12.920000076293945f);
    } else {
      _1267 = (((pow(_1240, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
    if (_1241 < 0.0031306699384003878f) {
      _1288 = _1256;
      _1289 = _1267;
      _1290 = (_1241 * 12.920000076293945f);
    } else {
      _1288 = _1256;
      _1289 = _1267;
      _1290 = (((pow(_1241, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f);
    }
  } else {
    _1288 = (pow(_1239, 0.4166666567325592f));
    _1289 = (pow(_1240, 0.4166666567325592f));
    _1290 = (pow(_1241, 0.4166666567325592f));
  }
  u0[int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), (int)(SV_DispatchThreadID.z))] = float4((cb0_036x * _1288), (cb0_036x * _1289), (cb0_036x * _1290), 0.0f);
}
