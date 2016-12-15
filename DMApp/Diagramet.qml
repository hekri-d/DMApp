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
//        width: 800; height:700;
        width: Screen.width/1.2; height: Screen.height/1.2
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


        property string diametriFromDisplay: diametriVendosjes.value


        Canvas {
            id: diagCanvas
            anchors.fill: parent

            onPaint: {

                var vijaZero = parent.height/2;
                var vijaVertikale = parent.width/6


                var sisKoordinativ = diagCanvas.getContext("2d")

                sisKoordinativ.lineWidth = 2
                sisKoordinativ.strokeStyle = "black"

                sisKoordinativ.beginPath();
/* x */
                sisKoordinativ.moveTo(100, vijaZero);
                sisKoordinativ.lineTo(parent.width-100, vijaZero);
                sisKoordinativ.lineTo(parent.width-120, vijaZero + 7);
                sisKoordinativ.moveTo(parent.width-100, vijaZero);
                sisKoordinativ.lineTo(parent.width-120, vijaZero - 7);


/* y */
                sisKoordinativ.moveTo(vijaVertikale, vijaZero + 200);
                sisKoordinativ.lineTo(vijaVertikale, 100);
                sisKoordinativ.lineTo(vijaVertikale + 7, 120);
                sisKoordinativ.moveTo(vijaVertikale, 100);
                sisKoordinativ.lineTo(vijaVertikale - 7, 120);

                sisKoordinativ.stroke();



                var tolVrimes = diagCanvas.getContext("2d");

                tolVrimes.lineWidth = 4;
                tolVrimes.strokeStyle = "black";

                tolVrimes.strokeRect(vijaVertikale + 50, Math.abs(diagrametVendosjes.eEI) < 1.51 ? vijaZero -1200*diagrametVendosjes.eEI : vijaZero -12*diagrametVendosjes.eEI, 150, -150);


                var tolVrimesHatch = diagCanvas.getContext("2d");

                tolVrimesHatch.lineWidth = 1;
                tolVrimesHatch.strokeStyle = "black";

                tolVrimesHatch.beginPath();

                for (var i = 0; i < 150; i += 8){

                    tolVrimesHatch.moveTo(vijaVertikale +50 + i, (Math.abs(diagrametVendosjes.eEI) < 1.51 ? vijaZero -1200*diagrametVendosjes.eEI : vijaZero -12*diagrametVendosjes.eEI)  );
                    tolVrimesHatch.lineTo(vijaVertikale + 50 + i, ( (Math.abs(diagrametVendosjes.eEI) < 1.51 ? vijaZero -1200*diagrametVendosjes.eEI : vijaZero -12*diagrametVendosjes.eEI) - 150) );

                }

                tolVrimesHatch.stroke();


                var tekst = diagCanvas.getContext("2d")
                tekst.font = "40px sans-serif";
                tekst.strokeText( diagrametVendosjes.diametriFromDisplay , vijaVertikale + 50 +150/2, vijaZero-150/2);



                var tolAksit = diagCanvas.getContext("2d")

                tolAksit.lineWidth = 4
                tolAksit.strokeStyle = "black"

                tolAksit.strokeRect(vijaVertikale + 450, Math.abs(diagrametVendosjes.es) < 1.51 ? vijaZero -1200*diagrametVendosjes.es : vijaZero -12*diagrametVendosjes.es, 150, 150)


                var tolAksitHatch = diagCanvas.getContext("2d");

                tolAksitHatch.lineWidth = 1;
                tolAksitHatch.strokeStyle = "black";

                tolAksitHatch.beginPath();

                for (var j = 0; j < 150; j += 8){

                    tolAksitHatch.moveTo(vijaVertikale + 450 + j, (Math.abs(diagrametVendosjes.es) < 1.51 ? vijaZero -1200*diagrametVendosjes.es : vijaZero -12*diagrametVendosjes.es)  );
                    tolAksitHatch.lineTo(vijaVertikale + 450 + j, ( (Math.abs(diagrametVendosjes.es) < 1.51 ? vijaZero -1200*diagrametVendosjes.es : vijaZero -12*diagrametVendosjes.es) + 150) );

                }

                tolAksitHatch.stroke();

            }
        }
    }



//    Window {
//        id: diagrametTolerancesVendosjes
//        width: 800; height:700;
//        visible: true
//    }


}
