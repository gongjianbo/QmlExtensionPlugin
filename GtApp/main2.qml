import QtQuick 2.15
import QtQuick.Window 2.15
import "./Sub"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Extension Plugin")

    CustomPaintedTest2 {
        width: 100
        height: 100
        anchors.centerIn: parent
    }

    CustomQmlTest2 {
        width: 100
        height: 100
    }
}
