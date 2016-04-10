
var tabela2_4 = [[270, 270, 280, , 290, 290, 300, 300, 310, 320, 340, 360, 380, 410, 460, 520, 580, 660, 740, 820, 920, 1050, 1200, 1350, 1500, 1650],
                 [140, 140, 150, 150, 150, 160, 160, 170, 180, 190, 200, 220, 240, 260, 280, 310, 340, 380, 420, 480, 540, 600, 680, 760, 840],
                 [60, 70, 80, 95, 95, 110, 110, 120, 130, 140, 150, 170, 180, 200, 210, 230, 240, 260, 280, 300, 330, 360, 400, 440, 480],
                 [20, 30, 40, 50, 50, 65, 65, 80, 80, 100, 100, 120, 120, 145, 145, 145, 170, 170, 170, 190, 190, 210, 210, 230, 230],
                 [14, 20, 25, 32, 32, 40, 40, 50, 50, 60, 60, 72, 72, 85, 85, 85, 100, 100, 100, 110, 110, 125, 125, 135, 135],
                 [6, 10, 13, 16, 16, 20, 20, 25, 25, 30, 30, 36, 36, 43, 43, 43, 50, 50, 50, 56, 56, 62, 62, 68, 68],
                 [2, 4, 5, 6, 6, 7, 7, 9, 9, 10, 10, 12, 12, 14, 14, 14, 15, 15, 15, 17, 17, 18, 18, 20, 20],
                 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                 [2, 2, 2, 3, 3, 4, 4, 5, 5, 7, 7, 9, 9, 11, 11, 11, 13, 13, 13, 16, 16, 18, 18, 20, 20], //j(5-6)
                 [4,4,5,6,6,8,8,10,10,12,12,15,15,18,18,18, 21,21,21,26,26, 28,28,32,32 ],
                 [7,9,11,13,13,16,16,19,19,23,23,27,27,31,31,31,36,36,36, 40,40,44,44, 48,48],  //j(8)
                 [12,15,18,21,21,26,26,31,31,37,37,43,43,50,50,50,57,57,57,65,65,70,70,77,77],
                 [20,24,29,35,35,42,42,50,50,60,60,70,70,80,80,80,92,92,92,105,105,115,115,125,125],
                 [30,37,45,55,55,65,65,80,80,95,95,110,110,125,125,125,145,145,145,160,160,180,180,200,200],
                 [45,60,75,90,90,105,105,125,125,150,150,175,175,200,200,200,230,230,230,260,260,285,285,315,315],
                 [70,90,110,135,135,165,165,195,195,230,230,270,270,315,315,315,360,360,360,405,405,445,445,485,485],
                 [125,150,180,215,215,360,260,310,310,370,370,435,435,500,500,500,575,575,575, 650,650,700,700,775,775],
                 [200,240,290,350,350,420,420,500,500,600,600,700,700,800,800,800,925,925,925,1050,1050,1150,1150,1250,1250],
                 [300,375,450,550,550,650,650,800,800,950,950,1100,1100,1250,1250,1250,1450,1450,1450,1600,1600,1800,1800,2000,2000],
                 [450,600,750,900,900,1050,1050,1250,1250,1500,1500,1750,1750,200,2000,2000,2300,2300,2300,2600,2600,2850,2850,3150,3150],
                 [700,900,1100,1350,1350,1650,1650,1950,1950,2300,2300,2700,2700,3150,3150,3150,3600,3600,3600,4050,4050,4450,4450,4850],
                 [0,1,1,1,1,2,2,2,2,2,2,9,9,3,3,3,4,4,4,4,4,4,4,5,5],
                 [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
                 [2,4,6,7,7,8,8,9,9,11,11,13,13,15,15,15,17,17,17,20,20,21,21,23,23],
                 [4,8,10,12,12,15,15,17,17,20,20,23,23,27,27,27,31,31,31,34,34,37,37,40,40],
                 [6,12,15,18,18,22,26,26,32,32,37,37,43,43,43,50,50,50,56,56,62,62,68,68],       //p(5-11)
                 [10,15,19,23,23,28,28,34,34,41,43,51,54,63,65,68,77,80,84,94,98,108,114,126,132],
                 [14,19,23,28,28,35,35,43,43,53,59,71,79,92,100,108,122,130,140,158,170,190,208,232,252]    //s(5-11)







                ]




//te rishikohet pasiqe eshte kopjuar nga pjesa per vrima!

function getDeviationAxis(diametri, shkronja, cilesia) {

    var es_ei = 0;

/*                  a                 b                 c                 d    */
    if (shkronja ===0 || shkronja === 1 || shkronja === 2 || shkronja === 3 ||

/*                       e                 f                 g                 h */
            shkronja === 4 || shkronja === 5 || shkronja === 6 || shkronja === 7){

        if(diametri >=1 && diametri <3 ){
            es_ei = tabela2_4[shkronja][0]
        }

        else if(diametri >=3 && diametri < 6){
            es_ei = tabela2_4[shkronja][1]
        }

        else if(diametri >=6 && diametri < 10){
            es_ei = tabela2_4[shkronja][2]
        }
        else if(diametri >=10 && diametri < 14){
            es_ei = tabela2_4[shkronja][3]
        }


        else if(diametri >=14 && diametri < 18){
            es_ei = tabela2_4[shkronja][4]
        }

        else if(diametri >=18 && diametri < 24){
            es_ei = tabela2_4[shkronja][5]
        }
        else if(diametri >=24 && diametri < 30){
            es_ei = tabela2_4[shkronja][6]
        }
        else if(diametri >=30 && diametri < 40){
            es_ei = tabela2_4[shkronja][7]
        }

        else if(diametri >=40 && diametri < 50){
            es_ei = tabela2_4[shkronja][8]
        }
        else if(diametri >=50 && diametri < 65){
            es_ei = tabela2_4[shkronja][9]
        }
        else if(diametri >=65 && diametri < 80){
            es_ei = tabela2_4[shkronja][10]
        }

        else if(diametri >=80 && diametri < 100){
            es_ei = tabela2_4[shkronja][11]
        }
        else if(diametri >=100 && diametri < 120){
            es_ei = tabela2_4[shkronja][12]
        }
        else if(diametri >=120 && diametri < 140){
            es_ei = tabela2_4[shkronja][13]
        }

        else if(diametri >=140 && diametri < 160){
            es_ei = tabela2_4[shkronja][14]
        }
        else if(diametri >=160 && diametri < 180){
            es_ei = tabela2_4[shkronja][15]
        }
        else if(diametri >=180 && diametri < 200){
            es_ei = tabela2_4[shkronja][16]
        }

        else if(diametri >=200 && diametri < 225){
            es_ei = tabela2_4[shkronja][17]
        }
        else if(diametri >=225 && diametri < 250){
            es_ei = tabela2_4[shkronja][18]
        }
        else if(diametri >=250 && diametri < 280){
            es_ei = tabela2_4[shkronja][19]                         //gabim - shkronja prej 20 (...[shrkonja][20])
        }

        else if(diametri >=280 && diametri < 315){
            es_ei = tabela2_4[shkronja][20]
        }
        else if(diametri >=315 && diametri < 355){
            es_ei = tabela2_4[shkronja][21]
        }
        else if(diametri >=355 && diametri < 400){
            es_ei = tabela2_4[shkronja][22]
        }

        else if(diametri >=400 && diametri < 450){
            es_ei = tabela2_4[shkronja][23]
        }
        else if(diametri >=450 && diametri < 500){
            es_ei = tabela2_4[shkronja][24]
        }

    }

/*                        j                                     */
    else if (shkronja === 8){

        if(diametri >=1 && diametri <3 ){
            es_ei = tabela2_4[cilesia + 2][0]
        }

        else if(diametri >=3 && diametri < 6){
            es_ei = tabela2_4[cilesia + 2][1]
        }

        else if(diametri >=6 && diametri < 10){
            es_ei = tabela2_4[cilesia + 2][2]
        }
        else if(diametri >=10 && diametri < 14){
            es_ei = tabela2_4[cilesia + 2][3]
        }


        else if(diametri >=14 && diametri < 18){
            es_ei = tabela2_4[cilesia + 2][4]
        }

        else if(diametri >=18 && diametri < 24){
            es_ei = tabela2_4[cilesia + 2][5]
        }
        else if(diametri >=24 && diametri < 30){
            es_ei = tabela2_4[cilesia + 2][6]
        }
        else if(diametri >=30 && diametri < 40){
            es_ei = tabela2_4[cilesia + 2][7]
        }

        else if(diametri >=40 && diametri < 50){
            es_ei = tabela2_4[cilesia + 2][8]
        }
        else if(diametri >=50 && diametri < 65){
            es_ei = tabela2_4[cilesia + 2][9]
        }
        else if(diametri >=65 && diametri < 80){
            es_ei = tabela2_4[cilesia + 2][10]
        }

        else if(diametri >=80 && diametri < 100){
            es_ei = tabela2_4[cilesia + 2][11]
        }
        else if(diametri >=100 && diametri < 120){
            es_ei = tabela2_4[cilesia + 2][12]
        }
        else if(diametri >=120 && diametri < 140){
            es_ei = tabela2_4[cilesia + 2][13]
        }

        else if(diametri >=140 && diametri < 160){
            es_ei = tabela2_4[cilesia + 2][14]
        }
        else if(diametri >=160 && diametri < 180){
            es_ei = tabela2_4[cilesia + 2][15]
        }
        else if(diametri >=180 && diametri < 200){
            es_ei = tabela2_4[cilesia + 2][16]
        }

        else if(diametri >=200 && diametri < 225){
            es_ei = tabela2_4[cilesia + 2][17]
        }
        else if(diametri >=225 && diametri < 250){
            es_ei = tabela2_4[cilesia + 2][18]
        }
        else if(diametri >=250 && diametri < 280){
            es_ei = tabela2_4[cilesia + 2][19]
        }

        else if(diametri >=280 && diametri < 315){
            es_ei = tabela2_4[cilesia + 2][20]
        }
        else if(diametri >=315 && diametri < 355){
            es_ei = tabela2_4[cilesia + 2][21]
        }
        else if(diametri >=355 && diametri < 400){
            es_ei = tabela2_4[cilesia + 2][22]
        }

        else if(diametri >=400 && diametri < 450){
            es_ei = tabela2_4[cilesia + 2][23]
        }
        else if(diametri >=450 && diametri < 500){
            es_ei = tabela2_4[cilesia + 2][24]
        }

    }

/*                        k                                     */
    else if(shkronja === 9){

        if(diametri >=1 && diametri <3 ){
            es_ei = tabela2_4[cilesia + 15][0]
        }

        else if(diametri >=3 && diametri < 6){
            es_ei = tabela2_4[cilesia + 15][1]
        }

        else if(diametri >=6 && diametri < 10){
            es_ei = tabela2_4[cilesia + 15][2]
        }
        else if(diametri >=10 && diametri < 14){
            es_ei = tabela2_4[cilesia + 15][3]
        }


        else if(diametri >=14 && diametri < 18){
            es_ei = tabela2_4[cilesia + 15][4]
        }

        else if(diametri >=18 && diametri < 24){
            es_ei = tabela2_4[cilesia + 15][5]
        }
        else if(diametri >=24 && diametri < 30){
            es_ei = tabela2_4[cilesia + 15][6]
        }
        else if(diametri >=30 && diametri < 40){
            es_ei = tabela2_4[cilesia + 15][7]
        }

        else if(diametri >=40 && diametri < 50){
            es_ei = tabela2_4[cilesia + 15][8]
        }
        else if(diametri >=50 && diametri < 65){
            es_ei = tabela2_4[cilesia + 15][9]
        }
        else if(diametri >=65 && diametri < 80){
            es_ei = tabela2_4[cilesia + 15][10]
        }

        else if(diametri >=80 && diametri < 100){
            es_ei = tabela2_4[cilesia + 15][11]
        }
        else if(diametri >=100 && diametri < 120){
            es_ei = tabela2_4[cilesia + 15][12]
        }
        else if(diametri >=120 && diametri < 140){
            es_ei = tabela2_4[cilesia + 15][13]
        }

        else if(diametri >=140 && diametri < 160){
            es_ei = tabela2_4[cilesia + 15][14]
        }
        else if(diametri >=160 && diametri < 180){
            es_ei = tabela2_4[cilesia + 15][15]
        }
        else if(diametri >=180 && diametri < 200){
            es_ei = tabela2_4[cilesia + 15][16]
        }

        else if(diametri >=200 && diametri < 225){
            es_ei = tabela2_4[cilesia + 15][17]
        }
        else if(diametri >=225 && diametri < 250){
            es_ei = tabela2_4[cilesia + 15][18]
        }
        else if(diametri >=250 && diametri < 280){
            es_ei = tabela2_4[cilesia + 15][19]
        }

        else if(diametri >=280 && diametri < 315){
            es_ei = tabela2_4[cilesia + 15][20]
        }
        else if(diametri >=315 && diametri < 355){
            es_ei = tabela2_4[cilesia + 15][21]
        }
        else if(diametri >=355 && diametri < 400){
            es_ei = tabela2_4[cilesia + 15][22]
        }

        else if(diametri >=400 && diametri < 450){
            es_ei = tabela2_4[cilesia + 15][23]
        }
        else if(diametri >=450 && diametri < 500){
            es_ei = tabela2_4[cilesia + 15][24]
        }

    }

/*                        m                                     */
    else if( shkronja === 9){
        if(diametri >=1 && diametri <3 ){
            es_ei = tabela2_4[cilesia + 18][0]
        }

        else if(diametri >=3 && diametri < 6){
            es_ei = tabela2_4[cilesia + 18][1]
        }

        else if(diametri >=6 && diametri < 10){
            es_ei = tabela2_4[cilesia + 18][2]
        }
        else if(diametri >=10 && diametri < 14){
            es_ei = tabela2_4[cilesia + 18][3]
        }


        else if(diametri >=14 && diametri < 18){
            es_ei = tabela2_4[cilesia + 18][4]
        }

        else if(diametri >=18 && diametri < 24){
            es_ei = tabela2_4[cilesia + 18][5]
        }
        else if(diametri >=24 && diametri < 30){
            es_ei = tabela2_4[cilesia + 18][6]
        }
        else if(diametri >=30 && diametri < 40){
            es_ei = tabela2_4[cilesia + 18][7]
        }

        else if(diametri >=40 && diametri < 50){
            es_ei = tabela2_4[cilesia + 18][8]
        }
        else if(diametri >=50 && diametri < 65){
            es_ei = tabela2_4[cilesia + 18][9]
        }
        else if(diametri >=65 && diametri < 80){
            es_ei = tabela2_4[cilesia + 18][10]
        }

        else if(diametri >=80 && diametri < 100){
            es_ei = tabela2_4[cilesia + 18][11]
        }
        else if(diametri >=100 && diametri < 120){
            es_ei = tabela2_4[cilesia + 18][12]
        }
        else if(diametri >=120 && diametri < 140){
            es_ei = tabela2_4[cilesia + 18][13]
        }

        else if(diametri >=140 && diametri < 160){
            es_ei = tabela2_4[cilesia + 18][14]
        }
        else if(diametri >=160 && diametri < 180){
            es_ei = tabela2_4[cilesia + 18][15]
        }
        else if(diametri >=180 && diametri < 200){
            es_ei = tabela2_4[cilesia + 18][16]
        }

        else if(diametri >=200 && diametri < 225){
            es_ei = tabela2_4[cilesia + 18][17]
        }
        else if(diametri >=225 && diametri < 250){
            es_ei = tabela2_4[cilesia + 18][18]
        }
        else if(diametri >=250 && diametri < 280){
            es_ei = tabela2_4[cilesia + 18][19]
        }

        else if(diametri >=280 && diametri < 315){
            es_ei = tabela2_4[cilesia + 18][20]
        }
        else if(diametri >=315 && diametri < 355){
            es_ei = tabela2_4[cilesia + 18][21]
        }
        else if(diametri >=355 && diametri < 400){
            es_ei = tabela2_4[cilesia + 18][22]
        }

        else if(diametri >=400 && diametri < 450){
            es_ei = tabela2_4[cilesia + 18][23]
        }
        else if(diametri >=450 && diametri < 500){
            es_ei = tabela2_4[cilesia + 18][24]
        }
    }

/*                         n                                     */
    else if( shkronja === 10){
        if(diametri >=1 && diametri <3 ){
            es_ei = tabela2_4[cilesia + 18][0]
        }

        else if(diametri >=3 && diametri < 6){
            es_ei = tabela2_4[cilesia + 18][1]
        }

        else if(diametri >=6 && diametri < 10){
            es_ei = tabela2_4[cilesia + 18][2]
        }
        else if(diametri >=10 && diametri < 14){
            es_ei = tabela2_4[cilesia + 18][3]
        }


        else if(diametri >=14 && diametri < 18){
            es_ei = tabela2_4[cilesia + 18][4]
        }

        else if(diametri >=18 && diametri < 24){
            es_ei = tabela2_4[cilesia + 18][5]
        }
        else if(diametri >=24 && diametri < 30){
            es_ei = tabela2_4[cilesia + 18][6]
        }
        else if(diametri >=30 && diametri < 40){
            es_ei = tabela2_4[cilesia + 18][7]
        }

        else if(diametri >=40 && diametri < 50){
            es_ei = tabela2_4[cilesia + 18][8]
        }
        else if(diametri >=50 && diametri < 65){
            es_ei = tabela2_4[cilesia + 18][9]
        }
        else if(diametri >=65 && diametri < 80){
            es_ei = tabela2_4[cilesia + 18][10]
        }

        else if(diametri >=80 && diametri < 100){
            es_ei = tabela2_4[cilesia + 18][11]
        }
        else if(diametri >=100 && diametri < 120){
            es_ei = tabela2_4[cilesia + 18][12]
        }
        else if(diametri >=120 && diametri < 140){
            es_ei = tabela2_4[cilesia + 18][13]
        }

        else if(diametri >=140 && diametri < 160){
            es_ei = tabela2_4[cilesia + 18][14]
        }
        else if(diametri >=160 && diametri < 180){

            es_ei = tabela2_4[cilesia + 18][15]
        }
        else if(diametri >=180 && diametri < 200){
            es_ei = tabela2_4[cilesia + 18][16]
        }

        else if(diametri >=200 && diametri < 225){
            es_ei = tabela2_4[cilesia + 18][17]
        }
        else if(diametri >=225 && diametri < 250){
            es_ei = tabela2_4[cilesia + 18][18]
        }
        else if(diametri >=250 && diametri < 280){
            es_ei = tabela2_4[cilesia + 18][19]
        }

        else if(diametri >=280 && diametri < 315){
            es_ei = tabela2_4[cilesia + 18][20]
        }
        else if(diametri >=315 && diametri < 355){
            es_ei = tabela2_4[cilesia + 18][21]
        }
        else if(diametri >=355 && diametri < 400){
            es_ei = tabela2_4[cilesia + 18][22]
        }

        else if(diametri >=400 && diametri < 450){
            es_ei = tabela2_4[cilesia + 18][23]
        }
        else if(diametri >=450 && diametri < 500){
            es_ei = tabela2_4[cilesia + 18][24]
        }
    }



    if(shkronja<8)
        es_ei = es_ei *(-1);

    console.log("es_ei returned from tabela2_4 eshte: ")
    console.log(parseFloat(es_ei))

    return es_ei/1000;
}
