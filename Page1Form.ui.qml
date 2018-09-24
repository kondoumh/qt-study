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
        id: splitView
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        orientation: Qt.Horizontal

        C1.TreeView {
            width: parent.width / 3
            height: parent.height
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            model: mymodel
            C1.TableViewColumn {
                role: "display"
                title: "Elements"
                width: 100
            }
        }
        Item {
            width: parent.width *2 / 3
            height: parent.height
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            Text {
                text: "View 2"
                anchors.centerIn: parent
            }
        }
    }

}

/*##^## Designer {
    D{i:2;anchors_height:400;anchors_width:200}D{i:4;anchors_height:410}
}
 ##^##*/
