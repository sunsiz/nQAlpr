SOURCES += \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/filesystem.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/timing.cpp \
    $${SOURCE_GITS}/openalpr/src/openalpr/support/tinythread.cpp\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/platform.cpp\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/utf8.cpp\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/version.cpp\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/bitstate.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/compile.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/dfa.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/filtered_re2.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/mimics_pcre.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/nfa.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/onepass.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/parse.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/perl_groups.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prefilter.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prefilter_tree.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/prog.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/re2.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/regexp.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/set.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/simplify.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/stringpiece.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/tostring.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/unicode_casefold.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/unicode_groups.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/hash.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/stringprintf.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/rune.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/strutil.cc\
    $${SOURCE_GITS}/openalpr/src/openalpr/support/re2/util/valgrind.cc


HEADERS += \
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
    $${SOURCE_GITS}/openalpr/src/openalpr/support/version.h

