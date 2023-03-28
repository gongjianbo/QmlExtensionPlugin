import QtQuick 2.12
import QtQuick.Window 2.12
import "./Sub"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Extension Plugin")

    CustomPaintedTest {
        width: 100
        height: 100
        anchors.centerIn: parent
    }

    CustomQmlTest {
        width: 100
        height: 100
    }
}
