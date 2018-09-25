import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("ListView")

    Component.onCompleted: {
        var colors = ['orange', 'green', 'yellow', 'cyan', 'blue'];
        var j = 0;
        var color_text = 'black';
        for (var i = 0; i < 10; i++) {
            if (j == colors.length) {
                j = 0;
            }
            if (colors[j] === 'blue' || colors[j] === 'green') {
                color_text = 'white';
            } else {
                color_text = 'black';
            }

            myListView.model.append({
                label: 'hoge' + i,
                colorFill: colors[j],
                colorText: color_text
            });
            j++;
        }
    }

    ListView {
        anchors.fill: parent
        id: myListView
        model: ListModel {}
        spacing: 5
        delegate: Rectangle {
            color: colorFill
            border.color: 'white'
            border.width: 5
            width: mainWindow.width
            height: mainWindow.height / 5
            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                color: colorText
                font.pointSize: 20
                text: label
            }
        }
    }
}
