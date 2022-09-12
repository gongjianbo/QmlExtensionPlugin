TEMPLATE = lib
TARGET = $$qtLibraryTarget(GtComponent2)

QT += quick
QT += qml
QT += core
QT += gui
QT += widgets

CONFIG += c++11
CONFIG += utf8_source
CONFIG += plugin
CONFIG += qmltypes

#module
#uri = Gt.Component2
QML_IMPORT_NAME = Gt.Component2
#QML_IMPORT_MAJOR_VERSION = 1
#QML_IMPORT_MINOR_VERSION = 0
QML_IMPORT_VERSION = 1.0

SOURCES += \
        GtPlugin.cpp

HEADERS += \
        GtPlugin.h

OTHER_FILES = qmldir

INCLUDEPATH += $$PWD/PaintedItem
include($$PWD/PaintedItem/PaintedItem.pri)

INCLUDEPATH += $$PWD/QmlItem
include($$PWD/QmlItem/QmlItem.pri)

DESTDIR = $$PWD/../bin/Gt/Component2

copy_qmltypes.files = $$OUT_PWD/plugins.qmltypes
copy_qmltypes.path = $$DESTDIR
COPIES += copy_qmltypes

#using make arguments"install".
DESTPATH = $$[QT_INSTALL_QML]/Gt/Component2
target.path = $$DESTPATH
qmldir.files = $$PWD/qmldir
qmldir.path = $$DESTPATH
INSTALLS += target qmldir
#make dll and amldir to qt install dir.
#or using make arguments"install".
#win32 {
#    DESTDIR = $$[QT_INSTALL_QML]/Gt/Component2
#    src_file = $$PWD/qmldir
#    dst_dir = $$DESTDIR
#    src_file ~= s,/,\\,g
#    dst_dir ~= s,/,\\,g
#    QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$src_file) $$quote($$dst_dir) $$escape_expand(\\n\\t)
#}

cpqmldir.files = qmldir
cpqmldir.path = $$DESTDIR
COPIES += cpqmldir
