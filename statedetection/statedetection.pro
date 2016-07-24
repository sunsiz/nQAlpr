include($$PWD/../common.pri)
TARGET = statedetection
TEMPLATE = lib
CONFIG += shared_and_static build_all
#CONFIG += staticlib
CONFIG += create_prl
CONFIG += link_prl
RC_FILE = statedetection.rc

OPENALPR_PATH = $${SOURCE_GITS}/openalpr/src/openalpr
SUPPORT_PATH = $${OPENALPR_PATH}/support
SIMPLEINI_PATH = $${OPENALPR_PATH}/simpleini
INCLUDEPATH += $$OPENALPR_PATH $$SUPPORT_PATH $$SIMPLEINI_PATH /usr/local/lib/include
DEPENDPATH  += $$OPENALPR_PATH $$SUPPORT_PATH $$SIMPLEINI_PATH


# ***  LIBS **** #
unix:linux{
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv

    DESTDIR          = $${DEST_LIBS}
    LIBS            += -L$${DEST_LIBS}
    LIBS            += -lsupport
    PRE_TARGETDEPS  += $${DEST_LIBS}/libsupport.a
}


EXTRA_FILES += \
    $${SOURCE_GITS}/openalpr/src/statedetection/state_detector.h

unix:{
    linux{
        QMAKE_POST_LINK += mkdir -p $$quote($${DEST_INCLUDE_DIR}) $$escape_expand(\\n\\t) # qmake need make mkdir -p on subdirs more than root
        for(FILE,EXTRA_FILES){
            QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$FILE) $$quote($${DEST_INCLUDE_DIR}) $$escape_expand(\\n\\t) # copy includes for impl
        }
   }
    #QMAKE_POST_LINK += $(COPY_DIR) $$quote($${DEST_INCLUDE_DIR}) $$quote($${DESTDIR})  #inside of libs make /include/files
}

#INSTALLS
linux:{
        QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
        target.path = $${NEWSAGES_LIBS}
        INSTALLS = target
}

include($$PWD/statedetection.pri)


