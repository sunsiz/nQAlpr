include(../common.pri)
TARGET = video
TEMPLATE = lib
CONFIG += staticlib

CONFIG += create_prl
CONFIG += link_prl

RC_FILE = video.rc

INCLUDEPATH += $${SOURCE_GITS}/openalpr/src/openalpr
DEPENDPATH  += $${SOURCE_GITS}/openalpr/src/openalpr


unix:{
    DESTDIR  = $${DEST_LIBS}
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv

    DESTDIR          = $${DEST_LIBS}
    LIBS            += -L$${DEST_LIBS}
    LIBS            += -lsupport
    PRE_TARGETDEPS  += $${DEST_LIBS}/libsupport.a
}

EXTRA_FILES += \
    $${SOURCE_GITS}/openalpr/src/video/videobuffer.h \
    $${SOURCE_GITS}/openalpr/src/video/logging_videobuffer.h

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
unix:linux{
    QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
    target.path = $${NEWSAGES_LIBS}
    INSTALLS += target
}

include(video.pri)
