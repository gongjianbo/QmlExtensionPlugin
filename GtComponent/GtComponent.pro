TEMPLATE = lib
TARGET = $$qtLibraryTarget(GtComponent)

QT += quick
QT += qml
QT += core
QT += gui
QT += widgets

CONFIG += c++11
CONFIG += utf8_source
CONFIG += plugin
CONFIG += qtquickcompiler

#module
#uri = Gt.Component

HEADERS += GtPlugin.h
SOURCES += GtPlugin.cpp

OTHER_FILES += qmldir

INCLUDEPATH += $$PWD/PaintedItem
include($$PWD/PaintedItem/PaintedItem.pri)

DESTDIR = $$PWD/../bin/Gt/Component

plugin_qml_files += $$PWD/QmlItem/QmlTest.qml
OTHER_FILES += $$plugin_qml_files

#create qmltypes
#qmlplugindump -nonrelocatable Gt.Component 1.0 D:\git_space\QmlExtensionPlugin\bin > D:\git_space\QmlExtensionPlugin\bin\Gt\Component\plugins.qmltypes

#copy to output dir
copy_qml.files += $$plugin_qml_files
copy_qml.path = $$DESTDIR
copy_files.files += $$PWD/qmldir
copy_files.path = $$DESTDIR
COPIES += copy_qml copy_files

#using make arguments"install".
#make dll and qmldir to qt install dir.
GT_INSTALL_DIR = $$[QT_INSTALL_QML]/Gt/Component
target.path = $$GT_INSTALL_DIR
install_qml.files += $$plugin_qml_files
install_qml.path = $$GT_INSTALL_DIR
install_files.files += $$PWD/qmldir
install_files.path = $$GT_INSTALL_DIR
INSTALLS += target install_qml install_files
