#-------------------------------------------------
#
# Project created by QtCreator 2020-10-11T12:31:24
#
#-------------------------------------------------

requires(qtHaveModule(httpserver))

QT       += core gui webengine webenginewidgets xml httpserver

CONFIG(release, debug|release):DEFINES += QT_NO_DEBUG_OUTPUT

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = colorpie
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

include(lib/color_widgets.pri)

SOURCES += \
        elidedlabel.cpp \
        main.cpp \
        mainwindow.cpp \
        manager.cpp \
        supportedinputs.cpp \
        utils.cpp

HEADERS += \
        elidedlabel.h \
        mainwindow.h \
        manager.h \
        supportedinputs.h \
        utils.h

FORMS += \
        mainwindow.ui \
        manager.ui \
        supportedinputs.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    breeze.qrc \
    resources.qrc
