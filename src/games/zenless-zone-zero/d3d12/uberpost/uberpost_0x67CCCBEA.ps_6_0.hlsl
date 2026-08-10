#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

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
  float4 Globals_2752[4] : packoffset(c172.x);
  float4 Globals_2816[4] : packoffset(c176.x);
  float4 Globals_2880[4] : packoffset(c180.x);
  float4 Globals_2944[4] : packoffset(c184.x);
  float4 Globals_3008 : packoffset(c188.x);
  float Globals_3024 : packoffset(c189.x);
  float4 Globals_3040[4] : packoffset(c190.x);
  float4 Globals_3104[4] : packoffset(c194.x);
  float4 Globals_3168 : packoffset(c198.x);
  float4 Globals_3184 : packoffset(c199.x);
  float4 Globals_3200 : packoffset(c200.x);
  float4 Globals_3216 : packoffset(c201.x);
  float3 Globals_3232 : packoffset(c202.x);
  float4 Globals_3248 : packoffset(c203.x);
  float Globals_3264 : packoffset(c204.x);
  float4 Globals_3280[4] : packoffset(c205.x);
};

cbuffer cb1 : register(b1) {
  float4 UberPostBaseCBuffer_000 : packoffset(c000.x);
  float4 UberPostBaseCBuffer_016 : packoffset(c001.x);
  float4 UberPostBaseCBuffer_032 : packoffset(c002.x);
  float4 UberPostBaseCBuffer_048 : packoffset(c003.x);
  float4 UberPostBaseCBuffer_064 : packoffset(c004.x);
  float4 UberPostBaseCBuffer_080 : packoffset(c005.x);
  float4 UberPostBaseCBuffer_096 : packoffset(c006.x);
  float4 UberPostBaseCBuffer_112 : packoffset(c007.x);
  float4 UberPostBaseCBuffer_128 : packoffset(c008.x);
  float4 UberPostBaseCBuffer_144 : packoffset(c009.x);
  float4 UberPostBaseCBuffer_160 : packoffset(c010.x);
  float4 UberPostBaseCBuffer_176 : packoffset(c011.x);
  float4 UberPostBaseCBuffer_192 : packoffset(c012.x);
  float4 UberPostBaseCBuffer_208 : packoffset(c013.x);
  float4 UberPostBaseCBuffer_224 : packoffset(c014.x);
  float4 UberPostBaseCBuffer_240 : packoffset(c015.x);
  float4 UberPostBaseCBuffer_256 : packoffset(c016.x);
  float4 UberPostBaseCBuffer_272 : packoffset(c017.x);
  float4 UberPostBaseCBuffer_288 : packoffset(c018.x);
  float4 UberPostBaseCBuffer_304 : packoffset(c019.x);
  float4 UberPostBaseCBuffer_320 : packoffset(c020.x);
  float4 UberPostBaseCBuffer_336 : packoffset(c021.x);
  float4 UberPostBaseCBuffer_352 : packoffset(c022.x);
  float4 UberPostBaseCBuffer_368 : packoffset(c023.x);
  float4 UberPostBaseCBuffer_384 : packoffset(c024.x);
  float4 UberPostBaseCBuffer_400 : packoffset(c025.x);
  float4 UberPostBaseCBuffer_416 : packoffset(c026.x);
  float4 UberPostBaseCBuffer_432 : packoffset(c027.x);
  float4 UberPostBaseCBuffer_448 : packoffset(c028.x);
  float4 UberPostBaseCBuffer_464 : packoffset(c029.x);
  float4 UberPostBaseCBuffer_480 : packoffset(c030.x);
  float4 UberPostBaseCBuffer_496 : packoffset(c031.x);
  float4 UberPostBaseCBuffer_512 : packoffset(c032.x);
  float4 UberPostBaseCBuffer_528 : packoffset(c033.x);
  float4 UberPostBaseCBuffer_544 : packoffset(c034.x);
  float4 UberPostBaseCBuffer_560 : packoffset(c035.x);
  float4 UberPostBaseCBuffer_576 : packoffset(c036.x);
  float4 UberPostBaseCBuffer_592 : packoffset(c037.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

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
  bool _17;
  float _54;
  float _61;
  float _62;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _102;
  float _103;
  float _104;
  float _187;
  float _194;
  float _195;
  float _244;
  float _251;
  float _252;
  float _299;
  float _306;
  float _307;
  float _378;
  float _385;
  float _386;
  float _427;
  float _434;
  float _435;
  float _476;
  float _483;
  float _484;
  float _493;
  float _494;
  float _495;
  float _501;
  float _502;
  float _503;
  float _504;
  float _636;
  float _637;
  float _638;
  float _648;
  float _649;
  float _650;
  float _651;
  float _690;
  float _691;
  float _692;
  float _820;
  float _821;
  float _822;
  float _22;
  float _23;
  float _33;
  float _34;
  float _38;
  float _42;
  float _55;
  bool _65;
  float4 _69;
  float _73;
  float _74;
  float _79;
  float _80;
  float _114;
  float _116;
  float _120;
  float _122;
  float _124;
  float _126;
  float _133;
  float _138;
  float _140;
  float _142;
  float _149;
  float _150;
  float _155;
  float _156;
  float _166;
  float _167;
  float _171;
  float _175;
  float _188;
  float4 _198;
  float _206;
  float _207;
  float _212;
  float _213;
  float _223;
  float _224;
  float _228;
  float _232;
  float _245;
  float4 _253;
  float _261;
  float _262;
  float _267;
  float _268;
  float _278;
  float _279;
  float _283;
  float _287;
  float _300;
  float4 _308;
  float _340;
  float _341;
  float _346;
  float _347;
  float _357;
  float _358;
  float _362;
  float _366;
  float _379;
  float _389;
  float _390;
  float _395;
  float _396;
  float _406;
  float _407;
  float _411;
  float _415;
  float _428;
  float _438;
  float _439;
  float _444;
  float _445;
  float _455;
  float _456;
  float _460;
  float _464;
  float _477;
  float4 _488;
  bool _511;
  float _521;
  float _529;
  float _532;
  float4 _553;
  float _590;
  float _591;
  float _592;
  float _593;
  bool _596;
  float _609;
  float _610;
  float _611;
  float4 _622;
  float _668;
  float _670;
  float _676;
  float _697;
  float _698;
  float _699;
  float _727;
  float _728;
  float _734;
  float _736;
  float _737;
  float4 _739;
  float4 _743;
  float _753;
  float _754;
  float _755;
  float _780;
  float _781;
  float _782;
  float _802;
  float _806;
  _17 = !(UberPostBaseCBuffer_080.w == 0.0f);
  if (_17) {
    _22 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _23 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _33 = (_22 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _34 = (_23 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _38 = sqrt((_33 * _33) + (_34 * _34));
    _42 = UberPostBaseCBuffer_080.y * _38;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _54 = ((1.0f / _42) * tan(UberPostBaseCBuffer_080.x * _38));
    } else {
      _54 = ((UberPostBaseCBuffer_080.x * (1.0f / _38)) * atan(_42));
    }
    _55 = _54 + -1.0f;
    _61 = ((_22 + 0.5f) + (_55 * _33));
    _62 = ((_23 + 0.5f) + (_55 * _34));
  } else {
    _61 = TEXCOORD.x;
    _62 = TEXCOORD.y;
  }
  _65 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_65) {
    _69 = t3.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _73 = _69.x * 0.10000000149011612f;
    _74 = _69.y * 0.10000000149011612f;
    _79 = (_73 * _69.z) * UberPostBaseCBuffer_176.w;
    _80 = (_74 * _69.z) * UberPostBaseCBuffer_176.w;
    _97 = (_73 + _61);
    _98 = (_74 + _62);
    _99 = ((_79 * UberPostBaseCBuffer_176.x) + _73);
    _100 = ((_80 * UberPostBaseCBuffer_176.x) + _74);
    _101 = ((_79 * UberPostBaseCBuffer_176.y) + _73);
    _102 = ((_80 * UberPostBaseCBuffer_176.y) + _74);
    _103 = ((UberPostBaseCBuffer_176.z * _79) + _73);
    _104 = ((UberPostBaseCBuffer_176.z * _80) + _74);
  } else {
    _97 = _61;
    _98 = _62;
    _99 = 0.0f;
    _100 = 0.0f;
    _101 = 0.0f;
    _102 = 0.0f;
    _103 = 0.0f;
    _104 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _114 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _116 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _120 = dot(float2(_114, _116), float2(_114, _116)) * -0.3333333432674408f;
    _122 = (_120 * _114) * UberPostBaseCBuffer_192.z;
    _124 = (_120 * _116) * UberPostBaseCBuffer_192.z;
    _126 = rsqrt(dot(float3(_122, _124, 9.999999747378752e-05f), float3(_122, _124, 9.999999747378752e-05f)));
    _133 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _138 = exp2(log2(sqrt((_122 * _122) + (_124 * _124)) / _133) * UberPostBaseCBuffer_384.z);
    _140 = ((_122 * _126) * _133) * _138;
    _142 = ((_124 * _126) * _133) * _138;
    _149 = (_99 + TEXCOORD.x) + (_140 * UberPostBaseCBuffer_400.w);
    _150 = (_100 + TEXCOORD.y) + (_142 * UberPostBaseCBuffer_400.w);
    if (_17) {
      _155 = UberPostBaseCBuffer_080.z * (_149 + -0.5f);
      _156 = UberPostBaseCBuffer_080.z * (_150 + -0.5f);
      _166 = (_155 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _167 = (_156 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _171 = sqrt((_166 * _166) + (_167 * _167));
      _175 = UberPostBaseCBuffer_080.y * _171;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _187 = ((1.0f / _175) * tan(UberPostBaseCBuffer_080.x * _171));
      } else {
        _187 = ((UberPostBaseCBuffer_080.x * (1.0f / _171)) * atan(_175));
      }
      _188 = _187 + -1.0f;
      _194 = ((_155 + 0.5f) + (_188 * _166));
      _195 = ((_156 + 0.5f) + (_188 * _167));
    } else {
      _194 = _149;
      _195 = _150;
    }
    _198 = t0.SampleBias(s0, float2(_194, _195), (Globals_976), int2(0, 0));
    _206 = (_101 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _140);
    _207 = (_102 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _142);
    if (_17) {
      _212 = UberPostBaseCBuffer_080.z * (_206 + -0.5f);
      _213 = UberPostBaseCBuffer_080.z * (_207 + -0.5f);
      _223 = (_212 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _224 = (_213 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _228 = sqrt((_223 * _223) + (_224 * _224));
      _232 = UberPostBaseCBuffer_080.y * _228;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _244 = ((1.0f / _232) * tan(UberPostBaseCBuffer_080.x * _228));
      } else {
        _244 = ((UberPostBaseCBuffer_080.x * (1.0f / _228)) * atan(_232));
      }
      _245 = _244 + -1.0f;
      _251 = ((_212 + 0.5f) + (_245 * _223));
      _252 = ((_213 + 0.5f) + (_245 * _224));
    } else {
      _251 = _206;
      _252 = _207;
    }
    _253 = t0.SampleBias(s0, float2(_251, _252), (Globals_976), int2(0, 0));
    _261 = (_103 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _140);
    _262 = (_104 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _142);
    if (_17) {
      _267 = UberPostBaseCBuffer_080.z * (_261 + -0.5f);
      _268 = UberPostBaseCBuffer_080.z * (_262 + -0.5f);
      _278 = (_267 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _279 = (_268 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _283 = sqrt((_278 * _278) + (_279 * _279));
      _287 = UberPostBaseCBuffer_080.y * _283;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _299 = ((1.0f / _287) * tan(UberPostBaseCBuffer_080.x * _283));
      } else {
        _299 = ((UberPostBaseCBuffer_080.x * (1.0f / _283)) * atan(_287));
      }
      _300 = _299 + -1.0f;
      _306 = ((_267 + 0.5f) + (_300 * _278));
      _307 = ((_268 + 0.5f) + (_300 * _279));
    } else {
      _306 = _261;
      _307 = _262;
    }
    _308 = t0.SampleBias(s0, float2(_306, _307), (Globals_976), int2(0, 0));
    _501 = (((float4)(t0.SampleBias(s0, float2(_97, _98), (Globals_976), int2(0, 0)))).w);
    _502 = (((UberPostBaseCBuffer_416.x * _253.y) + (UberPostBaseCBuffer_400.x * _198.x)) + (UberPostBaseCBuffer_432.x * _308.z));
    _503 = (((UberPostBaseCBuffer_416.y * _253.y) + (UberPostBaseCBuffer_400.y * _198.x)) + (UberPostBaseCBuffer_432.y * _308.z));
    _504 = (((UberPostBaseCBuffer_416.z * _253.y) + (UberPostBaseCBuffer_400.z * _198.x)) + (UberPostBaseCBuffer_432.z * _308.z));
  } else {
    if (_65) {
      _340 = _99 + TEXCOORD.x;
      _341 = _100 + TEXCOORD.y;
      if (_17) {
        _346 = UberPostBaseCBuffer_080.z * (_340 + -0.5f);
        _347 = UberPostBaseCBuffer_080.z * (_341 + -0.5f);
        _357 = (_346 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _358 = (_347 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _362 = sqrt((_357 * _357) + (_358 * _358));
        _366 = UberPostBaseCBuffer_080.y * _362;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _378 = ((1.0f / _366) * tan(UberPostBaseCBuffer_080.x * _362));
        } else {
          _378 = ((UberPostBaseCBuffer_080.x * (1.0f / _362)) * atan(_366));
        }
        _379 = _378 + -1.0f;
        _385 = ((_346 + 0.5f) + (_379 * _357));
        _386 = ((_347 + 0.5f) + (_379 * _358));
      } else {
        _385 = _340;
        _386 = _341;
      }
      _389 = _101 + TEXCOORD.x;
      _390 = _102 + TEXCOORD.y;
      if (_17) {
        _395 = UberPostBaseCBuffer_080.z * (_389 + -0.5f);
        _396 = UberPostBaseCBuffer_080.z * (_390 + -0.5f);
        _406 = (_395 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _407 = (_396 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _411 = sqrt((_406 * _406) + (_407 * _407));
        _415 = UberPostBaseCBuffer_080.y * _411;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _427 = ((1.0f / _415) * tan(UberPostBaseCBuffer_080.x * _411));
        } else {
          _427 = ((UberPostBaseCBuffer_080.x * (1.0f / _411)) * atan(_415));
        }
        _428 = _427 + -1.0f;
        _434 = ((_395 + 0.5f) + (_428 * _406));
        _435 = ((_396 + 0.5f) + (_428 * _407));
      } else {
        _434 = _389;
        _435 = _390;
      }
      _438 = _103 + TEXCOORD.x;
      _439 = _104 + TEXCOORD.y;
      if (_17) {
        _444 = UberPostBaseCBuffer_080.z * (_438 + -0.5f);
        _445 = UberPostBaseCBuffer_080.z * (_439 + -0.5f);
        _455 = (_444 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _456 = (_445 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _460 = sqrt((_455 * _455) + (_456 * _456));
        _464 = UberPostBaseCBuffer_080.y * _460;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _476 = ((1.0f / _464) * tan(UberPostBaseCBuffer_080.x * _460));
        } else {
          _476 = ((UberPostBaseCBuffer_080.x * (1.0f / _460)) * atan(_464));
        }
        _477 = _476 + -1.0f;
        _483 = ((_444 + 0.5f) + (_477 * _455));
        _484 = ((_445 + 0.5f) + (_477 * _456));
      } else {
        _483 = _438;
        _484 = _439;
      }
      _493 = (((float4)(t0.SampleBias(s0, float2(_385, _386), (Globals_976), int2(0, 0)))).x);
      _494 = (((float4)(t0.SampleBias(s0, float2(_434, _435), (Globals_976), int2(0, 0)))).y);
      _495 = (((float4)(t0.SampleBias(s0, float2(_483, _484), (Globals_976), int2(0, 0)))).z);
    } else {
      _488 = t0.SampleBias(s0, float2(_97, _98), (Globals_976), int2(0, 0));
      _493 = _488.x;
      _494 = _488.y;
      _495 = _488.z;
    }
    _501 = (((float4)(t0.SampleBias(s0, float2(_97, _98), (Globals_976), int2(0, 0)))).w);
    _502 = _493;
    _503 = _494;
    _504 = _495;
  }
  _511 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _511)) {
    _521 = fmod((((Globals_2208.y) * _98) * UberPostBaseCBuffer_448.x), 2.0f);
    _529 = (((select((_521 > 1.0f), (2.0f - _521), _521) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _97;
    _532 = (Globals_2208.w) * (Globals_2208.x);
    _553 = t4.SampleBias(s3, float2(_529, ((select(((frac((((_529 + abs(UberPostBaseCBuffer_464.y)) * _532) - (UberPostBaseCBuffer_464.y * _98)) / ((_532 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _98)), (Globals_976), int2(0, 0));
    _590 = ((((-0.699999988079071f - _553.x) + (exp2(log2(abs(_553.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_553.x < 0.30000001192092896f), 0.0f, 1.0f)) + _553.x) * UberPostBaseCBuffer_336.x;
    _591 = ((((-0.699999988079071f - _553.y) + (exp2(log2(abs(_553.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_553.y < 0.30000001192092896f), 0.0f, 1.0f)) + _553.y) * UberPostBaseCBuffer_336.x;
    _592 = ((((-0.699999988079071f - _553.z) + (exp2(log2(abs(_553.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_553.z < 0.30000001192092896f), 0.0f, 1.0f)) + _553.z) * UberPostBaseCBuffer_336.x;
    _593 = dot(float3(_502, _503, _504), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _596 = (UberPostBaseCBuffer_352.x > 0.5f);
    _609 = select(_596, ((((_590 * _593) - _590) * _501) + _590), _590);
    _610 = select(_596, ((((_591 * _593) - _591) * _501) + _591), _591);
    _611 = select(_596, ((((_592 * _593) - _592) * _501) + _592), _592);
    if (_511) {
      _622 = t5.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _97) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _98) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _636 = (((_622.x * _590) * UberPostBaseCBuffer_336.y) + _609);
      _637 = (((_622.y * _591) * UberPostBaseCBuffer_336.y) + _610);
      _638 = (((_622.z * _592) * UberPostBaseCBuffer_336.y) + _611);
    } else {
      _636 = _609;
      _637 = _610;
      _638 = _611;
    }
    _648 = (_636 + _502);
    _649 = (_637 + _503);
    _650 = (_638 + _504);
    _651 = saturate((((_637 + _636) + _638) * 0.33329999446868896f) + _501);
  } else {
    _648 = _502;
    _649 = _503;
    _650 = _504;
    _651 = _501;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _668 = abs(_98 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _670 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_97 - UberPostBaseCBuffer_112.x);
    _676 = exp2(log2(saturate(1.0f - dot(float2(_670, _668), float2(_670, _668)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _690 = (((_676 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _648);
    _691 = (((_676 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _649);
    _692 = (((_676 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _650);
  } else {
    _690 = _648;
    _691 = _649;
    _692 = _650;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_690, _691, _692);
    float3 tonemapped = UberpostSrgbLutSample(untonemapped, UberPostBaseCBuffer_000, t2, s0);
    _780 = tonemapped.x;
    _781 = tonemapped.y;
    _782 = tonemapped.z;
  } else {
    _697 = saturate(_690);
    _698 = saturate(_691);
    _699 = saturate(_692);
    _727 = select((_699 <= 0.0031308000907301903f), (_699 * 12.920000076293945f), ((exp2(log2(abs(_699)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z;
    _728 = floor(_727);
    _734 = ((select((_698 <= 0.0031308000907301903f), (_698 * 12.920000076293945f), ((exp2(log2(abs(_698)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _736 = (((select((_697 <= 0.0031308000907301903f), (_697 * 12.920000076293945f), ((exp2(log2(abs(_697)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x) + (_728 * UberPostBaseCBuffer_000.y);
    _737 = _727 - _728;
    _739 = t2.SampleLevel(s0, float2((_736 + UberPostBaseCBuffer_000.y), _734), 0.0f);
    _743 = t2.SampleLevel(s0, float2(_736, _734), 0.0f);
    _753 = ((_739.x - _743.x) * _737) + _743.x;
    _754 = ((_739.y - _743.y) * _737) + _743.y;
    _755 = ((_739.z - _743.z) * _737) + _743.z;
    _780 = select((_753 <= 0.040449999272823334f), (_753 * 0.07739938050508499f), exp2(log2(abs((_753 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _781 = select((_754 <= 0.040449999272823334f), (_754 * 0.07739938050508499f), exp2(log2(abs((_754 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _782 = select((_755 <= 0.040449999272823334f), (_755 * 0.07739938050508499f), exp2(log2(abs((_755 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _802 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _806 = 1.0f - (sqrt(dot(float3(_780, _781, _782), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _820 = ((((UberPostBaseCBuffer_208.x * _780) * _802) * _806) + _780);
    _821 = ((((UberPostBaseCBuffer_208.x * _781) * _802) * _806) + _781);
    _822 = ((((UberPostBaseCBuffer_208.x * _782) * _802) * _806) + _782);
  } else {
    _820 = _780;
    _821 = _781;
    _822 = _782;
  }
  SV_Target.x = (_820);
  SV_Target.y = (_821);
  SV_Target.z = (_822);
  SV_Target.w = _651;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
