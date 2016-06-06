include(../../common.pri)
TARGET = simpleini
TEMPLATE = lib
#CONFIG += staticlib
CONFIG += shared_and_static build_all
CONFIG += create_prl
CONFIG += link_prl
RC_FILE = simpleini.rc

unix:{
    DESTDIR  = $${DEST_LIBS}   
}

unix:linux{
    QMAKE_LFLAGS += -Wl,--rpath=/opt/newsages/lib
    target.path = $${NEWSAGES_LIBS}
    INSTALLS = target
}

include(simpleini.pri)


