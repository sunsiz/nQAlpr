include(../common.pri)
TARGET = sortstate
TEMPLATE = app

INCLUDEPATH += $${SOURCE_GITS}/openalpr/src/openalpr/support
DEPENDPATH  += $${SOURCE_GITS}/openalpr/src/openalpr/support

INCLUDEPATH += $${SOURCE_GITS}/openalpr/src/openalpr
DEPENDPATH  += $${SOURCE_GITS}/openalpr/src/openalpr

SOURCES += \
    $${SOURCE_GITS}/openalpr/src/misc_utilities/sortstate.cpp

LIBS += -L$${DEST_LIBS}
unix:{
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv
    LIBS +=  -lnQAlpr -lstatedetection
    DESTDIR = $$DEST_BINS

    linux{
        #Link share lib to ../lib rpath
        QMAKE_LFLAGS += -Wl,--rpath=\\\$\$ORIGIN
        QMAKE_LFLAGS += -Wl,--rpath=\\\$\$ORIGIN\/lib
    }
}


#INSTALLS
unix:linux{
    QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
    target.path = $${NEWSAGES_DIR}/nQAlpr
    INSTALLS += target
}




