$(document).ready(function(){
    cartas = new Array(54);
    var cont=0;
    //Funcion click del boton dar carta
    $("#dar_carta").click(function(){
        var b = true;
        while(b){
            var num = Math.floor(Math.random()*54)+1;
            console.log("Numero de carta= "+num);
            if(cartas[num-1]== true){
                continue;
            }else{
                $("#carta_activa").html("<img src='loteria/"+num+".jpg'>");
                cartas[num-1]=true;
                b=false;
                cont++;
            }
            if(cont == 54){
                console.log("ya se dieron todas las cartas");
                b=false;
            }
        }
    });

    cargarCartas()

    function cargarCartas(){
        var Carta1=0;
        var Carta2=0;
        let asignadas =new Array(54).fill(false);

        while(Carta1 < 16){
            var num = Math.floor(Math.random()*54)+1;
            if(asignadas[num-1] == false){
                $("#Carta1").append("<div class='col-sm-3'><img class='img-fluid' src='loteria/"+num+".jpg'></div>");
                asignadas[num-1]=true;
                Carta1++;
            }else{
                continue;
            }
        
        }
        asignadas = new Array(54).fill(false);
        
        while(Carta2 < 16){
            var num = Math.floor(Math.random()*54)+1;
            if(asignadas[num-1] == false){
                $("#Carta2").append("<div class='col-sm-3'><img class='img-fluid' src='loteria/"+num+".jpg'></div>");
                asignadas[num-1]=true;
                Carta2++;
            }else{
                continue;
            }
        
        }
        
    }
});