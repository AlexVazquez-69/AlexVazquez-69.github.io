<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];

 
    echo "<h3>1. ¿Qué es Minecraft? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Un videojuego</h5>";
    if($pregunta1 == "Un videojuego"){
        $aciertos++;
        echo "<img src='correcta.jpeg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpeg' width='50px'><hr>";
    }



    echo "<h3>2. “Alguien __________.”</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = realmente lee esto? </h5>";
    if(strtoupper($pregunta2) == "realmente lee esto? "){
        $aciertos++;
        echo "<img src='correcta.jpeg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
   

    echo "<h3>3. ¿Qué se necesita para craftear una mesa de encantamientos? (Selecciona 1)</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Un videojuego</h5>";
    if($pregunta1 == "Dos diamantes, cuatro de obsidiana y 1 libro"){
        $aciertos++;
        echo "<img src='correcta.jpeg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpeg' width='50px'><hr>";
    }



        echo "<h3>4. ¿Que es el diamante?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = Mineral</h5>";
        if($pregunta1 == "Mineral"){
            $aciertos++;
            echo "<img src='correcta.jpeg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpeg' width='50px'><hr>";
        }

        echo "<h3>5. “No borres un mundo __________.”</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = por un mal momento</h5>";
        if(strtoupper($pregunta5) == "por un mal momento"){
            $aciertos++;
            echo "<img src='correcta.jpeg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpeg' width='50px'><hr>";

        }



    
   
    echo "<h3>6. ¿Cuando se creo Minecraft?</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = 17 de Mayo del 2009</h5>";
    if($pregunta6 == "17 de Mayo del 2009"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
   

   
    echo "<h3>7. “No dejes arboles __________”</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = Flotando</h5>";
    if(strtoupper($pregunta7) == "Flotando"){
        $aciertos++;
        echo "<img src='correcta.jpeg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpeg' width='50px'><hr>";
    }
 

   
    echo "<h3>8, ¿Quien fue el creador de minecraft, antes de que fuera adquirido por cierta empresa? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta8)." ---- Correcta = Notch, Markus Persson</h5><br>";
    $p8 = 0;

    if(count($pregunta8) == 2){
        for($i=0; $i<count($pregunta8); $i++){
            if($pregunta8[$i] == "Notch" || $pregunta8[$i] == "Markus Persson"){
                $p8 ++;
            }
        }
        if($p8 == 2){
            $aciertos++;
            echo "<img src='correcta.jpeg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpeg' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.jpeg' width='50px'><hr>";
    }
    



        echo "<h3>9. ¿Que lenguaje de programacion se utilizo para crear la primera version de minecraft?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Java</h5>";
        if($pregunta9 =="Java"){
            $aciertos++;
            echo "<img src='correcta.jpeg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpeg' width='50px'><hr>";
        }




        echo "<h3>10. “Maravillas infinitas, __________.”</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = posibilidades infinitas</h5>";
        if(strtoupper($pregunta10) == "posibilidades infinitas"){
            $aciertos++;
            echo "<img src='correcta.jpeg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpeg' width='50px'><hr>";
        }


    echo "CALIFICACIÓN FINAL = " . ($aciertos*10) . "%";

?>