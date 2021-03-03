<?php

namespace App\Controllers;

class Municipio {

  private $db = null;

  function __construct() {
    $conn = new \App\Config\Conexion();
    $this->db = $conn->pdo;
  }

  public function obtenerMunicipios() {

    $eval = "SELECT * FROM municipios";
    $peticion = $this->db->prepare($eval);
    $peticion->execute();
    $resultado = $peticion->fetchAll(\PDO::FETCH_OBJ);
    exit(json_encode($resultado, JSON_UNESCAPED_UNICODE));
  }
}