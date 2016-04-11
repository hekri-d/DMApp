import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1

import "js/Tabela2.1.js" as Tabela2_1JS
import "js/Tabela2.5.js" as Tabela2_5JS
import "js/Tabela2.4.js" as Tabela2_4JS

Rectangle {
    id:vendosjet1
    color: "teal"

    Rectangle {
        id: topRect
        width: parent.width
        height: parent.height/15
        color: "red"
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false

    }

    Text {
        id: vendosja
        text: qsTr("Vendosja: ")
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 5
        font.pixelSize: topRect.height*0.6
    }



    Image {
        id: fi
        source: "qrc:/phi.png"
        anchors.left: vendosja.left
        anchors.top: vendosja.bottom
        anchors.topMargin: 7
        width: height
        fillMode: Image.PreserveAspectFit
        height: topRect.height
        mipmap: true

        Rectangle {
            anchors.fill: parent
            color: "lightblue"
            z:-1
        }

    }

    SpinBox {
        id: diametriVendosjes
        anchors.left: fi.right
        anchors.top: vendosja.bottom
        anchors.topMargin: 7
        width: topRect.width/4.7
        height:topRect.height
        minimumValue: 1
        maximumValue: 500

        font.pixelSize: topRect.height*0.58

        Layout.fillWidth: true

        style: SpinBoxStyle {
            background: Rectangle {
                color: "lightblue"
            }
        }

    }





    ComboBox {
        id: vrimaShkronja
        anchors.left: diametriVendosjes.right
        anchors.leftMargin: 5
        anchors.verticalCenter: diametriVendosjes.verticalCenter
        width: topRect.width/7.5
        height: topRect.height
        model: ["A","B","C","D","E","F","G","H","J","K","M","N","P","R","S","T","U","V","X","Y","Z","ZA","ZB","ZC"]

        onCurrentIndexChanged: kufizimiCilesiseVrimaSignal()


        style: ComboBoxStyle {
            background: Rectangle {
                color: "lightblue"
            }
        }
    }


/* kufizon numrin (lartesine e fushes toleruese).
D.m.th. nuk lejon qe te shfaqet lartesi toleruese per fushe qe nuk ekzison.
P.sh. nuk lejon qe ne UI te shfaqet J4 sepse lartesia minimale per J eshte 6 */
    signal kufizimiCilesiseVrimaSignal;


    onKufizimiCilesiseVrimaSignal: {

        switch (vrimaShkronja.currentIndex) {
        case 0:     //A
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;
        case 1:     //B
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;
        case 2:     //C
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;
        case 3:     //D
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;
        case 4:     //E
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;

        case 5:     //F
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;
        case 6:     //G
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;
        case 7:     //H
            if(vrimaLartesia.currentIndex <2){ vrimaLartesia.currentIndex =2 }
            break;
        case 8:     //J
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            break;
        case 9:     //K
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;

        case 10:    //M
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 11:    //N
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 12:    //P
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 13:    //R
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 14:    //S
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;

        case 15:    //T
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 16:    //U
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 17:    //V
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 18:    //X
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 19:    //Y
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;

        case 20:    //Z
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 21:    //ZA
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 22:    //ZB
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;
        case 23:    //ZC
            if(vrimaLartesia.currentIndex <6){ vrimaLartesia.currentIndex =6 }
            else if(vrimaLartesia.currentIndex >11) {vrimaLartesia.currentIndex = 11 }
            break;



    }


    }





    ComboBox {
        id: vrimaLartesia
        anchors.left: vrimaShkronja.right
        anchors.leftMargin: 5
        anchors.verticalCenter: diametriVendosjes.verticalCenter
        width: topRect.width/7.5
        height: topRect.height
        model: 19

        onCurrentIndexChanged: kufizimiCilesiseVrimaSignal()

        style: ComboBoxStyle {
            background: Rectangle {
                color: "lightblue"
            }
        }

    }



    Text {
        id: fraksion
        text: qsTr("/")
        anchors.left: vrimaLartesia.right
        anchors.leftMargin: 10
        anchors.verticalCenter: diametriVendosjes.verticalCenter

        font.pixelSize: topRect.height*0.6
    }


    ComboBox {
        id: aksiShkronja
        anchors.left: fraksion.right
        anchors.leftMargin: 5
        width: topRect.width/7.5
        height: topRect.height

        model: ["a","b","c","d","e","f","g","h","j","k","m","n","p","r","s","t","u","v","x","y","z","za","zb","zc"]
        anchors.verticalCenter: diametriVendosjes.verticalCenter

        onCurrentIndexChanged: kufizimiCilesiseAksiSignal()

        style: ComboBoxStyle {
            background: Rectangle {
                color: "lightblue"
            }
        }


    }


    /* kufizon numrin (lartesine e fushes toleruese).
    D.m.th. nuk lejon qe te shfaqet lartesi toleruese e cila nuk ekziston per fushe te caktuar.
    P.sh. nuk lejon qe ne UI te shfaqet r12 (apo numer me i madh se 12) sepse lartesia maksimale per r eshte 11 */
        signal kufizimiCilesiseAksiSignal;


        onKufizimiCilesiseAksiSignal: {

            switch (aksiShkronja.currentIndex) {
            case 0:     //a
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;
            case 1:     //b
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;
            case 2:     //c
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;
            case 3:     //d
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;
            case 4:     //e
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;

            case 5:     //f
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;
            case 6:     //g
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;
            case 7:     //h
                if(aksiLartesia.currentIndex <1){ aksiLartesia.currentIndex =1 }
                break;
            case 8:     //j
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                break;
            case 9:     //k
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                break;

            case 10:    //m
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 11:    //n
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 12:    //p
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 13:    //r
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 14:    //s
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;

            case 15:    //t
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 16:    //u
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 17:    //v
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 18:    //x
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 19:    //y
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;

            case 20:    //z
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 21:    //za
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 22:    //zc
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;
            case 23:    //zc
                if(aksiLartesia.currentIndex <5){ aksiLartesia.currentIndex =5 }
                else if(aksiLartesia.currentIndex >11) {aksiLartesia.currentIndex = 11 }
                break;



        }


        }


    ComboBox {
        id: aksiLartesia
        anchors.left: aksiShkronja.right
        anchors.leftMargin: 5
        anchors.verticalCenter: diametriVendosjes.verticalCenter
        width: topRect.width/7.5
        height: topRect.height
        model: 19

        onCurrentIndexChanged: kufizimiCilesiseAksiSignal()

        style: ComboBoxStyle {
            background: Rectangle {
                color: "lightblue"
            }
        }



    }





    Text { font.pixelSize: topRect.height*0.6
        id: diametriDv
        text: qsTr("Diametri Dv: ")
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: aksiLartesia.bottom
        anchors.topMargin: 20
    }

    TextInput {
        id: diametriDvInput
        anchors.left: diametriDv.right
        anchors.leftMargin: 10
        anchors.verticalCenter: diametriDv.verticalCenter
        anchors.right: diametriDvNjesia.left
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
        id: diametriDvNjesia
        text: qsTr("mm")
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: diametriDvInput.verticalCenter
        width: 40
    }


    Text { font.pixelSize: topRect.height*0.6
        id: diametridv
        text: qsTr("Diametri dv: ")
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: diametriDv.bottom
        anchors.topMargin: 10
    }

    TextInput {
        id: diametridvInput
        anchors.left: diametridv.right
        anchors.leftMargin: 10
        anchors.verticalCenter: diametridv.verticalCenter
        anchors.right: diametridvNjesia.left
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
        id: diametridvNjesia
        text: qsTr("mm")
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: diametridvInput.verticalCenter
        width: 40
    }




    Rectangle {
        id:vijaNdarese
        height: 3
        color: "black"

        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5

        anchors.top: diametridvNjesia.bottom
        anchors.topMargin: 10
    }






    Text { font.pixelSize: topRect.height*0.6
        id: tolerancat
        text: qsTr("Tolerancat(mikrometra):")
        anchors.left: parent.left
        anchors.leftMargin: 20

        anchors.top: vijaNdarese.bottom
        anchors.topMargin: 5

        Rectangle {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: 1
            color: "black"
        }
    }



    Text { font.pixelSize: topRect.height*0.6
        id: tolerancaT
        text: qsTr("T = ")
        anchors.left: tolerancat.left
        anchors.top: tolerancat.bottom

    }

    Text { font.pixelSize: topRect.height*0.6
        id: vleraT
        text: qsTr("43")
        anchors.left: tolerancaT.right
        anchors.leftMargin: 5
        anchors.verticalCenter: tolerancaT.verticalCenter
    }




    Text { font.pixelSize: topRect.height*0.6
        id: toleranca
        text: qsTr("t = ")
        anchors.left: vleraT.right
        anchors.leftMargin: 60
        anchors.verticalCenter: vleraT.verticalCenter

    }

    Text { font.pixelSize: topRect.height*0.6
        id: vlerat
        text: qsTr("43")
        anchors.left: toleranca.right
        anchors.leftMargin: 5
        anchors.verticalCenter: vleraT.verticalCenter
    }


    Text { font.pixelSize: topRect.height*0.6
        id: tolerancaTn
        text: qsTr("Tn = ")
        anchors.left: vlerat.right
        anchors.leftMargin: 60
        anchors.verticalCenter: vlerat.verticalCenter

    }

    Text { font.pixelSize: topRect.height*0.6
        id: vleraTn
        text: qsTr("43")
        anchors.left: tolerancaTn.right
        anchors.leftMargin: 5
        anchors.verticalCenter: tolerancaTn.verticalCenter
    }




    Text { font.pixelSize: topRect.height*0.6
        id: permasatKufitare
        text: qsTr("Permasat Kufitare")
        anchors.left: tolerancat.left
        anchors.top: vleraT.bottom
        anchors.topMargin: 5

        Rectangle {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: 1
            color: "black"
        }

    }

    //Permasat kufitare



    Text { font.pixelSize: topRect.height*0.6
        id: diametriDe
        text: qsTr("Diametri De: ")
        anchors.left: permasatKufitare.left
        anchors.top: permasatKufitare.bottom
        anchors.topMargin: 5
    }

    Text { font.pixelSize: topRect.height*0.6
        id: diametriDeVlerat
        text: "fuck the cups"
        anchors.left: diametriDe.right
        anchors.leftMargin: 10
        anchors.verticalCenter: diametriDe.verticalCenter
        anchors.right: diametriDeNjesia.left
        anchors.rightMargin: 10
    }


    Text { font.pixelSize: topRect.height*0.6
        id: diametriDeNjesia
        text: qsTr("mm")
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: diametriDeVlerat.verticalCenter
        width: 40
    }


    Text { font.pixelSize: topRect.height*0.6
        id: diametriDp
        text: qsTr("Diametri Dp: ")
        anchors.left: permasatKufitare.left
        anchors.top: diametriDe.bottom
        anchors.topMargin: 5
    }

    Text { font.pixelSize: topRect.height*0.6
        id: diametriDpVlera
        text: "fuck the cups"
        anchors.left: diametriDp.right
        anchors.leftMargin: 10
        anchors.verticalCenter: diametriDp.verticalCenter
        anchors.right: diametriDpNjesia.left
        anchors.rightMargin: 10
    }


    Text { font.pixelSize: topRect.height*0.6
        id: diametriDpNjesia
        text: qsTr("mm")
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: diametriDp.verticalCenter
        width: 40
    }







    Text { font.pixelSize: topRect.height*0.6
        id: diametride
        text: qsTr("Diametri de: ")
        anchors.left: permasatKufitare.left
        anchors.top: diametriDpNjesia.bottom
        anchors.topMargin: 10
    }

    Text { font.pixelSize: topRect.height*0.6
        id: diametrideVlerat
        text: "fuck the cups"
        anchors.left: diametride.right
        anchors.leftMargin: 10
        anchors.verticalCenter: diametride.verticalCenter
        anchors.right: diametrideNjesia.left
        anchors.rightMargin: 10
    }


    Text { font.pixelSize: topRect.height*0.6
        id: diametrideNjesia
        text: qsTr("mm")
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: diametrideVlerat.verticalCenter
        width: 40
    }


    Text { font.pixelSize: topRect.height*0.6
        id: diametridp
        text: qsTr("Diametri dp: ")
        anchors.left: permasatKufitare.left
        anchors.top: diametride.bottom
        anchors.topMargin: 5
    }

    Text { font.pixelSize: topRect.height*0.6
        id: diametridpVlera
        text: "fuck the cups"
        anchors.left: diametridp.right
        anchors.leftMargin: 10
        anchors.verticalCenter: diametridp.verticalCenter
        anchors.right: diametridpNjesia.left
        anchors.rightMargin: 10
    }


    Text { font.pixelSize: topRect.height*0.6
        id: diametridpNjesia
        text: qsTr("mm")
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: diametridp.verticalCenter
        width: 40
    }




    // hapesirat


    Text { font.pixelSize: topRect.height*0.6
        id: hapesiraHe
        text: qsTr("He =")
        anchors.left: tolerancat.left
        anchors.top: diametridpNjesia.bottom
        anchors.topMargin: 5
    }

    Text { font.pixelSize: topRect.height*0.6
        id: hapesiraHeVlera
        text: qsTr("---")
        anchors.left: hapesiraHe.right
        anchors.leftMargin: 5
        anchors.verticalCenter: hapesiraHe.verticalCenter

    }



    Text { font.pixelSize: topRect.height*0.6
        id: hapesiraHeNjesia
        text: qsTr("mm")
        anchors.left: hapesiraHeVlera.right
        anchors.leftMargin: 5
        anchors.verticalCenter: hapesiraHeVlera.verticalCenter
    }



    Text { font.pixelSize: topRect.height*0.6
        id: hapesiraHp
        text: qsTr("Hp =")
        anchors.left: tolerancat.left
        anchors.top: hapesiraHeVlera.bottom
        anchors.topMargin: 5
    }

    Text { font.pixelSize: topRect.height*0.6
        id: hapesiraHpVlera
        text: qsTr("---")
        anchors.left: hapesiraHe.right
        anchors.leftMargin: 5
        anchors.verticalCenter: hapesiraHp.verticalCenter

    }


    Text { font.pixelSize: topRect.height*0.6
        id: hapesiraHpNjesia
        text: qsTr("mm")
        anchors.left: hapesiraHpVlera.right
        anchors.leftMargin: 5
        anchors.verticalCenter: hapesiraHpVlera.verticalCenter
    }




    Text { font.pixelSize: topRect.height*0.6
        id: dDv
        text: qsTr("Dv: permiresohet")
        anchors.left: hapesiraHeNjesia.right
        anchors.leftMargin: 20
        anchors.verticalCenter: hapesiraHeNjesia.verticalCenter
    }

    Text { font.pixelSize: topRect.height*0.6
        id: ddv
        text: qsTr("dv: e keqe")
        anchors.left: dDv.left
        anchors.verticalCenter: hapesiraHpVlera.verticalCenter
    }





    property double es: parseFloat(Tabela2_5JS.getDeviationHole(diametriVendosjes, vrimaShkronja, vrimaLartesia))

    // BUTTONS




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


                        vleraT.text = Tabela2_1JS.getValues(vrimaLartesia.currentIndex,
                                                            diametriVendosjes.value)

                        vlerat.text = Tabela2_1JS.getValues(aksiLartesia.currentIndex,
                                                            diametriVendosjes.value)

                        vleraTn.text = parseFloat(vleraT.text) + parseFloat(vlerat.text);


                        //VRIMA

                        var ES;
                        var EI;
                        var es;
                        var ei;

                        function shmangiaES( ){

                            if(vrimaShkronja.currentIndex <= 7){
                                return ES= Tabela2_5JS.getDeviationHole(diametriVendosjes.value,
                                                                     vrimaShkronja.currentIndex,
                                                                     vrimaLartesia.currentIndex) +
                                        (Tabela2_1JS.getValues(vrimaLartesia.currentIndex,
                                                                            diametriVendosjes.value)/1000)

                                 }

                            else {
                                return ES = Tabela2_5JS.getDeviationHole(diametriVendosjes.value,
                                                                    vrimaShkronja.currentIndex,
                                                                    vrimaLartesia.currentIndex);

                            }


                        }

                        function shmangiaEI () {

                            if(vrimaShkronja.currentIndex <= 7){
                              return EI = Tabela2_5JS.getDeviationHole(diametriVendosjes.value, vrimaShkronja.currentIndex,vrimaLartesia.currentIndex);
                            }

                            else {
                                return EI = Tabela2_5JS.getDeviationHole(diametriVendosjes.value, vrimaShkronja.currentIndex,vrimaLartesia.currentIndex) - ((Tabela2_1JS.getValues(vrimaLartesia.currentIndex, diametriVendosjes.value))/1000) ;

                            }
                        }



                        diametriDeVlerat.text = diametriVendosjes.value + shmangiaES() ;
                        diametriDpVlera.text = diametriVendosjes.value + shmangiaEI() ;



                        //AKSI
                        function shmangia_es( ){

                            if(aksiShkronja.currentIndex <= 7){

                                return es = Tabela2_4JS.getDeviationAxis(diametriVendosjes.value,
                                                                    aksiShkronja.currentIndex,
                                                                    aksiLartesia.currentIndex);

                                 }

                            else {

                                return  es = Tabela2_4JS.getDeviationAxis(diametriVendosjes.value,
                                                                     aksiShkronja.currentIndex,
                                                                     aksiLartesia.currentIndex) +
                                        (Tabela2_1JS.getValues(aksiLartesia.currentIndex,
                                                                            diametriVendosjes.value)/1000)
                            }


                        }

                        function shmangia_ei () {

                            if(aksiShkronja.currentIndex <= 7){
                                 console.log("ei eshte: ",ei);

                                return ei = Tabela2_4JS.getDeviationAxis(diametriVendosjes.value,
                                                                         aksiShkronja.currentIndex,
                                                                                aksiLartesia.currentIndex) -
                                                 ((Tabela2_1JS.getValues(aksiLartesia.currentIndex,
                                                                         diametriVendosjes.value))/1000);
                            }

                            else {


                                ei = Tabela2_4JS.getDeviationAxis(diametriVendosjes.value,
                                                                    aksiShkronja.currentIndex,
                                                                    aksiLartesia.currentIndex);
                                console.log("ei eshte asdf: ",ei);

                                return ei

                            }
                        }

                        diametrideVlerat.text = diametriVendosjes.value + shmangia_es()

                        diametridpVlera.text = diametriVendosjes.value+ shmangia_ei()

//                        vendosja.text = diametridvInput.text


                        //=====diametrat e vertete===========

                        dDv.text = diamtratVerteteVrima()

                        function diamtratVerteteVrima() {
                            if( diametriDvInput.text <= parseFloat(diametriDeVlerat.text) && diametriDvInput.text >=parseFloat(diametriDpVlera.text) ){
                                return "Dv - per. e mire"
                            }

                            else if(diametriDvInput.text >= parseFloat(diametriDeVlerat.text)  ){
                                    return "Dv - per. e keqe"
                            }

                            else if(diametriDvInput.text < parseFloat(diametriDpVlera.text)  ){
                                    return "Dv - Permiresohet"
                            }
                        }


                        ddv.text = diametratVertetAksi()

                        function diametratVertetAksi(){
                            if( diametridvInput.text <= parseFloat(diametrideVlerat.text) && diametridvInput.text >=parseFloat(diametridpVlera.text) ){
                                return "dv - per. e Mire"
                            }

                            else if(diametridvInput.text >= parseFloat(diametrideVlerat.text)  ){
                                    return "dv - permiresohet"
                            }

                            else if(diametridvInput.text < parseFloat(diametridpVlera.text)  ){
                                    return "dv - per. e keqe"
                            }
                        }



//===============HAPESIRAT KUFITARE=============

                        hapesiraHeVlera.text = parseFloat(parseFloat(ES) - parseFloat(ei)).toFixed(3);
                        hapesiraHpVlera.text = parseFloat(parseFloat(EI) - parseFloat(es)).toFixed(3)

                        if(parseFloat(hapesiraHpVlera.text) <= 0) {
                            hapesiraHp.text = "Ie = "
                        }

                        if(parseFloat(hapesiraHeVlera.text) <= 0) {
                            hapesiraHe.text = "Ip = "
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

