#!/bin/bash
module load netcdf-4.7.0-gcc-7.4.0-7bttin3
module load netcdf-cxx4-4.3.0-gcc-7.4.0-rokguzy

export BOOST_ROOT=/home/tqd/Code/boostBuild
export Boost_INCLUDE_DIRS=$BOOST_ROOT/include
export Boost_LIBRARY_DIRS=$BOOST_ROOT/lib
export BOOST_INCLUDEDIR=$BOOST_ROOT/include
export BOOST_LIBRARYDIR=$BOOST_ROOT/lib

export LIBCONFIGDIR=/home/tqd/Code/libconfig/libconfigBuild
export LIBCONFIGLIB=$LIBCONFIGDIR/lib/libconfig++.so
export LIBCONFIGPP_LIBRARIES=lconfig++
export LIBCONFIGPP_LIBRARY=lconfig++
export LIBCONFIGPP_STATIC_LIBRARY=
export LIBCONFIG_INCLUDE_DIR=$LIBCONFIGDIR/include
export LIBCONFIGPP_INCLUDE_DIR=$LIBCONFIGDIR/include
export LIBCONFIG_LIBRARY=lconfig
