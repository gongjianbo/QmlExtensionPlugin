import QtQuick 2.12
import QtQuick.Window 2.12
import Gt.Component2 1.0

//https://www.qt.io/blog/qml-type-registration-in-qt-5.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Extension Plugin")

    PaintedTest{
        width: 100
        height: 100
        anchors.centerIn: parent
        fillColor: "orange"
    }

    QmlTest{
        width: 100
        height: 100
        color: "orange"
    }
}
