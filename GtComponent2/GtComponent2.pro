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
CONFIG += qtquickcompiler

#module
#uri = Gt.Component2
QML_IMPORT_NAME = Gt.Component2
#QML_IMPORT_MAJOR_VERSION = 1
#QML_IMPORT_MINOR_VERSION = 0
QML_IMPORT_VERSION = 1.0

HEADERS += GtPlugin.h
SOURCES += GtPlugin.cpp

OTHER_FILES += qmldir

INCLUDEPATH += $$PWD/PaintedItem
include($$PWD/PaintedItem/PaintedItem.pri)

DESTDIR = $$PWD/../bin/Gt/Component2

plugin_qml_files += $$PWD/QmlItem/QmlTest.qml
OTHER_FILES += $$plugin_qml_files

#copy to output dir
copy_qml.files += $$plugin_qml_files
copy_qml.path = $$DESTDIR
copy_files.files += $$OUT_PWD/plugins.qmltypes
copy_files.files += $$PWD/qmldir
copy_files.path = $$DESTDIR
COPIES += copy_qml copy_files

#using make arguments"install".
#make dll and qmldir to qt install dir.
GT_INSTALL_DIR = $$[QT_INSTALL_QML]/Gt/Component2
target.path = $$GT_INSTALL_DIR
install_qml.files += $$plugin_qml_files
install_qml.path = $$GT_INSTALL_DIR
install_files.files += $$OUT_PWD/plugins.qmltypes
install_files.files += $$PWD/qmldir
install_files.path = $$GT_INSTALL_DIR
INSTALLS += target install_qml install_files
