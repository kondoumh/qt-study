import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello Dial")

    ColumnLayout {
        anchors.fill: parent
        ProgressBar {
            id: myprogress
            Layout.fillWidth: true
            from: mydial.from
            to: mydial.to
            value: mydial.value
        }
        Dial {
            Layout.fillWidth: true
            Layout.fillHeight: true
            id: mydial
            from: 0
            to: 100
            value:50
        }
    }
}
