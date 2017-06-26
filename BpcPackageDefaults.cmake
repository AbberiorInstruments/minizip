# Settings for original CMakeLists.txt as not change stuff
if( BPC_PACKAGE_FOUND )

if( WIN32 )
	set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared libs" FORCE )
else()
	set(BUILD_SHARED_LIBS ON CACHE BOOL "Build shared libs" FORCE )
endif()

set(ZLIB_ROOT "${BPC_LIBRARIES}/${BPC_COMPILER}/zlib/zlib-1.2.8" CACHE PATH "Zlib Root" FORCE)
list( APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/bpc-package )
set( VERSION "1.0.0" )

else()

# Platforms for which to build
set( BPC_PACKAGE_PLATFORMS "MSVC-32-14.0;MSVC-64-14.0;NISOM;nisom-cxx11;GNU-64-Linux-4.7.4" )

endif()