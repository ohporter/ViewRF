#-------------------------------------------------
#
# Project created by QtCreator 2013-06-15T14:58:14
#
#-------------------------------------------------

QT       += core gui

# Comment this out to build on x86 or other !NEON platforms
#CONFIG   += neon

include (/usr/local/qwt-6.1.0-svn/features/qwt.prf)

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ViewRF
    target.files = ViewRF
    target.path = /usr/local/bin

INSTALLS += target

TEMPLATE = app



SOURCES += main.cpp\
        dialog.cpp \
    spectrumplot.cpp \
    sdrcapture.cpp \
    kiss_fft.c

neon:SOURCES += kiss_fft_bfly2_neon.S \
                 kiss_fft_bfly4_neon.S

HEADERS  += dialog.h \
    spectrumplot.h \
    sdrcapture.h \
    kiss_fft.h \
    _kiss_fft_guts.h

FORMS    += dialog.ui

INCLUDEPATH += /opt/rtl-sdr/include
LIBS        += -L/opt/rtl-sdr/lib -lrtlsdr -L/opt/libusb-1.0/lib -lusb-1.0 -L/opt/libav/lib -lavdevice -lavfilter -lavformat -lavresample -lavcodec -lswscale -lavutil

INCLUDEPATH += /opt/libav/include

OTHER_FILES +=

QMAKE_CXXFLAGS += -Wno-psabi
