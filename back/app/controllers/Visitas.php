<?php

namespace App\Controllers;

class Visitas {

  private $db = null;

  function __construct() {
    $conn = new \App\Config\Conexion();
    $this->db = $conn->pdo;
  }

  public function obtenerVisitas() {

    $eval = "SELECT v.*,m.municipio as municipioVisitado FROM visitas v,municipios m WHERE m.id=v.idMunicipioVisitado ORDER BY v.id DESC LIMIT 10";
    $peticion = $this->db->prepare($eval);
    $peticion->execute();
    $resultado = $peticion->fetchAll(\PDO::FETCH_OBJ);
    exit(json_encode($resultado));
  }
 
  public function insertarVisita() {
    $visita = json_decode(file_get_contents("php://input"));

    if(!isset($visita->idMunicipioVisitado) || !isset($visita->nombreCompleto) || !isset($visita->email)
      || !isset($visita->municipioProcedencia) || !isset($visita->comentario)) {
      http_response_code(400);
      exit(json_encode(["error" => "No se han enviado todos los parametros"]));
    }

    $eval = "INSERT INTO visitas (idMunicipioVisitado,nombreCompleto,email,municipioProcedencia,comentario) VALUES (?,?,?,?,?)";
    $peticion = $this->db->prepare($eval);
    $peticion->execute([$visita->idMunicipioVisitado,$visita->nombreCompleto,$visita->email,$visita->municipioProcedencia,$visita->comentario]);
    http_response_code(201);
    exit(json_encode("Visita creada correctamente"));
  }
}