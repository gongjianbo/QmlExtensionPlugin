import QtQuick 2.12
import QtQuick.Window 2.12
import Gt.Component 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Extension Plugin")

    PaintedTest{
        width: 100
        height: 100
        anchors.centerIn: parent
        fillColor: "gray"
    }

    QmlTest{
        width: 100
        height: 100
        color: "gray"
    }
}
