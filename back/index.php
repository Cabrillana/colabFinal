<?php

namespace App;

require_once "app/config/app.php";

define('METODO', $_SERVER["REQUEST_METHOD"]);
define('ROOT',  __DIR__ . DIRECTORY_SEPARATOR);

if(!isset($_GET['url']) || METODO == "OPTIONS"){
  echo "ColabBack";
  exit();
} else {
  $url = $_GET['url'];
}

$control = explode('/',$url);
switch($control[0]) {

  case "municipios":
    if(METODO == "GET") {
      $municipio = new Controllers\Municipio();
      $municipio->obtenerMunicipios();
    } else {
      echo "ColabBack";
      exit();
    }
    break;
  
  case "visitas":
    $visita = new Controllers\Visitas();
    if(METODO == "GET") {
      $visita->obtenerVisitas();
    } elseif(METODO == "POST") {
      $visita->insertarVisita();
    } else {
      echo "ColabBack";
      exit();
    }
    break;

  case "contacto":
    if(METODO == "POST") {
      $contacto = new Controllers\Contacto();
      $contacto->insertarContacto();
    } else {
      echo "ColabBack";
      exit();
    }
    break;

    default:
      echo "ColabBack";
      exit();
}
