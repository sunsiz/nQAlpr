include($$PWD/common.pri)
TEMPLATE = subdirs

SUBDIRS += \
        openalpr/support \
        openalpr/simpleini \
        video \
        statedetection \
        openalpr

CONFIG   += ordered

SUBDIRS += \
        sortstate \
        calibrate \
        testalpr

