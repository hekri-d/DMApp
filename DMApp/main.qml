import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
//import QtQuick.Layouts 1.1

//test test test


Window {
    id: root
    visible: true
    width: 340
    height: 460

    color: "grey"



    Component {
        id: vcompz

        Vendosjet{}
    }

StackView {
    id: mainStack
    anchors.fill: parent

    initialItem: Item {
        id: ajtemi
//        anchors.fill: parent


        Grid {
            id: gridi
            columns: 1
            anchors.fill: parent

            Rectangle {
                id:katrori1
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                                                      //GRADIENT
                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {
                    text: qsTr("VENDOSJET")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }




                MouseArea {
                    id: mous
                    anchors.fill: parent
                    enabled: mouseAreas


                    onClicked: {
                        mainStack.push(vcompz)

                    }
                }
            }

            Rectangle {
                id: katrori2
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {

                    text: qsTr("TRANSMETUESIT")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }

                MouseArea {
                    anchors.fill: parent
                    enabled: mouseAreas
                }
            }

            Rectangle {
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {

                    text: qsTr("BULONAT")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }

                MouseArea {
                    anchors.fill: parent

                    //onClicked:
                }
            }

            Rectangle {
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {

                    text: qsTr("RRIPAT")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }

                MouseArea {
                    anchors.fill: parent


                    //onClicked:
                }
            }

            Rectangle {
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {

                    text: qsTr("ZINXHIRET")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }

                MouseArea {
                    anchors.fill: parent

                    //onClicked:
                }
            }

            Rectangle {
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {

                    text: qsTr("SUSTAT")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }

                MouseArea {
                    anchors.fill: parent
                    enabled: mouseAreas

                    onClicked: loader.setSource("Tabela8-14.qml")
                }
            }

            Rectangle {
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {

                    text: qsTr("BOSHTET")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }

                MouseArea {
                    anchors.fill: parent
                    enabled: mouseAreas

                    onClicked: loader.setSource("Tabela8-14.qml")
                }
            }

            Rectangle {
                width: parent.width
                height: parent.height / 9.6
                color: "lightsteelblue"

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4a4a4a" }
                        GradientStop { position: 1.0; color: "#2b2b2b" }
                    }
                }

                Text {

                    text: qsTr("DHEMBEZORET")
                    anchors.centerIn: parent
                    font.pixelSize: parent.height/3
                    color: "steelblue"
                }

                MouseArea {
                    anchors.fill: parent
                    enabled: mouseAreas

                    onClicked: loader.setSource("Tabela8-14.qml")
                }
            }


        }




        Rectangle {
            id: mbyll
            color: "lightsteelblue"
            anchors.bottom: parent.bottom
    //        width: parent.width
            height: parent.height / 7
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 2

            Rectangle {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#4a4a4a" }
                    GradientStop { position: 1.0; color: "#2b2b2b" }
                }
            }
    //        z: 1

            Text {
                id: quit
                text: qsTr("MBYLL")
                anchors.centerIn: parent
                font.pixelSize: 23
    //            font.bold: true
                color: "steelblue"


            }

            MouseArea {
                anchors.fill: parent

                onClicked: Qt.quit()

            }
        }


    }
}



}
