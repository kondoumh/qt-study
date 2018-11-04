import QtQuick 2.1
import QtQuick.Controls 1.4 as C1
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello")

    C1.TabView {
        id: tabview
        anchors.fill: parent
        C1.Tab {
            title: "My Tab 1"
            Rectangle {
                color: "red"
            }
        }
        C1.Tab {
            title: "My Tab 2"
            Rectangle {
                color: "green"
            }
        }
        C1.Tab {
            title: "My Tab 3"
            Rectangle {
                color: "orange"
            }
        }
        C1.Tab {
            title: "My Tab 4"
            Rectangle {
                color: "yellow"
            }
        }
    }
}
