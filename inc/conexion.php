<?php

$mysqli = new mysqli('localhost', 'root', '', 'votacion_db');

if ($mysqli->connect_error) {
    echo 'Error en la conexión: ' . $mysqli->connect_error;
    exit;
}