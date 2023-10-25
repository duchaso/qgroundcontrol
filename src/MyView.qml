import QtQuick          2.11
import QtQuick.Controls 2.4

import QGroundControl 1.0

Rectangle {
    id: root

    z: QGroundControl.zOrderTopMost + 2

    color: "white"

    width: 0
    height: 0
    visible: false

    Button {
        id: button

        text: "close"
        flat: true
        anchors.centerIn: parent
        onClicked: root.visible = false

        contentItem: Text {
            text: button.text
            color: button.down ? "green" : "blue"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
    }
}
