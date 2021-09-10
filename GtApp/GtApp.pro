TEMPLATE = app
QT += quick
QT += qml
QT += core
QT += gui
QT += widgets

CONFIG += c++11
CONFIG += utf8_source

DESTDIR = $$PWD/../bin

SOURCES += \
        main.cpp

RESOURCES += qml.qrc
