import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qStr("File Dialog")

    FileDialog {
        id: openFileDialog
        title: "Open File"
        folder: shortcuts.home
        selectExisting: true
        nameFilters: ["All files (*)"]
        onAccepted: {
            fileNameTextField.text = fileUrl;
        }
        onRejected: {
            fileNameTextField.text = "Canceled";
            console.log("Canceled");
        }
    }

    Column {
        anchors.centerIn: parent
        Button {
            text: "Open"
            onClicked: {
                openFileDialog.open();
            }
        }

        TextField {
            id: fileNameTextField
        }
    }
}
