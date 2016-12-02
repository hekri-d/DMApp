import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1


/* Veq test. Mbetet te rregullohet dhe perfundohet. */

Rectangle {
    id: b
    color: "teal"
    anchors.fill: parent


    Text {
        id: testTekst
        text: qsTr("Nr.Buolonave")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 200
        font.pixelSize: 50
    }

    TextField {
        id: testinput
        anchors.left: testTekst.right
        anchors.leftMargin: 20
        anchors.verticalCenter: testTekst.verticalCenter
        width: 100

        style: TextFieldStyle  {
            textColor: "black"

            background: Rectangle {
                radius: 2
                implicitHeight: 30;
                implicitWidth: 100;
                border.color: "#333"
                border.width: 1
                color: "orange"

            }
        }

    }
}
