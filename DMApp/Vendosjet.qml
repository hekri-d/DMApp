import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Rectangle {
    id: vendosjet
    color: "#2b2b2b"





    property bool toggleArrow: true
    property bool toggleArrow2: true




    Item {
        id: item1
        //        anchors.top: vendosjet.top
        //        anchors.right: parent.right
        //        anchors.left: parent.left
        width: parent.width
        height: parent.height



        ListView {
            id: listView1
            anchors.fill: parent
            model: detyra1

            delegate: Item {
                id: wrapper1
                width: listView1.width
                height: 50



                Rectangle {
                    id: namesRect1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top

                    height: 50

                    color: "#333"
                    border.color: Qt.lighter(color, 1.2)

                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 4

                        font.pixelSize: 20
                        //                        color: '#fff'
                        color: "steelblue"

                        text: name

                    }



                    //    property bool toggleArrow: true
                    Image {
                        id: rightz1
                        source: "qrc:/arrow-down.png"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 3
                        width: 30
                        height: parent.height
                        rotation: 270

                        fillMode: Image.PreserveAspectFit


                    }


                    MouseArea {
                        id: enter1

                        anchors.fill: rightz1

                        onClicked: {

                            mainStack.push(v1comp)
                        }
                    }





                    Image {
                        id: down1
                        source: "qrc:/arrow-down.png"
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 3
                        width: 30
                        height: 30

                        fillMode: Image.PreserveAspectFit

                    }

                    MouseArea {
                        id: expand1
                        anchors.fill: down1
                        onClicked: {

                                updateItem2TopMargi()

                            if(toggleArrow == true){
                                wrapper1.state = "expanded1"
                                toggleArrow = false
                                down1.rotation = 180
                            }

                            else if(toggleArrow == false){
                                wrapper1.state = ""
                                toggleArrow = true
                                down1.rotation = 360
                            }

                        }



                    }



                }




                Item {
                    id: factsView1

                    anchors.top: namesRect1.bottom
                    anchors.left: namesRect1.left
                    anchors.right: namesRect1.right
                    anchors.bottom: parent.bottom

                    opacity: 0

                    Rectangle {
                        anchors.fill: parent

                        gradient: Gradient {
                            GradientStop { position: 0.0; color: "#fed958" }
                            GradientStop { position: 1.0; color: "#fecc2f" }
                        }
                        border.color: '#000000'
                        border.width: 2

                        Text {
                            anchors.fill: parent
                            anchors.margins: 5

                            clip: true
                            wrapMode: Text.WordWrap
                            color: '#1f1f21'

                            font.pixelSize: 22

                            text: facts
                        }
                    }
                }


                //                        border.color: Qt.lighter(color, 1.1) -- interesting that's why it is left here



                states: [
                    State {
                        name: "expanded1"

                        PropertyChanges { target: wrapper1; height: listView1.height }
                        PropertyChanges { target: factsView1; opacity: 1 }
                    }
                ]

                transitions: [
                    Transition {
                        NumberAnimation {
                            duration: 400;
                            properties: "height,width,anchors.rightMargin,anchors.topMargin,opacity,contentY"
                        }
                    }
                ]
            }

        }


        ListModel {
            id: detyra1

            ListElement { name: "DETYRA 1"; facts: "FUCK THIS SHIT.Jane dhene te dhenat duhet te zgjidhet vendosja";  }
        }









    }







    //==============================CORPOLENTS==============

    Component {
        id: v1comp

        Vendosjet_1 {}
    }


    Component {
        id: v2comp

        Vendosjet_2 {}
    }

    //==============================CORPOLENTS==============


//    signal anchorItem2();

//    onAnchorItem2: {
//        if(toggleArrow === true ){
//            item2.anchors.topMargin = 50;
//        }

//        else if(toggleArrow !== true){
//            item2.anchors.topMargin = vendosjet.height
//        }


//    }


    property real anchorsMargin: updateItem2TopMargi();

    function updateItem2TopMargi (){

        if(toggleArrow === true) {
            return 50;
        }

        else if(toggleArrow !== true) {
            return vendosjet.height;
        }
    }




    Item {
        id: item2
        anchors.top: vendosjet.top
        anchors.topMargin: anchorsMargin
        anchors.right: parent.right
        anchors.left: parent.left
        height: parent.height



        ListView {
            id: listView2
            anchors.fill: parent
            model: detyra2

            delegate: Item {
                id: wrapper2
                width: listView2.width
                height: 50


                Rectangle {
                    id: namesRect2
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top

                    height: 50

                    color: "#333"
                    border.color: Qt.lighter(color, 1.2)

                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 4
                        font.pixelSize: 20
                        color: "steelblue"
                        text: name

                    }



                    Image {
                        id: rightz2
                        source: "qrc:/arrow-down.png"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 3
                        width: 30
                        height: parent.height
                        rotation: 270

                        fillMode: Image.PreserveAspectFit

                    }


                    MouseArea {
                        id: enter2
                        anchors.fill: rightz2
                        onClicked: {
                            mainStack.push(v2comp)


                        }
                    }





                    Image {
                        id: down2
                        source: "qrc:/arrow-down.png"
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 3
                        width: 40
                        height: 30

                        fillMode: Image.PreserveAspectFit

                    }

                    MouseArea {
                        id: expand2
                        //                            z:100000
                        anchors.fill: down2

                        onClicked: {

//                            anchorItem2()

                            if(toggleArrow2 == true){
                                wrapper2.state = "expanded2"
                                toggleArrow2 = false
                                down2.rotation = 180
                            }

                            else if(toggleArrow2 == false){
                                wrapper2.state = ""
                                toggleArrow2 = true
                                down2.rotation = 360
                            }

                        }



                    }



                }





                Item {
                    id: factsView2

                    anchors.top: namesRect2.bottom
                    anchors.left: namesRect2.left
                    anchors.right: namesRect2.right
                    anchors.bottom: parent.bottom

                    opacity: 0

                    Rectangle {
                        anchors.fill: parent

                        gradient: Gradient {
                            GradientStop { position: 0.0; color: "#fed958" }
                            GradientStop { position: 1.0; color: "#fecc2f" }
                        }
                        border.color: '#000000'
                        border.width: 2

                        Text {
                            anchors.fill: parent
                            anchors.margins: 5

                            clip: true
                            wrapMode: Text.WordWrap
                            color: '#1f1f21'

                            font.pixelSize: 22

                            text: facts
                        }
                    }
                }


                //                        border.color: Qt.lighter(color, 1.1) -- interesting that's why it is left here



                states: [
                    State {
                        name: "expanded2"

                        PropertyChanges { target: wrapper2; height: listView2.height }
                        PropertyChanges { target: factsView2; opacity: 1 }
                    }
                ]

                transitions: [
                    Transition {
                        NumberAnimation {
                            duration: 400;
                            properties: "height,width,anchors.rightMargin,anchors.topMargin,opacity,contentY"
                        }
                    }
                ]
            }

        }


        ListModel {
            id: detyra2

            ListElement { name: "DETYRA 2"; facts: "Jane dhene te dhenat duhet te zgjidhet vendosja";  }
        }









    }


Rectangle {
    anchors.bottom: vendosjet.bottom
    anchors.left: parent.left
    width: 30; height: width
    color: "#2b2b2b"

    Image {
        id: back
        source: "qrc:/arrow-down.png"
        anchors.fill: parent
        rotation: 90

        MouseArea {
            anchors.fill: parent

            onClicked: {
                mainStack.pop()

            }
        }
    }
}




}
