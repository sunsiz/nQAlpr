include(../../common.pri)
TARGET = support
TEMPLATE = lib
CONFIG += staticlib
CONFIG += create_prl
CONFIG += link_prl
RC_FILE = support.rc
DEFINES += support

INCLUDEPATH += $${SOURCE_GITS}/openalpr/src/openalpr/support
DEPENDPATH  += $${SOURCE_GITS}/openalpr/src/openalpr/support

unix:{
    DESTDIR  = $${DEST_LIBS}

}

unix:linux{
    QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
    target.path = $${NEWSAGES_LIBS}
    INSTALLS += target
}


include(support.pri)





