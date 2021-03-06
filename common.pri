CONFIG += c++11
#***  VARIABLES FOR MULTI_OS_ARCH ***#
CONFIG(release, debug|release){
    #message(Release)
    BUILD_TYPE = release
}else{
    #message(Debug)
    BUILD_TYPE = debug
}

BUILD_DIR =   $$PWD/../../build/$${QT_VERSION}
SOURCE_GITS = $$PWD/../../deps

#message("Proyecto:" $$TARGET)
message("Proyecto: "$$TARGET "/ Build Dir:" $$BUILD_DIR)

unix{
    macx{
        ARCH_TYPE       = macx
    }
    linux{
        NEWSAGES_DIR =  /opt/newsages
        NEWSAGES_LIBS = /opt/newsages/lib
        !contains(QT_ARCH, x86_64){
            !contains(QT_ARCH, arm){
                ARCH_TYPE       =  linux32
                #message("Compiling for " $$QT_ARCH " 32bit system")
            }else{
                ARCH_TYPE       =  arm
                #message("Compiling for " $$QT_ARCH " 32bit system")
            }
        }else{
            !contains(QT_ARCH, arm){
                ARCH_TYPE       =  linux64
                #message("Compiling for " $$QT_ARCH " 64bit system")
            }else{
                ARCH_TYPE       =  arm64
                #message("Compiling for " $$QT_ARCH " 64bit system")
            }
        }
    }
}
win32{
        !contains(QT_ARCH, x86_64){
            ARCH_TYPE       =  win32
            #message("Compiling for 32bit system")
        }else{
            ARCH_TYPE       =  win64
            #message("Compiling for 64bit system")
        }
}


ARCH_DIR = $${OUT_PWD}/$${ARCH_TYPE}
DEST_LIBS = $${BUILD_DIR}/$${ARCH_TYPE}/$${BUILD_TYPE}/nQAlpr/lib
DEST_BINS = $${BUILD_DIR}/$${ARCH_TYPE}/$${BUILD_TYPE}/nQAlpr
#*** INCLUDE IMPL ***#
DEST_INCLUDE_DIR = $${BUILD_DIR}/$${ARCH_TYPE}/$${BUILD_TYPE}/nQAlpr/include
INCLUDE_DIR = $${BUILD_DIR}/$${ARCH_TYPE}/$${BUILD_TYPE}/nQAlpr/include

GLOBAL_INCLUDE   = $${BUILD_DIR}/$${ARCH_TYPE}/$${BUILD_TYPE}
GLOBAL_LIBS      = $${BUILD_DIR}/$${ARCH_TYPE}/$${BUILD_TYPE}

#VERSION = 2
OPENALPR_MAJOR_VERSION="2"
OPENALPR_MINOR_VERSION="2"
OPENALPR_PATCH_VERSION="4"
OPENALPR_VERSION = ($${OPENALPR_MAJOR_VERSION}.$${OPENALPR_MINOR_VERSION}.$${OPENALPR_PATCH_VERSION})

QMAKE_CXXFLAGS += -DOPENCV_MAJOR_VERSION=2
QMAKE_CXXFLAGS += -DOPENALPR_MAJOR_VERSION=$${OPENALPR_MAJOR_VERSION}
QMAKE_CXXFLAGS += -DOPENALPR_MINOR_VERSION=$${OPENALPR_MINOR_VERSION}
QMAKE_CXXFLAGS += -DOPENALPR_PATCH_VERSION=$${OPENALPR_PATCH_VERSION}
#QMAKE_CXXFLAGS_RELEASE += 2
##QMAKE_CXXFLAGS += -fPIC

QMAKE_CFLAGS += -DOPENALPR_MAJOR_VERSION=$${OPENALPR_MAJOR_VERSION}
QMAKE_CFLAGS += -DOPENALPR_MINOR_VERSION=$${OPENALPR_MINOR_VERSION}
QMAKE_CFLAGS += -DOPENALPR_PATCH_VERSION=$${OPENALPR_PATCH_VERSION}
#QMAKE_CFLAGS_RELEASE += 2

