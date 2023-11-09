<?php

require 'conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $nickname = $_POST['nickname'];
    $rut = $_POST['rut'];
    $email = $_POST['email'];
    $region = $_POST['region'];
    $comuna = $_POST['comuna'];
    $candidato = $_POST['candidato'];
    
    $selectedOptions = [];

    if (isset($_POST['Web'])) {
        $selectedOptions['opcion_web'] = 1;
    } else {
        $selectedOptions['opcion_web'] = 0;
    }
    if (isset($_POST['TV'])) {
        $selectedOptions['opcion_tv'] = 1;
    } else {
        $selectedOptions['opcion_tv'] = 0;
    }
    if (isset($_POST['Redes Sociales'])) {
        $selectedOptions['opcion_redes_sociales'] = 1;
    } else {
        $selectedOptions['opcion_redes_sociales'] = 0;
    }
    if (isset($_POST['Amigo'])) {
        $selectedOptions['opcion_amigos'] = 1;
    } else {
        $selectedOptions['opcion_amigos'] = 0;
    }
    
    // Realiza las validaciones

    if (strlen($nickname) < 6 || !preg_match('/[a-zA-Z]/', $nickname) || !preg_match('/[0-9]/', $nickname)) {
        $response = ["message" => "El Alias debe tener al menos 6 caracteres y contener letras y números."];
        echo json_encode($response);
        exit;
    }
    
    function validarRut($rut) {
        $rut = preg_replace('/[^k0-9]/i', '', $rut);
        $dv  = substr($rut, -1);
        $numero = substr($rut, 0, strlen($rut)-1);
        $i = 2;
        $suma = 0;
        foreach(array_reverse(str_split($numero)) as $v)
        {
            if($i==8)
                $i = 2;
    
            $suma += $v * $i;
            ++$i;
        }
        $dvr = 11 - ($suma % 11);
    
        if($dvr == 11)
            $dvr = 0;
        if($dvr == 10)
            $dvr = 'K';
    
        if($dvr == strtoupper($dv))
            return true;
        else
            return false;
    }
    
    // Validar formato del Rut
    if (!validarRut($rut)) {
        $response = ["message" => "RUT inválido"];
        echo json_encode($response);
        exit;
    }
    
    // Verificar si el Rut ya existe en la base de datos
    $checkRutQuery = "SELECT COUNT(*) as count FROM registro_votos WHERE Rut = '$rut'";
    $checkRutResult = mysqli_query($mysqli, $checkRutQuery);
    $checkRutData = mysqli_fetch_assoc($checkRutResult);
    
    if ($checkRutData['count'] > 0) {
        $response = ["message" => "El Rut ya está registrado"];
        echo json_encode($response);
        exit;
    }
    
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $response = ["message" => "Correo electrónico inválido"];
        echo json_encode($response);
        exit;
    }
   // Validar que se hayan seleccionado al menos dos opciones
    if (count(array_filter($selectedOptions)) < 2) {
        $response = ["message" => "Debes seleccionar al menos dos opciones"];
        echo json_encode($response);
        exit;
    }

     // Inserta los datos del form en la base de datos
     $insertQuery = "INSERT INTO registro_votos 
     (Nombre_Apellido, Alias, Rut, Email, Region, Comuna, Voto, 
     opcion_web, opcion_tv, opcion_redes_sociales, opcion_amigos) 
     VALUES 
     ('$name', '$nickname', '$rut', '$email', '$region', '$comuna', '$candidato', 
     {$selectedOptions['opcion_web']}, {$selectedOptions['opcion_tv']}, 
     {$selectedOptions['opcion_redes_sociales']}, {$selectedOptions['opcion_amigos']})";

        $result = mysqli_query($mysqli, $insertQuery);

        if ($result) {
        $response = ["message" => "Tu votación se ha realizado con éxito"];
        echo json_encode($response);
        } else {
        $response = ["message" => "Error al almacenar los datos: " . mysqli_error($mysqli)];
        echo json_encode($response);
        }
        } else {
        $response = ["message" => "Error al almacenar los datos."];
        echo json_encode($response);
        }

        ?>