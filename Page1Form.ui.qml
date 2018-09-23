import QtQuick 2.9
import QtQuick.Controls 1.4 as C1
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 600
    height: 400

    title: qsTr("Page 1")

    C1.SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            width: 200
            Layout.maximumWidth: 400
            color: "lightblue"
            border.width: 2
            Text {
                text: "View 1"
                anchors.centerIn: parent
            }
        }
        Rectangle {
            id: centerItem
            Layout.minimumWidth: 50
            Layout.fillWidth: true
            color: "lightgray"
            border.width: 2
            Text {
                text: "View 2"
                anchors.centerIn: parent
            }
        }
        Rectangle {
            width: 200
            color: "lightgreen"
            border.width: 2
            Text {
                text: "View 3"
                anchors.centerIn: parent
            }
        }
    }

}
