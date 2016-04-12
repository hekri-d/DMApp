import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Layouts 1.1

import "js/Tabela2.1.js" as Tabela2_1JS

Item {

    Rectangle {
        anchors.fill: parent
        color: "teal"

        Rectangle {
            id: topRect
            width: parent.width
            height: parent.height/15
            anchors.horizontalCenter: parent.horizontalCenter
            visible: false

        }

        Text {
            id: teDhenat
            text: qsTr("Te dhenat")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 5
            font.pixelSize: topRect.height*0.6
        }





        Text { font.pixelSize: topRect.height*0.6
            id: hMax
            text: qsTr("H_max: ")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: teDhenat.bottom
            anchors.topMargin: topRect.height/3
        }

        TextInput {
            id: hMaxInput
            anchors.left: hMax.right
            anchors.leftMargin: 10
            anchors.verticalCenter: hMax.verticalCenter
            anchors.right: hMaxNjesia.left
            anchors.rightMargin: 10

            height: topRect.height*0.85

            font.pixelSize: topRect.height*0.6

            Rectangle {
                anchors.fill: parent
                color: "lightblue"
                z:-1

                anchors.leftMargin: -5; anchors.rightMargin: -5
            }
        }


        Text { font.pixelSize: topRect.height*0.6
            id: hMaxNjesia
            text: qsTr("mikro m")
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: hMaxInput.verticalCenter
            width: topRect.width/5
        }


        Text { font.pixelSize: topRect.height*0.6
            id: hMin
            text: qsTr("H_min: ")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: hMax.bottom
            anchors.topMargin: 10
        }

        TextInput {
            id: hMinInput
            anchors.left: hMin.right
            anchors.leftMargin: 10
            anchors.verticalCenter: hMin.verticalCenter
            anchors.right: hMinNjesia.left
            anchors.rightMargin: 10
            height: topRect.height*0.83

            font.pixelSize: topRect.height*0.6

            Rectangle {
                anchors.fill: parent
                color: "lightblue"
                z:-1

                anchors.leftMargin: -5; anchors.rightMargin: -5
            }
        }


        Text { font.pixelSize: topRect.height*0.6
            id: hMinNjesia
            text: qsTr("mikro m")
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: hMinInput.verticalCenter
            width: topRect.width/5
        }





        Text { font.pixelSize: topRect.height*0.6
            id: diametriNominal
            text: qsTr("D. nominal: ")
            anchors.left: hMin.left
//            anchors.leftMargin: 10
            anchors.top: hMin.bottom
            anchors.topMargin: 10
        }

        TextInput {
            id: diametriNominalInput
            anchors.left: diametriNominal.right
            anchors.leftMargin: 10
            anchors.verticalCenter: diametriNominal.verticalCenter
            anchors.right: diametriNominalNjesia.left
            anchors.rightMargin: 10
            height: topRect.height*0.83

            font.pixelSize: topRect.height*0.6

            Rectangle {
                anchors.fill: parent
                color: "lightblue"
                z:-1

                anchors.leftMargin: -5; anchors.rightMargin: -5
            }
        }



        Text { font.pixelSize: topRect.height*0.6
            id: diametriNominalNjesia
            text: qsTr("mm")
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: diametriNominal.verticalCenter
            width: topRect.width/5
        }








        GroupBox {
            id: vendosjaRadioButtonsGroupBox
            anchors.top: hMin.bottom
            anchors.topMargin: 20
            width: topRect.width/3.8
            height: topRect*2


            ExclusiveGroup {
                id: vendosjaExclusiveGroup
            }

            ColumnLayout {
                id: column
                spacing: 20


                RadioButton {
                    id: stppbRadioButton
                    exclusiveGroup: vendosjaExclusiveGroup
                    checked: true


                    Text {
                        text: "STPPB"
                        font.pixelSize: topRect.height*0.6
                        anchors.left: parent.right
                        anchors.verticalCenter: parent.verticalCenter

                        MouseArea {
                            anchors.fill: parent

                            onClicked: stppbRadioButton.checked = true
                        }
                    }


                    style: RadioButtonStyle {
                        indicator: Rectangle {
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 6
                            border.color: control.activeFocus ? "darkblue" : "gray"
                            border.width: 1
                            Rectangle {
                                anchors.fill: parent
                                visible: control.checked
                                color: "#555"
                                radius: 4
                                anchors.margins: 4
                            }
                        }
                    }
                }

                //        anchors.leftMargin: 150
                //        anchors.top:vendosjaRadioButtonsGroupBox.top
                //        anchors.verticalCenter: parent.verticalCenter
                //        anchors.horizontalCenter: parent.horizontalCenter
                //        anchors.horizontalCenterOffset:

                RadioButton {
                    id: stppjRadioButton
                    exclusiveGroup: vendosjaExclusiveGroup

                    Text {
                        text: "STPPJ"
                        font.pixelSize: topRect.height*0.6
                        anchors.left: parent.right
                        anchors.verticalCenter: parent.verticalCenter

                        MouseArea {
                            anchors.fill: parent

                            onClicked: stppjRadioButton.checked = true
                        }
                    }



                    style: RadioButtonStyle {
                        indicator: Rectangle {
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 6
                            border.color: control.activeFocus ? "darkblue" : "gray"
                            border.width: 1
                            Rectangle {
                                anchors.fill: parent
                                visible: control.checked
                                color: "#555"
                                radius: 4
                                anchors.margins: 4
                            }
                        }
                    }
                }


            }



        }





Rectangle {
    id: slreckt
    anchors.left: vendosjaRadioButtonsGroupBox.right
    anchors.leftMargin: 20
    anchors.top: vijaNdarese.bottom
    anchors.topMargin: 20
    width: topRect.width/1.5
    color: "orange"
    height: topRect.height/3

    Rectangle {
        height: parent.height
        color: "lightgreen"
        anchors.right: parent.right
        width: parent.width/2
        anchors.bottom: parent.bottom
    }

    Rectangle {
        height: parent.height
        color: "orange"
        anchors.left: parent.left
        width: slreckt.width *sliderTnT.value
        anchors.bottom: parent.bottom
        z:100

    }

    Slider {
        id: sliderTnT
        value: 0.56
//        anchors.left: parent.left
//        anchors.leftMargin: 150
//        anchors.top:vendosjaRadioButtonsGroupBox.top
//        anchors.verticalCenter: parent.verticalCenter
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.horizontalCenterOffset:
        anchors.left: parent.horizontalCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom



        minimumValue: 0.5
        maximumValue: 0.6

        stepSize: 0.01

        style: SliderStyle {
             groove: Rectangle {
                 implicitWidth: 50
                 implicitHeight: topRect.height/3.1
                 color: "lightgreen"
//                         radius: 8
             }
             handle: Rectangle {
                 id: handlez
                 anchors.centerIn: parent
//                 anchors.bottom: parent.bottom
                 color: control.pressed ? "white" : "lightgray"
                 border.color: "gray"
//                         border.width: 2
                 implicitWidth: 10
                 implicitHeight: 34
//                         radius: 12
             }
         }
     }


}



        Text {
            id: sliderTextTest
            text: sliderTnT.value
            anchors.centerIn: parent
            font.pixelSize: 23
        }







        Rectangle {
            id:vijaNdarese
            height: 3
            color: "black"

            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5

            anchors.top: hMinNjesia.bottom
            anchors.topMargin: 10
        }










    }


    //BUTTONS

    Rectangle {
        id: buttons
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 4
        height: topRect.height*1.2
        color: "teal"

        RowLayout {
            id: rows
            anchors.fill: parent
            //        spacing: 2
            layoutDirection: Qt.RightToLeft
            visible: true



            Rectangle {
                id: backButton
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width/4
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 24
                color: "lightblue"

                border.color: "black"
                border.width: 3
                radius: 5

                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 8
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 8
                    anchors.left: parent.left
                    anchors.leftMargin: 24
                    anchors.right: parent.right
                    anchors.rightMargin: 24
                    border.color: "black"
                    border.width: 3
                    radius: 2
                    color: "lightblue"




                Image {
                    source: "qrc:/left-arrow.png"
                    anchors.fill: parent
                    rotation: 180
                    fillMode: Image.PreserveAspectFit
                }

                }

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        mainStack.pop()
                    }

                }
            }



            Rectangle {
                id: llogaritButton
                color: "lightblue"
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width/4
                anchors.verticalCenter: parent.verticalCenter

                border.color: "black"
                border.width: 3
                radius: 5

                Image {
                    source: "qrc:/ok.png"
                    anchors.fill: parent
                    anchors.leftMargin: 15
                    anchors.rightMargin: 15
                    fillMode: Image.PreserveAspectFit
                }


                MouseArea {
                    anchors.fill: parent

                    onClicked: {

                        var tolerancaTnPrim = 0;
                        var tolerancaTPrim = 0;
                        var tolerancaT = 0;
                        var tolerancatPrim = 0;
                        var tolerancat = 0;

                        var cilesiaVrima = 0;
                        var cilesiaAksi = 0;


                        tolerancaTnPrim = hMaxInput.text - hMinInput.text;



                        tolerancaTPrim = sliderTnT.value*tolerancaTnPrim;

                        cilesiaVrima = Tabela2_1JS.cilesiaFushesToleruese( diametriNominalInput.text,
                                                                           tolerancaTPrim);console.log(cilesiaVrima)
                        tolerancaT = Tabela2_1JS.getTolerancen(cilesiaVrima,diametriNominalInput.text);


                        console.log(tolerancaT)
                        tolerancatPrim = tolerancaTnPrim - Tabela2_1JS.getTolerancen(cilesiaAksi,
                                                                                    tolerancaT);
                        cilesiaAksi = Tabela2_1JS.cilesiaFushesToleruese( diametriNominalInput.text,
                                                                         tolerancatPrim);
                        tolerancat = Tabela2_1JS.cilesiaFushesToleruese( diametriNominalInput.text,
                                                                        tolerancatPrim);
                        console.log(tolerancat)


                    }



                }




            }


            Rectangle {
                id: mbyllButton
                color: "lightblue"
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width/4
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin:24
                border.color: "black"
                border.width: 3
                radius: 5
                Image {
                    source: "qrc:/exit.svg"
                    anchors.fill: parent
                    anchors.topMargin: 10
                    anchors.bottomMargin: 10
                    fillMode: Image.PreserveAspectFit
                }
                MouseArea {
                    anchors.fill: parent

                    onClicked:Qt.quit()

                }
            }




        }



    }

}
