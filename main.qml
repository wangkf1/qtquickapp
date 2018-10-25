//import related modules
import QtQuick 2.11
import QtQuick.Controls 1.4
import QtQuick.Window 2.11

//window containing the application
import QtQuick.Layouts 1.3
ApplicationWindow {
    id: applicationWindow

    //title of the application
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    //    //menu containing two menu items
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    //Content Area

    //a button in the middle of the content area
    Button {
        text: qsTr("Hello World")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Slider {
        id: sliderHorizontal
        height: 22
        anchors.top: rowLayout.bottom
        anchors.topMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
    }

    RowLayout {
        id: rowLayout
        height: 36
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5

        RowLayout {
            id: rowLayout1
            width: 100
            height: 100

            Button {
                id: button
                text: qsTr("Button")
            }

            Button {
                id: button1
                text: qsTr("Button")
            }

            Button {
                id: button2
                text: qsTr("Button")
            }

        }

        RowLayout {
            id: rowLayout2
            width: 100
            height: 100
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

            Button {
                id: button3
                text: qsTr("Button")
            }

            Button {
                id: button4
                text: qsTr("Button")
            }

            Button {
                id: button5
                text: qsTr("Button")
            }
        }

    }

}

/*##^## Designer {
    D{i:7;anchors_width:630;anchors_x:5;anchors_y:47}D{i:18;anchors_width:629;anchors_x:6;anchors_y:6}
}
 ##^##*/
