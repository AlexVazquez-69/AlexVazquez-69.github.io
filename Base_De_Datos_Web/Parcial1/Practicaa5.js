console.log("Funciona JS")

var cambio = false;

function cambia_color(){
    if(cambio){
        document.getElementById("cuadro").style.backgroundColor = 'pink';
        cambio = false;
    }else {
    document.getElementById("cuadro").style.backgroundColor = 'blue';
    cambio = true;
    }   
}

function ocultar(){
    document.getElementById("titulo").style.display = 'none';

}

function mostrar(){
    document.getElementById("titulo").style.display ='';
}

