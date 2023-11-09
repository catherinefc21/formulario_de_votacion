<?php

require 'inc/conexion.php';

$regiones = $mysqli->query("SELECT ID_Region, Nombre_Region FROM regiones");
$candidatos = $mysqli->query("SELECT ID_Candidato, Nombre_Candidato FROM candidatos");

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" />
    <title>Sistema de votación</title>
  </head>
  <body>
  <form class="form" id="votingForm">
      <h2>FORMULARIO DE VOTACIÓN:</h2>
      <div class="input-group">
        <label for="name">Nombre y Apellido</label>
        <input type="text" name="name" id="name" required />
      </div>
      <div class="input-group">
        <label for="nickname">Alias</label>
        <input type="text" name="nickname" required />
      </div>
      <div class="input-group">
        <label for="rut">RUT</label>
        <input type="text" name="rut" required />
      </div>
      <div class="input-group">
        <label for="email">Email</label>
        <input type="text" name="email" required  />
      </div>
      <div class="input-group">
        <label for="region">Región</label>
        <select name="region" id='region' required>
        <option value=''>Seleccionar</option>
          <?php  while($row= $regiones->fetch_assoc()){?>
            <option value='<?php echo $row['ID_Region']; ?>'><?php echo $row['Nombre_Region']; ?></option>
            <?php }?>
        </select>
      </div>
      <div class="input-group">
    <label for="comuna">Comuna</label>
    <select name="comuna" id="comuna" required>
        <option value="">Seleccionar</option>
    </select>
  </div>
      <div class="input-group">
        <label for="candidato">Candidato</label>
        <select name="candidato" required>
        <option value=''>Seleccionar</option>
          <?php  while($row= $candidatos->fetch_assoc()){?>
            <option value='<?php echo $row['Nombre_Candidato']; ?>'><?php echo $row['Nombre_Candidato']; ?></option>
            <?php }?>
        </select>
      </div>
      <div class="input-group">
        <label>Cómo se enteró de nosotros</label>
        <input type="checkbox" name="Web" value="Web"  /> Web
        <input type="checkbox" name="TV" value="TV" /> TV
        <input
          type="checkbox"
          name="Redes Sociales"
          value="Redes Sociales"
         
        />
        Redes Sociales
        <input type="checkbox" name="Amigo" value="Amigo"  />
        Amigo
      </div>
      <input class="button" type="submit" value="Votar" />
      <div class='message'id="messageContainer"></div>
    </form>
    <div class='message'id="messageContainer"></div>
    <script src="js/functions.js"></script>
  </body>
</html>
