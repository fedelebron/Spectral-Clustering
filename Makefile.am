AM_CPPFLAGS=-std=c++0x -g
AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS}
OBJDIR=obj
bin_PROGRAMS = SpectralClustering visualization
SpectralClustering_SOURCES = src/spectral.h src/spectral.cpp src/SpectralClustering.cpp \
                             src/k_means.hpp

SpectralClustering_LDFLAGS = -lboost_program_options

visualization_SOURCES = src/visualization.cpp

dist_noinst_SCRIPTS = autogen.sh
