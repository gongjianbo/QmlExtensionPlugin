QT += quick
QT += qml
QT += core
QT += gui
QT += widgets
# QT += network
# QT += sql
# QT += webengine
# QT += concurrent
# QT += multimedia

# QTPLUGIN += qsqlite
# QTPLUGIN += qlocalstorage

CONFIG += qt
CONFIG += c++11
# Memory overflow when adding large amounts of resources
CONFIG += resources_big
# Generating QML binary files
#CONFIG += qtquickcompiler
CONFIG += utf8_source

TEMPLATE = app

INCLUDEPATH += $$PWD/src
include($$PWD/src/src.pri)
DESTDIR  += $$PWD/app

# UI_DIR  += temp/ui_dir
# RCC_DIR += temp/rcc_dir
# MOC_DIR += temp/moc_dir
# OBJECTS_DIR += temp/obj_dir
# RC_ICONS = $$PWD/xxx

CONFIG(debug, debug|release) {
    TARGET = Demo_Debug
} else {
    TARGET = Demo_Release
}
