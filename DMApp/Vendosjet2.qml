import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0 as Labz

//import Qt.labs.controls 1.0 as Labz

import "js/Tabela21.js" as Tabela2_1JS
import "js/Tabela24.js" as Tabela2_4JS
import "js/Tabela25.js" as Tabela2_5JS

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

            focus: true

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
            anchors.top: pjesemarrjaTolerancave.bottom
//            anchors.topMargin: topRect.height/13
            width: topRect.width/3.8
            height: topRect*2


            ExclusiveGroup {
                id: vendosjaExclusiveGroup
            }

            ColumnLayout {
                id: column
                spacing: topRect.height/4

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




        Text {
            id: pjesemarrjaTolerancave
            text: qsTr("Pjesemarrja e tol. ne vendosje")
            anchors.left: vendosjaRadioButtonsGroupBox.right
            anchors.leftMargin: 10
            anchors.top: diametriNominalInput.bottom
            anchors.topMargin: 5

            font.pixelSize: topRect.height*0.6

        }


/*  Teksti nga ana e majte e spinBoxit T */

        Text {
            id: tprimPjesmarrja
            text: qsTr("T_prim=")
            anchors.left: vendosjaRadioButtonsGroupBox.right
            anchors.leftMargin: 20
//            anchors.top: diametriNominalInput.bottom
            anchors.top: pjesemarrjaTolerancave.bottom
            anchors.topMargin: 5

            font.pixelSize: topRect.height*0.6

        }


        Labz.SpinBox {
            id: vrimaLartesia
            anchors.top: tprimPjesmarrja.top
            anchors.left: tprimPjesmarrja.right
            anchors.leftMargin: 10
            width: topRect.width/3; height: topRect.height/1.2
            value: 50
            from: 50; to: 60; stepSize: 1


            down.indicator: Rectangle {
                  height: parent.height
                  implicitWidth: 25
                  implicitHeight: 20
                  color: "lightblue"
                  border.color:  "black"

                  Rectangle {
                      x: (parent.width - width) / 2
                      y: (parent.height - height) / 2
                      width: parent.width / 3
                      height: 2
                      color: "black"
//                      color: control.enabled ? "#353637" : "#bdbebf"
                  }
              }

            contentItem: Rectangle {

                anchors.fill: parent
                color: "lightblue"
                border.color:  "black"

                Text {
                    id: spinBoxValue
                    anchors.centerIn: parent
                    text: vrimaLartesia.value/100
                    font.pixelSize: topRect.height*0.58
                }

            }

            up.indicator: Rectangle {
                height: parent.height
                anchors.right: parent.right
                implicitWidth: 25
                implicitHeight: 20
                color: "lightblue"
                border.color:  "black"

                Rectangle {
                    x: (parent.width - width) / 2
                    y: (parent.height - height) / 2
                    width: parent.width / 3
                    height: 2
                    color: "black"
                }
                Rectangle {
                    x: (parent.width - width) / 2
                    y: (parent.height - height) / 2
                    width: 2
                    height: parent.width / 3
                    color: "black"
                }
            }

        }


Text {
    id: ttprimPjesmarrja
    text: qsTr("t_prim = " + (1- parseFloat(spinBoxValue.text)).toFixed(2))
    anchors.left: tprimPjesmarrja.left
    anchors.top: tprimPjesmarrja.bottom
    anchors.topMargin: 3
    font.pixelSize: topRect.height*0.6
}






        Rectangle {
            id:vijaNdarese
            height: 3
            color: "black"

            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5

            anchors.top: ttprimPjesmarrja.bottom
            anchors.topMargin: topRect.height/2
        }






        Text {
            id: vText
            text: qsTr("Vendosja standarde është")
            font.pixelSize: topRect.height*0.6
            anchors.top: vijaNdarese.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            color: "lightblue"
            width: topRect.width/1.5
            height: topRect.height/1.3
            anchors.top: vText.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: vText.horizontalCenter

            Text {
                id: vendosjaDisplay
                text: "diametriNominalInput.text +"
                anchors.centerIn: parent
                font.pixelSize: topRect.height*0.6
            }
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
                    source: "qrc:/images/left-arrow.png"
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
                    source: "qrc:/images/ok.png"
                    anchors.fill: parent
                    anchors.leftMargin: 15
                    anchors.rightMargin: 15
                    fillMode: Image.PreserveAspectFit
                }


                MouseArea {
                    anchors.fill: parent

                    onClicked: {

                        console.log(vrimaLartesia.value)

                        var tolerancaTnPrim = 0;
                        var tolerancaTPrim = 0;
                        var tolerancaT = 0;
                        var tolerancatPrim = 0;
                        var tolerancat = 0;

                        var cilesiaVrima = 0;
                        var cilesiaAksi = 0;


                        tolerancaTnPrim = hMaxInput.text - hMinInput.text; console.log("TnPrim: ",tolerancaTnPrim)

                        tolerancaTPrim = ((vrimaLartesia.value)/100)*tolerancaTnPrim; console.log("TPrim: ",tolerancaTPrim)

                        cilesiaVrima = Tabela2_1JS.cilesiaFushesToleruese( diametriNominalInput.text,
                                                                           tolerancaTPrim); console.log("cil vri: ",cilesiaVrima)

                        tolerancaT = Tabela2_1JS.getTolerancen(cilesiaVrima,diametriNominalInput.text); console.log("T: ",tolerancaT)


                        console.log(tolerancaT)
                        tolerancatPrim = tolerancaTnPrim - tolerancaT; /*Tabela2_1JS.getTolerancen(cilesiaAksi,
                                                                                    tolerancaT);*/ console.log("tPrim: ",tolerancatPrim)
                        cilesiaAksi = Tabela2_1JS.cilesiaFushesToleruese( diametriNominalInput.text,
                                                                         tolerancatPrim); console.log("cil aksi: ",cilesiaAksi)
                        tolerancat = Tabela2_1JS.getTolerancen(cilesiaAksi,
                                                               diametriNominalInput.text);console.log("t: ",tolerancat)
                        console.log(tolerancat)



                        /* vlerat kufitare per es */

                        var esKufiriPoshtem = hMinInput.text;
                        var esKufiriEperm = hMaxInput.text - (tolerancaT+tolerancat);

                        console.log(esKufiriPoshtem); console.log(esKufiriEperm)

                        var es = Tabela2_4JS.esGetShkronjen(esKufiriPoshtem, esKufiriEperm,
                                                          diametriNominalInput.text);

                        var ES = Tabela2_5JS.eSGetShkronjen(esKufiriPoshtem, esKufiriEperm, diametriNominalInput.text);



                        /* Display vendosjen */

                        if (stppbRadioButton.checked) {
                            vendosjaDisplay.text = diametriNominalInput.text + "H" + cilesiaVrima + " / " + es + cilesiaAksi;
                        }

                        else if (stppjRadioButton.checked){
                            vendosjaDisplay.text = diametriNominalInput.text + ES + cilesiaVrima + " / " + "h" + cilesiaAksi;
                        }



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
                    source: "qrc:/images/exit.svg"
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
