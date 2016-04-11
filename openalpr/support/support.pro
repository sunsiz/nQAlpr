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

include(support.pri)
unix:{
    DESTDIR  = $${DEST_LIBS}
}





