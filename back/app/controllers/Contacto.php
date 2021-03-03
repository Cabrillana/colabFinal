<?php

namespace App\Controllers;

class Contacto {

  private $db = null;

  function __construct() {
    $conn = new \App\Config\Conexion();
    $this->db = $conn->pdo;
  }

  public function insertarContacto() {
    $visita = json_decode(file_get_contents("php://input"));

    if(!isset($visita->nombreCompleto) || !isset($visita->email) || !isset($visita->comentario)) {
      http_response_code(400);
      exit(json_encode(["error" => "No se han enviado todos los parametros"]));
    }

    $eval = "INSERT INTO contacto (nombreCompleto,email,comentario) VALUES (?,?,?)";
    $peticion = $this->db->prepare($eval);
    $peticion->execute([$visita->nombreCompleto,$visita->email,$visita->comentario]);
    http_response_code(201);
    exit(json_encode("Contacto creado correctamente"));
  }
  
}