import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true;
    width: 640
    height: 480
    title: qsTr("Hello Combo")

    ColumnLayout {
        anchors.fill: parent
        Text {
            Layout.fillWidth: true
            text: mycombo.currentText
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 30
        }
        ComboBox {
            Layout.fillWidth: true
            id: mycombo
            font.pointSize: 20
            model: ListModel {
                ListElement {
                    text: "Element 1"
                }
                ListElement {
                    text: "Element 2"
                }
                ListElement {
                    text: "Element 3"
                }
                ListElement {
                    text: "Element 4"
                }
                ListElement {
                    text: "Element 5"
                }
            }
        }
    }
}
