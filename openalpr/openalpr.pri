DEFINES += INSTALL_PREFIX=\\\".\\\"
SOURCES += \
    $${SOURCE_GITS}/openalpr/src/openalpr/alpr.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/alpr_impl.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/config.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/config_helper.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/utility.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/ocr.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/colorfilter.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/prewarp.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/transformation.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/licenseplatecandidate.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/binarize_wolf.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/pipeline_data.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/cjson.c \
    $${SOURCE_GITS}/openalpr/src/openalpr/motiondetector.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/result_aggregator.cpp \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detector.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorcpu.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorcuda.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorocl.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorfactory.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectormorph.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectormask.cpp \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/postprocess/postprocess.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/postprocess/regexrule.cpp \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/charactersegmenter.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/histogram.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/histogramvertical.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/histogramhorizontal.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/segment.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/segmentationgroup.cpp \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/edgefinder.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/platecorners.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/platelines.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/textlinecollection.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/scorekeeper.cpp \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/characteranalysis.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/platemask.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/textcontours.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/textline.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/linefinder.cpp \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/hash.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/rune.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/stringprintf.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/strutil.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/valgrind.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/bitstate.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/compile.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/dfa.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/filtered_re2.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/mimics_pcre.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/nfa.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/onepass.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/parse.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/perl_groups.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prefilter.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prefilter_tree.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prog.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/re2.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/regexp.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/set.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/simplify.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/stringpiece.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/tostring.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/unicode_casefold.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/unicode_groups.cc \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/filesystem.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/platform.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/timing.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/tinythread.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/utf8.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/version.cpp \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/simpleini/ConvertUTF.c

#HEADERS HACKS
HEADERS += \
    #$$PWD/constants.h \
    #$$PWD/constants_hack.h
    $${SOURCE_GITS}/openalpr/src/openalpr/constants.h
HEADERS += \
    $${SOURCE_GITS}/openalpr/src/openalpr/alpr.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/alpr_impl.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/binarize_wolf.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/cjson.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/colorfilter.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/config.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/config_helper.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/licenseplatecandidate.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/motiondetector.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/ocr.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/pipeline_data.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/prewarp.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/result_aggregator.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/transformation.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/TRexpp.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/utility.h \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detector.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detector_types.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorcpu.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorcuda.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorfactory.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectormask.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectormorph.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/detection/detectorocl.h \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/edgefinder.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/platecorners.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/platelines.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/scorekeeper.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/edges/textlinecollection.h \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/postprocess/postprocess.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/postprocess/regexrule.h \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/charactersegmenter.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/histogram.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/histogramhorizontal.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/histogramvertical.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/segment.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/segmentation/segmentationgroup.h \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/simpleini/ConvertUTF.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/simpleini/simpleini.h \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/atomicops.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/benchmark.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/flags.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/logging.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/mutex.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/pcre.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/random.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/sparse_array.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/sparse_set.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/test.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/thread.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/utf.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/util.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/valgrind.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/filtered_re2.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prefilter.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prefilter_tree.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prog.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/regexp.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/set.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/stringpiece.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/unicode_casefold.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/unicode_groups.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/variadic_function.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/walker-inl.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/utf8/checked.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/utf8/core.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/utf8/unchecked.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/windows/dirent.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/windows/unistd_partial.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/windows/utils.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/fast_mutex.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/filesystem.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/platform.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/timing.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/tinydir.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/tinythread.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/utf8.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/version.h \
    \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/characteranalysis.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/linefinder.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/platemask.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/textcontours.h \
    $${SOURCE_GITS}/openalpr/src/openalpr/textdetection/textline.h
