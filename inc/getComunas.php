<?php 
require 'conexion.php';

$idRegion = $mysqli->real_escape_string($_POST['ID_Region']);

$sql = "SELECT Nombre_Comuna FROM comunas WHERE ID_Region = $idRegion ORDER BY Nombre_Comuna ASC";

$resultado = $mysqli->query($sql);

$respuesta = "<option value= ''>Seleccionar</option>";

while($row = $resultado->fetch_assoc()){
    $respuesta .= "<option value= '". $row['Nombre_Comuna'] ."'>". $row['Nombre_Comuna'] ."</option>";
}

echo json_encode($respuesta, JSON_UNESCAPED_UNICODE);