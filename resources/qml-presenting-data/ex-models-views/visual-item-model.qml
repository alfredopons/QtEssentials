import QtQuick 2.0

Rectangle {
    width: 400; height: 200; color: "black"

    VisualItemModel {
        id: labels
        Rectangle { color: "#cc7777"; radius: 10.0
                    width: 300; height: 50
                    Text { anchors.fill: parent
                           font.pointSize: 32; text: "Books"
                           horizontalAlignment: Qt.AlignHCenter } }
        Rectangle { color: "#cccc55"; radius: 10.0
                    width: 300; height: 50
                    Text { anchors.fill: parent
                           font.pointSize: 32; text: "Music"
                           horizontalAlignment: Qt.AlignHCenter } }
        Rectangle { color: "#99cccc"; radius: 10.0
                    width: 300; height: 50
                    Text { anchors.fill: parent
                           font.pointSize: 32; text: "Movies"
                           horizontalAlignment: Qt.AlignHCenter } }
    }

    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Repeater { model: labels }
    }
}
