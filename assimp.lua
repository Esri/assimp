project "assimp"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "BA8CFAE5-30DB-4480-909F-2FF454EFA675"

-- The only formats we want are 3DS, COLLADA (DAE), OBJ, GLTF, FBX
defines {
  "ASSIMP_BUILD_NO_OWN_ZLIB",
  "ASSIMP_BUILD_NO_EXPORT",
  "ASSIMP_BUILD_NO_3D_IMPORTER",
  "ASSIMP_BUILD_NO_3MF_IMPORTER",
  "ASSIMP_BUILD_NO_AC_IMPORTER",
  "ASSIMP_BUILD_NO_AMF_IMPORTER",
  "ASSIMP_BUILD_NO_ASE_IMPORTER",
  "ASSIMP_BUILD_NO_ASSBIN_IMPORTER",
  "ASSIMP_BUILD_NO_B3D_IMPORTER",
  "ASSIMP_BUILD_NO_BASE_IMPORTER",
  "ASSIMP_BUILD_NO_BLEND_IMPORTER",
  "ASSIMP_BUILD_NO_BVH_IMPORTER",
  "ASSIMP_BUILD_NO_C4D_IMPORTER",
  "ASSIMP_BUILD_NO_COB_IMPORTER",
  "ASSIMP_BUILD_NO_CSM_IMPORTER",
  "ASSIMP_BUILD_NO_DXF_IMPORTER",
  "ASSIMP_BUILD_NO_HMP_IMPORTER",
  "ASSIMP_BUILD_NO_IFC_IMPORTER",
  "ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
  "ASSIMP_BUILD_NO_IRR_IMPORTER",
  "ASSIMP_BUILD_NO_LWO_IMPORTER",
  "ASSIMP_BUILD_NO_LWS_IMPORTER",
  "ASSIMP_BUILD_NO_M3D_EXPORTER",
  "ASSIMP_BUILD_NO_M3D_IMPORTER",
  "ASSIMP_BUILD_NO_MD2_IMPORTER",
  "ASSIMP_BUILD_NO_MD3_IMPORTER",
  "ASSIMP_BUILD_NO_MD5_IMPORTER",
  "ASSIMP_BUILD_NO_MDC_IMPORTER",
  "ASSIMP_BUILD_NO_MDL_IMPORTER",
  "ASSIMP_BUILD_NO_MMD_IMPORTER",
  "ASSIMP_BUILD_NO_MS3D_IMPORTER",
  "ASSIMP_BUILD_NO_NDO_IMPORTER",
  "ASSIMP_BUILD_NO_NFF_IMPORTER",
  "ASSIMP_BUILD_NO_OFF_IMPORTER",
  "ASSIMP_BUILD_NO_OGRE_IMPORTER",
  "ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
  "ASSIMP_BUILD_NO_PLY_IMPORTER",
  "ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
  "ASSIMP_BUILD_NO_Q3D_IMPORTER",
  "ASSIMP_BUILD_NO_RAW_IMPORTER",
  "ASSIMP_BUILD_NO_SIB_IMPORTER",
  "ASSIMP_BUILD_NO_SMD_IMPORTER",
  "ASSIMP_BUILD_NO_STEP_IMPORTER",
  "ASSIMP_BUILD_NO_STL_IMPORTER",
  "ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
  "ASSIMP_BUILD_NO_X3D_IMPORTER",
  "ASSIMP_BUILD_NO_XGL_IMPORTER",
  "ASSIMP_BUILD_NO_XX_IMPORTER",
  "ASSIMP_BUILD_NO_X_IMPORTER",
}

includedirs {
  ".",
  "code",
  "contrib/pugixml/src",
  "include",
  _3RDPARTY_DIR .. "/boost",
  _3RDPARTY_DIR .. "/rapidjson/include",
  _3RDPARTY_DIR .. "/zlib",
  _3RDPARTY_DIR .. "/zlib/contrib/minizip",
}

files {
  "code/**.cpp",
  "contrib/pugixml/src/pugixml.cpp",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_COCOA) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
end

if (_PLATFORM_WINUWP) then
end
