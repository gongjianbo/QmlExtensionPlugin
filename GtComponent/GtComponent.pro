TEMPLATE = lib
TARGET = GtComponent
TARGET = $$qtLibraryTarget($$TARGET)
QT += quick
QT += qml
QT += core
QT += gui
QT += widgets

CONFIG += c++11
CONFIG += utf8_source
CONFIG += plugin

#module
#uri = Gt.Component

SOURCES += \
        GtPlugin.cpp

HEADERS += \
        GtPlugin.h

OTHER_FILES = qmldir

INCLUDEPATH += $$PWD/PaintedItem
include($$PWD/PaintedItem/PaintedItem.pri)

INCLUDEPATH += $$PWD/QmlItem
include($$PWD/QmlItem/QmlItem.pri)

DESTDIR = $$PWD/../bin/Gt/Component

#using make arguments"install".
DESTPATH = $$[QT_INSTALL_QML]/Gt/Component
target.path = $$DESTPATH
qmldir.files = $$PWD/qmldir
qmldir.path = $$DESTPATH
INSTALLS += target qmldir
#make dll and amldir to qt install dir.
#or using make arguments"install".
#win32 {
#    DESTDIR = $$[QT_INSTALL_QML]/Gt/Component
#    src_file = $$PWD/qmldir
#    dst_dir = $$DESTDIR
#    src_file ~= s,/,\\,g
#    dst_dir ~= s,/,\\,g
#    QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$src_file) $$quote($$dst_dir) $$escape_expand(\\n\\t)
#}

cpqmldir.files = qmldir
cpqmldir.path = $$DESTDIR
COPIES += cpqmldir
