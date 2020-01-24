TEMPLATE = lib
QT += qml
QT += quick
QT += core
QT += gui
CONFIG += plugin
CONFIG += c++11
CONFIG += utf8_source

uri    = JbosPlugin
TARGET = JbosPlugin
TARGET = $$qtLibraryTarget($$TARGET)

DISTFILES += qmldir

PLUGIN_TYPE  = JbosPlugin
target.path  = $$[QT_INSTALL_QML]/$$PLUGIN_TYPE
qmldir.path  = $$[QT_INSTALL_QML]/$$PLUGIN_TYPE
qmldir.files = qmldir

INSTALLS += target qmldir

#make dll and amldir to qt install dir.
#or using make arguments"install".
win32 {
    DESTDIR = $$[QT_INSTALL_QML]/$$PLUGIN_TYPE

    src_file = $$PWD/qmldir
    dst_dir = $$DESTDIR

    src_file ~= s,/,\\,g
    dst_dir ~= s,/,\\,g
    QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$src_file) $$quote($$dst_dir) $$escape_expand(\\n\\t)
}

HEADERS += \
    JbosPlugin.h

SOURCES += \
    JbosPlugin.cpp

DEFINES += QT_DEPRECATED_WARNINGS

INCLUDEPATH += $$PWD/PaintedItem
INCLUDEPATH += $$PWD/QmlItem

include($$PWD/PaintedItem/PaintedItem.pri)
include($$PWD/QmlItem/QmlItem.pri)
