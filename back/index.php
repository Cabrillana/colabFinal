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

  case "ejemplo":
    $ejemplo = new Controllers\Ejemplo();
    $ejemplo->fEjemplo();
    break;

    default:
      echo "ColabBack";
      exit();
}
