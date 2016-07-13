TEMPLATE = lib
LANGUAGE  = C++
CONFIG += c++14 precompile_header
CONFIG -= qt

QMAKE_CXX="g++-5"
QMAKE_CC="gcc-5"
QMAKE_CXXFLAGS += -O3 -std=c++14

TARGET = P2S_Lib

DEFINES += P2S_LIB_LIBRARY

PRECOMPILED_HEADER = precompiled.h

SOURCES += \
    rpcrequest.cpp

HEADERS += precompiled.h \
        p2s_lib_global.h \
    irequest.h \
    rpcrequest.h

#unix {
#    target.path = /usr/lib
#    INSTALLS += target
#}
