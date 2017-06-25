# Settings for original CMakeLists.txt as not change stuff
if( BPC_PACKAGE_FOUND )

set(ZLIB_ROOT "${BPC_LIBRARIES}/${BPC_COMPILER}/zlib/zlib-1.2.8" CACHE PATH "Zlib Root" FORCE)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared libs" FORCE )
message( STATUS "Setting ZLIB_ROOT to ${ZLIB_ROOT}." )
set( VERSION "1.0.0" )

else()

# Platforms for which to build
set( BPC_PACKAGE_PLATFORMS "MSVC-32-14.0;MSVC-64-14.0;NISOM;nisom-cxx11;GNU-64-Linux-4.7.4" )

endif()