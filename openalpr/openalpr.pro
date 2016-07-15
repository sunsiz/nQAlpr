include(../common.pri)
TARGET = nQAlpr
TEMPLATE = lib
#CONFIG += staticlib
CONFIG += shared_and_static build_all
#CONFIG += lib
CONFIG += create_prl
CONFIG += link_prl
RC_FILE = nQAlpr.rc

#DEFINES += openlpr_EXPORTS
#QMAKE_CXXFLAGS += -DCMAKE_INSTALL_PREFIX=$${BUILD_DIR}/$${ARCH_TYPE}/$${BUILD_TYPE}
#QMAKE_CXXFLAGS += -DINSTALL_PREFIX=
#QMAKE_CXXFLAGS += -DDEFAULT_CONFIG_FILE='"/config/openalpr.conf"'

#DEFINES += INSTALL_PREFIX='""'

#GPU
#QMAKE_CXXFLAGS += -DCOMPILE_GPU=1
#QMAKE_CXXFLAGS += -DSTATE_DETECTION_LIB=statedetection

OPENALPR_PATH = $${SOURCE_GITS}/openalpr/src/openalpr
INCLUDEPATH += $${OPENALPR_PATH} $${OPENALPR_PATH}/support $${OPENALPR_PATH}/simpleini
DEPENDPATH  += $${OPENALPR_PATH} $${OPENALPR_PATH}/support $${OPENALPR_PATH}/simpleini

# add open CV & tesseract
# ***  LIBS **** #
DESTDIR  = $${DEST_LIBS}
unix:linux{
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv
    LIBS += -ltesseract

    LIBS            += -L$${DEST_LIBS}
    LIBS            += -lstatedetection -lpthread -lsupport -lsimpleini
    PRE_TARGETDEPS  += $${DEST_LIBS}/libsupport.a $${DEST_LIBS}/libsimpleini.a  $${DEST_LIBS}/libstatedetection.a
}

EXTRA_FILES += \
    $${SOURCE_GITS}/openalpr/src/openalpr/alpr.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/prewarp.h

unix:{
    DESTDIR  = $${DEST_LIBS}
    linux{
        QMAKE_POST_LINK += mkdir -p $$quote($${DEST_INCLUDE_DIR}) $$escape_expand(\\n\\t) # qmake need make mkdir -p on subdirs more than root
        for(FILE,EXTRA_FILES){
            QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$FILE) $$quote($${DEST_INCLUDE_DIR}) $$escape_expand(\\n\\t) # copy includes for impl
        }
    }
    #QMAKE_POST_LINK += $(COPY_DIR) $$quote($${DEST_INCLUDE_DIR}) $$quote($${DESTDIR})  #inside of libs make /include/files
}

EXTRA_DIRS += \
    $$PWD/../config \
    $$PWD/../runtime_data
    ##$$PWD/../matriculas
    QMAKE_POST_LINK += $(COPY_DIR) $$quote($${EXTRA_DIRS}) $$quote($${DEST_BINS}) $$escape_expand(\\n\\t) #inside of libs make /include/files



#INSTALLS
unix:linux{
    QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
    target.path = $${NEWSAGES_LIBS}
    INSTALLS += target
}


include(openalpr.pri)
