import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Rectangle {
    id: vendosjet
    color: "#2b2b2b"

    width: Screen.width
    height: Screen.height



/*  ================= TOGGLE ARROWS ============= */

    property bool toggleArrow: true
    property bool toggleArrow2: true
    property bool toggleArrow3: true
    property bool toggleArrow4: true


/*  ================= TOGGLE ARROWS END ============= */


    Item {
        id: item1
        anchors.right: parent.right
        anchors.left: parent.left
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

                    MouseArea {
                        id: enter1

                        anchors.fill: namesRect1

                        onClicked: {

                            mainStack.push(v1comp)
                        }
                    }


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
                        source: "qrc:/images/arrow-down.png"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 3
                        width: 30
                        height: parent.height
                        rotation: 270

                        fillMode: Image.PreserveAspectFit


                    }



                    Image {
                        id: down1
                        source: "qrc:/images/arrow-down.png"
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

                                updateItem2TopMargin()

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

            ListElement { name: "DETYRA 1"; facts: "Është dhënë vendosja. Duhet të gjinden shmangiet, përmasat kufitare, hapësirat/interferenca, kontrollohen përmasat e vërteta, etj.";  }
        }


    }







    /*============================== CORPOLENTS ==============  */

    Component {
        id: v1comp

        Vendosjet1 {}
    }


    Component {
        id: v2comp

        Vendosjet2 {}
    }

    Component {
        id: v3comp

        Vendosjet3 {}
    }

    Component {
        id: v4comp

        Vendosjet4 {}
    }

    /*============================== CORPOLENTS - END ==============  */




    property real anchorsMargin: updateItem2TopMargin();

    function updateItem2TopMargin (){

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

                    MouseArea {
                        id: enter2
                        anchors.fill: namesRect2
                        onClicked: {
                            mainStack.push(v2comp)


                        }
                    }



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
                        source: "qrc:/images/arrow-down.png"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 3
                        width: 30
                        height: parent.height
                        rotation: 270

                        fillMode: Image.PreserveAspectFit

                    }


//                    MouseArea {
//                        id: enter2
//                        anchors.fill: rightz2
//                        onClicked: {
//                            mainStack.push(v2comp)


//                        }
//                    }





                    Image {
                        id: down2
                        source: "qrc:/images/arrow-down.png"
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

                            updateItem3TopMargin()

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

            ListElement { name: "DETYRA 2"; facts: "Janë dhënë hapësirat (e poshtme dhe e epërme). Duhet të llogaritet vendosje standarde që i përshtatet kushteve të dhëna. Gjithashtu duhet të caktohen edhe përmasat kufitare, shmangiet, hapësirat/inteferencat, etj.";  }
        }









    }





    property real anchors3Margin: updateItem3TopMargin();

    function updateItem3TopMargin (){

        if(toggleArrow === true && toggleArrow2 === true) {
            return 100;
        }

        else if(toggleArrow !== true || toggleArrow2 !== true) {
            return vendosjet.height;
        }
    }



    Item {
        id: item3
        anchors.top: vendosjet.top
        anchors.topMargin: anchors3Margin
        anchors.right: parent.right
        anchors.left: parent.left
        height: parent.height



        ListView {
            id: listView3
            anchors.fill: parent
            model: detyra3

            delegate: Item {
                id: wrapper3
                width: listView3.width
                height: 50


                Rectangle {
                    id: namesRect3
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top

                    height: 50

                    color: "#333"
                    border.color: Qt.lighter(color, 1.2)


                    MouseArea {
                        id: enter3
                        anchors.fill: namesRect3
                        onClicked: {
                            mainStack.push(v3comp)


                        }
                    }


                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 4
                        font.pixelSize: 20
                        color: "steelblue"
                        text: name

                    }



                    Image {
                        id: rightz3
                        source: "qrc:/images/arrow-down.png"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 3
                        width: 30
                        height: parent.height
                        rotation: 270

                        fillMode: Image.PreserveAspectFit

                    }


//                    MouseArea {
//                        id: enter3
//                        anchors.fill: rightz3
//                        onClicked: {
//                            mainStack.push(v3comp)


//                        }
//                    }





                    Image {
                        id: down3
                        source: "qrc:/images/arrow-down.png"
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 3
                        width: 40
                        height: 30

                        fillMode: Image.PreserveAspectFit

                    }

                    MouseArea {
                        id: expand3
                        //                            z:100000
                        anchors.fill: down3

                        onClicked: {

//                            anchorItem3()

                            if(toggleArrow3 == true){
                                wrapper3.state = "expanded3"
                                toggleArrow3 = false
                                down3.rotation = 180
                            }

                            else if(toggleArrow3 == false){
                                wrapper3.state = ""
                                toggleArrow3 = true
                                down3.rotation = 360
                            }

                        }



                    }



                }





                Item {
                    id: factsView3

                    anchors.top: namesRect3.bottom
                    anchors.left: namesRect3.left
                    anchors.right: namesRect3.right
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
                        name: "expanded3"

                        PropertyChanges { target: wrapper3; height: listView3.height }
                        PropertyChanges { target: factsView3; opacity: 1 }
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
            id: detyra3

            ListElement { name: "DETYRA 3"; facts: "Janë dhënë interferencat (e poshtme dhe e epërme). Duhet të llogaritet vendosje standarde që i përshtatet kushteve të dhëna. Gjithashtu duhet të caktohen edhe përmasat kufitare, shmangiet, hapësirat/inteferencat, etj.";  }
        }









    }







    property real anchors4Margin: updateItem4TopMargin();

    function updateItem4TopMargin (){

        if(toggleArrow === true && toggleArrow2 === true && toggleArrow3 === true) {
            return 150;
        }

        else if(toggleArrow !== true || toggleArrow2 !== true || toggleArrow3 !== true) {
            return vendosjet.height;
        }
    }





    Item {
        id: item4
        anchors.top: vendosjet.top
        anchors.topMargin: anchors4Margin
        anchors.right: parent.right
        anchors.left: parent.left
        height: parent.height



        ListView {
            id: listView4
            anchors.fill: parent
            model: detyra4

            delegate: Item {
                id: wrapper4
                width: listView4.width
                height: 50


                Rectangle {
                    id: namesRect4
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top

                    height: 50

                    color: "#333"
                    border.color: Qt.lighter(color, 1.2)

                    MouseArea {
                        id: enter4
                        anchors.fill: namesRect4
                        onClicked: {
                            mainStack.push(v4comp)


                        }
                    }

                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 4
                        font.pixelSize: 20
                        color: "steelblue"
                        text: name

                    }



                    Image {
                        id: rightz4
                        source: "qrc:/images/arrow-down.png"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 3
                        width: 30
                        height: parent.height
                        rotation: 270

                        fillMode: Image.PreserveAspectFit

                    }


//                    MouseArea {
//                        id: enter4
//                        anchors.fill: rightz4
//                        onClicked: {
//                            mainStack.push(v4comp)


//                        }
//                    }





                    Image {
                        id: down4
                        source: "qrc:/images/arrow-down.png"
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 3
                        width: 40
                        height: 30

                        fillMode: Image.PreserveAspectFit

                    }

                    MouseArea {
                        id: expand4
                        //                            z:100000
                        anchors.fill: down4

                        onClicked: {

                            updateItem3TopMargin()

                            if(toggleArrow4 == true){
                                wrapper4.state = "expanded4"
                                toggleArrow4 = false
                                down4.rotation = 180
                            }

                            else if(toggleArrow4 == false){
                                wrapper4.state = ""
                                toggleArrow4 = true
                                down4.rotation = 360
                            }

                        }



                    }



                }





                Item {
                    id: factsView4

                    anchors.top: namesRect4.bottom
                    anchors.left: namesRect4.left
                    anchors.right: namesRect4.right
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
                        name: "expanded4"

                        PropertyChanges { target: wrapper4; height: listView4.height }
                        PropertyChanges { target: factsView4; opacity: 1 }
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
            id: detyra4

            ListElement { name: "DETYRA 4"; facts: "Është dhënë hapësira minimale, cilësia e aksit dhe vrimës dhe diametri nominal. Duhet të zgjidhet vendosja standarde (e përshtatur). Gjithashtu duhet të caktohen edhe përmasat kufitare, shmangiet, hapësirat/inteferencat, etj.";  }
        }









    }








Rectangle {
    anchors.bottom: vendosjet.bottom
    anchors.left: parent.left
    width: 30; height: width
    color: "#2b2b2b"

    Image {
        id: back
        source: "qrc:/images/arrow-down.png"
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
