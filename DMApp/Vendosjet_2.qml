import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3

Item {



Rectangle {
    width: 100
    height: 62
    color: "red"
}



Button {
    anchors.centerIn: parent

    width: 200; height: 100;

    style: ButtonStyle {
        background: Rectangle {
            color: "lightblue"
        }
    }

    text: "back"

    onClicked: mainStack.pop()}

}
