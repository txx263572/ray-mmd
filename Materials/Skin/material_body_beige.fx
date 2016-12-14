#define USE_CUSTOM_MATERIAL 1

// 反照率贴图
#define ALBEDO_MAP_ENABLE 1
#define ALBEDO_MAP_IN_TEXTURE 1
#define ALBEDO_MAP_IN_SCREEN_MAP 0 // 使用来至屏幕或avi的纹理
#define ALBEDO_MAP_ANIMATION_ENABLE 0 // 指定图片是GIF/APNG时启用 (ALBEDO_MAP_IN_TEXTURE 必须为 0)
#define ALBEDO_MAP_ANIMATION_SPEED 1  // 最小为1倍速
#define ALBEDO_MAP_UV_FLIP 0
#define ALBEDO_MAP_APPLY_COLOR 1
#define ALBEDO_MAP_APPLY_DIFFUSE 1
#define ALBEDO_APPLY_MORPH_COLOR 0
#define ALBEDO_MAP_FILE "albedo.png"

const float3 albedo = float3(247, 199, 149) / 255;
const float albedoMapLoopNum = 1.0;

// 透明通道
#define ALPHA_MAP_ENABLE 1
#define ALPHA_MAP_IN_TEXTURE 1
#define ALPHA_MAP_ANIMATION_ENABLE 0
#define ALPHA_MAP_ANIMATION_SPEED 0
#define ALPHA_MAP_UV_FLIP 0
#define ALPHA_MAP_SWIZZLE 3 // (R = 0, G = 1, B = 2, A = 3)
#define ALPHA_MAP_FILE "alpha.png"

const float alpha = 1.0;
const float alphaMapLoopNum = 1.0;

// 法线贴图
#define NORMAL_MAP_ENABLE 0
#define NORMAL_MAP_IN_SPHEREMAP 0
#define NORMAL_MAP_IS_COMPRESSED 0 // RG normal map to RGB normal.
#define NORMAL_MAP_UV_FLIP 0
#define NORMAL_MAP_FILE "normal.png"

const float normalMapLoopNum = 1.0;
const float normalMapScale = 1.0;

// 子法线贴图
#define NORMAL_MAP_SUB_ENABLE 1
#define NORMAL_MAP_SUB_UV_FLIP 0
#define NORMAL_MAP_SUB_IS_COMPRESSED 0 // RG normal map to RGB normal.
#define NORMAL_MAP_SUB_FILE "../_MaterialMap/skin.png"

const float normalMapSubScale = 1.5;
const float normalMapSubLoopNum = 50.0;

// 光滑度
#define SMOOTHNESS_MAP_ENABLE 0
#define SMOOTHNESS_MAP_IN_TOONMAP 0
#define SMOOTHNESS_MAP_IS_ROUGHNESS 0
#define SMOOTHNESS_MAP_UV_FLIP 0
#define SMOOTHNESS_MAP_SWIZZLE 0 // (R = 0, G = 1, B = 2, A = 3)
#define SMOOTHNESS_MAP_FILE "smoothness.png"

const float smoothness = 0.55;
const float smoothnessMapLoopNum = 1.0;

// 金属程度
#define METALNESS_MAP_ENABLE 0
#define METALNESS_MAP_IN_TOONMAP 0
#define METALNESS_MAP_UV_FLIP 0
#define METALNESS_MAP_SWIZZLE 0 // (R = 0, G = 1, B = 2, A = 3)
#define METALNESS_MAP_FILE "metalness.png"

const float metalness = 0.0;
const float metalnessMapLoopNum = 1.0;
const float metalnessBaseSpecular = 0.04;

// Subsurface Scattering Color
#define SSS_ENABLE 1
#define SSS_MAP_ENABLE 0
#define SSS_MAP_UV_FLIP 0
#define SSS_MAP_IS_THICKNESS 0
#define SSS_MAP_APPLY_COLOR 0   // using a thickness map, enable it
#define SSS_MAP_FILE "transmittance.png"

const float3 transmittance = float3(238, 104, 94) / 255;
const float transmittanceStrength = 1.6f; // (0 ~ 0.99 marble, 1.0 ~ 1.99 skin)
const float transmittanceMapLoopNum = 1.0;

// 黑色素
#define MELANIN_MAP_ENABLE 0
#define MELANIN_MAP_IN_TOONMAP 0
#define MELANIN_MAP_UV_FLIP 0
#define MELANIN_MAP_SWIZZLE 0 // (R = 0, G = 1, B = 2, A = 3)
#define MELANIN_MAP_FILE "melanin.png"

const float melanin = 0.0;
const float melaninMapLoopNum = 1.0;

// 发光贴图
#define EMISSIVE_ENABLE 0
#define EMISSIVE_USE_ALBEDO 0 //参数来至albedo,但可以使用EMISSIVE_APPLY_COLOR 和 EMISSIVE_APPLY_MORPH_COLOR
#define EMISSIVE_MAP_ENABLE 0
#define EMISSIVE_MAP_IN_TEXTURE 0
#define EMISSIVE_MAP_IN_SCREEN_MAP 0 // 使用来至屏幕或avi的纹理
#define EMISSIVE_MAP_ANIMATION_ENABLE 0 // 指定图片是GIF/APNG时启用 (ALBEDO_MAP_IN_TEXTURE 必须为 0)
#define EMISSIVE_MAP_ANIMATION_SPEED 1  // 最小为1倍速
#define EMISSIVE_MAP_UV_FLIP 0
#define EMISSIVE_APPLY_COLOR 0
#define EMISSIVE_APPLY_MORPH_COLOR 0 // Light color for multi-light-source
#define EMISSIVE_APPLY_MORPH_INTENSITY 0 // Light intensity for multi-light-source
#define EMISSIVE_MAP_FILE "emissive.png"

const float3 emissive = 1.0;
const float emissiveIntensity = 1.0;
const float emissiveMapLoopNum = 1.0;

// 视差贴图
#define PARALLAX_MAP_ENABLE 0
#define PARALLAX_MAP_UV_FLIP 0
#define PARALLAX_MAP_SUPPORT_ALPHA 0
#define PARALLAX_MAP_FILE "height.png"

const float parallaxMapScale = 0.01;
const float parallaxMapLoopNum = 1.0;

#define CUSTOM_ENABLE 1  // ID
#define CUSTOM_MAP_ENABLE 0
#define CUSTOM_MAP_IN_TOONMAP 0
#define CUSTOM_MAP_UV_FLIP 0
#define CUSTOM_MAP_COLOR_FLIP 0
#define CUSTOM_MAP_SWIZZLE 0 // (R = 0, G = 1, B = 2, A = 3)
#define CUSTOM_MAP_FILE "custom.png"

const float custom = 0.6;
const float customMapLoopNum = 1.0;

#include "../material_common.fxsub"