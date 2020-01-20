import QtQuick 2.12
import QtQuick.Window 2.12

import JbosPlugin 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: "Jbos Demo by GongJianBo"

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
