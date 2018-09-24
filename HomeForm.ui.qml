import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4 as C1

Page {
    width: 600
    height: 400

    title: qsTr("Home")

    Label {
        text: qsTr("You are on the home page.")
        anchors.centerIn: parent
    }
}
