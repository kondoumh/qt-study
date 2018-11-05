import QtQuick 2.11
import QtQuick.Controls 2.4
import QtCharts 2.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Charts")

    ChartView {
        anchors.fill: parent
        theme: ChartView.ChartThemeDark
        antialiasing: true

        PieSeries {
            id: pieSeries1
            PieSlice {
                label: "Foo"
                value: 94.9
            }
            PieSlice {
                label: "Bar"
                value: 5.1
            }
        }
    }
}
