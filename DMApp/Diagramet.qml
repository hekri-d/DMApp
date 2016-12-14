import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0

import "js/Tabela25.js" as Tabela2_5JS
import "js/Tabela24.js" as Tabela2_4JS
import "js/Tabela21.js" as Tabela2_1JS

Item {

    anchors.fill: parent
    Window {
        id: diagrametVendosjes
        width: 800; height:700;
        visible: true
        title: "Vendosjet"


        //        var ES;
        //        var EI;
        //        var es;
        //        var ei;
        /* ===================== eES and eEI start with lower-case letter because properties aren't allowed to start with upper-case */

        property var eES;
        property var eEI;
        property var es;
        property var ei;

        /* ============== functions to get the deviations ============================================================== */

        function shmangiaES( ){

            if(vrimaShkronja.currentIndex <= 7){
                return eES= Tabela2_5JS.getDeviationHole(diametriVendosjes.value,
                                                         vrimaShkronja.currentIndex,
                                                         vrimaLartesia.currentIndex) +
                        (Tabela2_1JS.getTolerancen(vrimaLartesia.currentIndex,
                                                   diametriVendosjes.value)/1000)

            }

            else {
                return eES = Tabela2_5JS.getDeviationHole(diametriVendosjes.value,
                                                          vrimaShkronja.currentIndex,
                                                          vrimaLartesia.currentIndex);

            }


        }

        function shmangiaEI () {

            if(vrimaShkronja.currentIndex <= 7){
                return eEI = Tabela2_5JS.getDeviationHole(diametriVendosjes.value, vrimaShkronja.currentIndex,vrimaLartesia.currentIndex);
            }

            else {
                return eEI = Tabela2_5JS.getDeviationHole(diametriVendosjes.value, vrimaShkronja.currentIndex,vrimaLartesia.currentIndex) - ((Tabela2_1JS.getTolerancen(vrimaLartesia.currentIndex, diametriVendosjes.value))/1000) ;

            }
        }



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
                        (Tabela2_1JS.getTolerancen(aksiLartesia.currentIndex,
                                                   diametriVendosjes.value)/1000)
            }


        }

        function shmangia_ei () {

            if(aksiShkronja.currentIndex <= 7){
                //                                 console.log("ei eshte: ",ei);

                return ei = Tabela2_4JS.getDeviationAxis(diametriVendosjes.value,
                                                         aksiShkronja.currentIndex,
                                                         aksiLartesia.currentIndex) -
                        ((Tabela2_1JS.getTolerancen(aksiLartesia.currentIndex,
                                                    diametriVendosjes.value))/1000);
            }

            else {


                ei = Tabela2_4JS.getDeviationAxis(diametriVendosjes.value,
                                                  aksiShkronja.currentIndex,
                                                  aksiLartesia.currentIndex);
                //                                console.log("ei eshte asdf: ",ei);

                return ei

            }
        }



        Component.onCompleted: { shmangiaES(); shmangiaEI(); shmangia_ei(); shmangia_es() }    /*functions called */


        Canvas {
            id: diagCanvas
            anchors.fill: parent

            onPaint: {
                //                function diagVendosjes (){

                var ctx = diagCanvas.getContext("2d")

                ctx.lineWidth = 2
                ctx.strokeStyle = "red"
                //        ctx.fillStyle = "lblue"

                ctx.beginPath();

                //                    var i = 60, j = 60;

                //                    for ( i = 60; i < 200; i+=8 ){
                //                        ctx.moveTo(i, j);
                //                        ctx.lineTo(i, j + 60);
                //                    }


                //                    ctx.moveTo(60,60);
                //                    ctx.lineTo(60,120);
                //                    ctx.lineTo(200, 120);
                //                    ctx.lineTo(200, 60)
                //                    ctx.closePath();



                //                }


                var vijaZero = parent.height/2;
                var vijaVertikale = parent.width/4

                ctx.moveTo(100, vijaZero);
                ctx.lineTo(parent.width, vijaZero);

                ctx.moveTo(vijaVertikale + 200, vijaZero + 1000*diagrametVendosjes.eEI);
                ctx.lineTo(vijaVertikale + 400, vijaZero + 1000*diagrametVendosjes.eEI);
                ctx.lineTo(vijaVertikale + 400, vijaZero + 1000*diagrametVendosjes.eES);
                ctx.lineTo(vijaVertikale + 200, vijaZero + 1000*diagrametVendosjes.eES);
//                ctx.lineTo(vijaVertikale, vijaZero + diagrametVendosjes.eEI);
                ctx.closePath();

//                ctx.moveTo(300, 300);
//                ctx.lineTo(600, 300);
//                ctx.lineTo(600, 100)
//                ctx.lineTo(300, 100)
//                ctx.lineTo(300, 300)

                ctx.stroke();

                console.log("It motherfucking is: ", Math.abs(diagrametVendosjes.eEI));

                console.log("vijazer: ", vijaZero);
                console.log("vijaVertika: ", vijaVertikale);
                console.log("vijazero plus diagrametei: ", (vijaZero + diagrametVendosjes.eEI))
            }
        }
    }



    Window {
        id: diagrametTolerancesVendosjes
        width: 800; height:700;
        visible: true
    }


}
