##############################################################################
##                                lodepnglib                                ##
##                                                                          ##
##                      Copyright © 2019 ARQADIUM, LLC                      ##
##                           All rights reserved.                           ##
##############################################################################

include base.mk

PROJECT := lodepng
EXEFILE :=
SOFILE  :=
AFILE   := 1

# <system> includes
INCLUDES := include
# "local" includes
INCLUDEL := src include/lodepng

# libraries
LIBS    :=
LIBDIRS :=

# frameworks (macOS only)
FWORKS :=

CFILES    := src/lodepng.c
HFILES    := include/lodepng/lodepng.h
CPPFILES  :=
HPPFILES  :=
OFILES    := $(CFILES:.c=.c.o) $(CPPFILES:.cpp=.cpp.o)
# address-sanitisation metadata
GCNOFILES := $(CFILES:.c=.c.gcno) $(CPPFILES:.cpp=.cpp.gcno)
GCDAFILES := $(CFILES:.c=.c.gcda) $(CPPFILES:.cpp=.cpp.gcda)

CFLAGS += -DLODEPNG_NO_COMPILE_ENCODER=1
CXXFLAGS += -DLODEPNG_NO_COMPILE_ENCODER=1

NO_TES := 1

# this defines all our usual targets
include targets.mk
