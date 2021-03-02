<?php

namespace App\Controllers;

class Ejemplo {

  private $db = null;

  function __construct() {
    $conn = new \App\Config\Conexion();
    $this->db = $conn->pdo;
  }

  public function fEjemplo() {

    //$eval = "SELECT * FROM ";
    //$peticion = $this->db->prepare($eval);
    //$peticion->execute();
    //$resultado = $peticion->fetchAll(\PDO::FETCH_OBJ);
    $resultado = "Funcion Ejemplo";
    exit(json_encode($resultado));
  }
  
}