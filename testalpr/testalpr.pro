include(../common.pri)

QT += core
QT -= gui

TARGET = testalpr
CONFIG += console
TEMPLATE = app

#CONFIG += static


INCLUDEPATH += $${INCLUDE_DIR}
DEPENDPATH  += $${INCLUDE_DIR}

#include (../openalpr/simpleini/simpleini.pri)
SOURCES += main.cpp


LIBS += -L$${DEST_LIBS}
EXTRA_DIRS += \
        $$PWD/../config \
        $$PWD/../runtime_data \
        $$PWD/../matriculas
unix:{
    QMAKE_POST_LINK += $(COPY_DIR) $$quote($${EXTRA_DIRS}) $$quote($${DESTDIR})  #inside of libs make /include/files
}

unix:{
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv
    LIBS +=  -lnQAlpr -lstatedetection
    PRE_TARGETDEPS  += $${DEST_LIBS}/libnQAlpr.a $${DEST_LIBS}/libstatedetection.a
    DESTDIR = $$DEST_BINS

    linux{
        #Link share lib to ../lib rpath
        QMAKE_LFLAGS += -Wl,--rpath=\\\$\$ORIGIN
        QMAKE_LFLAGS += -Wl,--rpath=\\\$\$ORIGIN\/lib
        QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib

        target.path = $${NEWSAGES_DIR}/nQAlpr
        extra.path  = $${NEWSAGES_DIR}/nQAlpr
        extra.files = $${EXTRA_DIRS}
        INSTALLS = target extra
    }
}


#INSTALLS
unix:linux{
    QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
    target.path = $${NEWSAGES_DIR}/nQAlpr
    INSTALLS += target
}

