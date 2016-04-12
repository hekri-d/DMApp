
var tabela2_1 = [   [ 0.3, 0.4, 0.4, 0.5, 0.6, 0.6, 0.8, 1, 1.2, 2, 2.5, 3, 5],
                    [ 0.5, 0.6, 0.6, 0.8, 1, 1, 1.2, 1.5, 2, 3, 4, 5, 6 ],
                    [ 0.8, 1, 1, 1.2, 1.5, 1.5, 2, 2.5, 3.5, 4.5, 6, 7, 8],
                    [ 1.2, 1,5, 1.5, 2, 2.5, 2.5, 3, 4, 5, 7, 8, 9, 10],
                    [ 2, 2.5, 2.5, 3, 4, 4, 5, 6, 8, 10, 12, 13, 15],
                    [ 3, 4, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18, 20],
                    [ 4, 5, 6, 8, 9, 11, 13, 15, 18, 20, 23, 25, 27],
                    [ 6, 8, 9, 11, 13, 16, 19, 22, 25, 29, 32, 36, 40],
                    [ 10, 12, 15, 18, 21, 25, 30, 35, 40, 46, 52, 57, 63],
                    [ 14, 18, 22, 27, 33, 39, 46, 54, 63, 72, 81, 89, 97],
                    [ 25, 30, 36, 43, 52, 62, 74, 87, 100, 115, 130, 140, 155],
                    [ 40, 48, 58, 70, 84, 100, 120, 140, 160, 185, 210, 230, 250],
                    [ 60, 75, 90, 110, 130, 160, 190, 220, 250, 290, 320, 360, 400],
                    [ 100, 120, 150, 180, 210, 250, 300, 350, 400, 460, 520, 570, 630],
                    [ 140, 180, 220, 270, 330, 390, 460, 540, 630, 720, 810, 890, 970],
                    [ 250, 300, 360, 430, 520, 620, 740, 870, 1000, 1150, 1300, 1400, 1550],
                    [ 400, 480, 580, 700, 840, 1000, 1200, 1400, 1600, 1850, 2100, 2300, 2500],
                    [ 600, 750, 900, 1100, 1300, 1600, 1900, 2200, 2500, 2900, 3200, 3600, 4000],
                    [ 0, 0, 1500, 1800, 2100, 2500, 3000, 3500, 4000, 4600, 5200, 5700, 6300],
                    [ 0, 0, 0, 2700, 3300, 3900, 4600, 5400, 6300, 7200, 8100, 8900, 9700]

                ]




//returns vlerat e nga tabela per diameter dhe cilesi te dhene
function getTolerancen (cilesia, diametri){

    var toleranca=0;
    var diam = parseFloat(diametri);
    var cilesi = parseFloat(cilesia);

    if ( cilesi == 0.1 ){ cilesi = 0; }
    else if( cilesi == 0){ cilesi = 1; }

    else { cilesi = cilesi +1; }


    if (diam<=3) { diam = 0;}
    else if(diam >6 && diam <=10) { diam = 2; }
    else if(diam >10 && diam <=18) { diam = 3; }
    else if(diam >18 && diam <=30) { diam = 4; }
    else if(diam >30 && diam <=50) { diam = 5; }
    else if(diam >50 && diam <=80) { diam = 6; }
    else if(diam >80 && diam <=120) { diam = 7; }
    else if(diam >120 && diam <=180) { diam = 8; }
    else if(diam >180 && diam <=250) { diam = 9; }
    else if(diam >250 && diam <=315) { diam = 10; }
    else if(diam >315 && diam <=400) { diam = 11; }
    else if(diam >400 && diam <=500) { diam = 12; }

    toleranca = tabela2_1[cilesi][diam];

    return toleranca;

}



/* T_tPaPershtatur --> toleranca jo standarde (e pa pershtatur) qe vjen e llogaritur nga inputi */

function cilesiaFushesToleruese (diametri, T_tPaPershtatur ){

//    var T_tStandarde = 0;
    var cilesia;


    var diam = parseFloat(diametri);

    if (diam<=3) { diam = 0;}
    else if(diam >6 && diam <=10) { diam = 2; }
    else if(diam >10 && diam <=18) { diam = 3; }
    else if(diam >18 && diam <=30) { diam = 4; }
    else if(diam >30 && diam <=50) { diam = 5; }
    else if(diam >50 && diam <=80) { diam = 6; }
    else if(diam >80 && diam <=120) { diam = 7; }
    else if(diam >120 && diam <=180) { diam = 8; }
    else if(diam >180 && diam <=250) { diam = 9; }
    else if(diam >250 && diam <=315) { diam = 10; }
    else if(diam >315 && diam <=400) { diam = 11; }
    else if(diam >400 && diam <=500) { diam = 12; }


    var i=19;

    while (i>=0) {


            if(tabela2_1[i][diam] <= T_tPaPershtatur ) {
//                T_tStandarde = tabela2_1[i][diam];

                cilesia = i-1;

                break;

            }

            i--;

    }

    return cilesia;

/*TODO: ME KTHY EDHE SHKRONJEN EDHE VLEREN E TOLERANCES SI OBJECTS NE VEND SE ME SHFRYTEZU FUNKSIONIN E DYTE */


}


