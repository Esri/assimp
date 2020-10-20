project "assimp"

  local prj = project()
  local prjDir = prj.basedir

  -- -------------------------------------------------------------
  -- project
  -- -------------------------------------------------------------

  -- common project settings

  dofile (_BUILD_DIR .. "/3rdparty_static_project.lua")

  -- project specific settings

  uuid "BA8CFAE5-30DB-4480-909F-2FF454EFA675"

  flags {
    "NoPCH",
  }

  -- The only formats we want are 3DS, DAE, OBJ, GLTF, FBX
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
    "ASSIMP_BUILD_NO_CSM_IMPORTER",
    "ASSIMP_BUILD_NO_DXF_IMPORTER",
    "ASSIMP_BUILD_NO_HMP_IMPORTER",
    "ASSIMP_BUILD_NO_IFC_IMPORTER",
    "ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
    "ASSIMP_BUILD_NO_IRR_IMPORTER",
    "ASSIMP_BUILD_NO_LWO_IMPORTER",
    "ASSIMP_BUILD_NO_LWS_IMPORTER",
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
    "ASSIMP_BUILD_NO_STL_IMPORTER",
    "ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
    "ASSIMP_BUILD_NO_X_IMPORTER",
    "ASSIMP_BUILD_NO_X3D_IMPORTER",
    "ASSIMP_BUILD_NO_XGL_IMPORTER",
  }

  files {
    "code/**.cpp",
    "code/**.h",
    "code/**.hpp",
    "contrib/irrXML/irrXML.h", -- Required by Collada (DAE) reader
    "contrib/irrXML/irrXML.cpp",
    "include/**.h"
  }

  includedirs {
    _3RDPARTY_DIR .. "/boost",
    _3RDPARTY_DIR .. "/rapidjson/include",
    _3RDPARTY_DIR .. "/zlib",
    "code",
    "contrib/irrXML",
    "include",
    prjDir,
  }

  -- -------------------------------------------------------------
  -- configurations
  -- -------------------------------------------------------------

  if (_PLATFORM_WINDOWS) then
    -- -------------------------------------------------------------
    -- configuration { "windows" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/3rdparty_static_win.lua")

    -- project specific configuration settings

    configuration { "windows" }

      buildoptions {
        "/bigobj", -- Allow large object files for unity builds and template heavy objects
      }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_LINUX) then
    -- -------------------------------------------------------------
    -- configuration { "linux" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux.lua")

    -- project specific configuration settings

    -- configuration { "linux" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Release", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Debug", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Debug", "ARM64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Release", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Release", "ARM64" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_MACOS) then
    -- -------------------------------------------------------------
    -- configuration { "macosx" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac.lua")

    -- project specific configuration settings

    -- configuration { "macosx" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_COCOA) then
    -- -------------------------------------------------------------
    -- configuration { "cocoa*" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa.lua")

    -- project specific configuration settings

    -- configuration { "cocoa*" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_arm64_release" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_sim64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_sim64_debug.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_sim64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_sim64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_sim64_release.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_sim64_release" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_x64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_x64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_x64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_x64_release" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_IOS) then
    -- -------------------------------------------------------------
    -- configuration { "ios*" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios.lua")

    -- project specific configuration settings

    -- configuration { "ios*" }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "ios_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "ios_arm64_release" }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_debug.lua")

    -- project specific configuration settings

    -- configuration { "ios_sim64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_release.lua")

    -- project specific configuration settings

    -- configuration { "ios_sim64_release" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "android*" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android.lua")

    -- project specific configuration settings

    configuration { "android*" }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_armv7_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_release.lua")

    -- project specific configuration settings

    -- configuration { "android_armv7_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_x86_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "android_x86_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "android_arm64_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_x64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_x64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_x64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "android_x64_release" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_WINUWP) then
    -- -------------------------------------------------------------
    -- configuration { "windows" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp.lua")

    -- project specific configuration settings

    configuration { "windows" }

      defines {
        "_CRT_SECURE_NO_WARNINGS",
      }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "ARM64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "ARM64" }

    -- -------------------------------------------------------------
  end

  if (_IS_QT) then
    -- -------------------------------------------------------------
    -- configuration { "qt" }
    -- -------------------------------------------------------------

    local qt_include_dirs = PROJECT_INCLUDE_DIRS

    -- Add additional QT include dirs
    -- table.insert(qt_include_dirs, <INCLUDE_PATH>)

    createqtfiles(project(), qt_include_dirs)

    -- -------------------------------------------------------------
  end
