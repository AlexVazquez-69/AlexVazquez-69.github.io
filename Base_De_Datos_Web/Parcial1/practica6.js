var ocultar = false;

function muestra_texto(){
    if(!ocultar){
        document.getElementById("texto").innerHTML = "Lorem adxdxdxdxdxdxdxdxdxdxdxdxxdxdxdxdxdxd "
        ocultar = true;
        document.getElementById("mostrar").innerHTML = "Mostrar menos"
    }else{
        document.getElementById("texto").innerHTML = "bebcshbckbihfbwjbdkjxifiybkhbdddddddd"
        ocultar = false;
        document.getElementById("mostrar").innerHTML = "Mostrar mas"
    }

}

function lanzar_dado(){
    var numero = Math.floor(Math.random() * 6) + 1;
    document.getElementById("imagen_dado").innerHTML = "<img src-'dado" + numero + ".png' width-'100px'>";
}