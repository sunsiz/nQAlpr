include(../../common.pri)
TARGET = simpleini
TEMPLATE = lib
CONFIG += staticlib
CONFIG += create_prl
CONFIG += link_prl
RC_FILE = simpleini.rc

include(simpleini.pri)
unix:{
    DESTDIR  = $${DEST_LIBS}   
}

unix:linux{
    QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
    target.path = $${NEWSAGES_LIBS}
    INSTALLS = target
}



