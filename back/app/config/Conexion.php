<?php

namespace App\Config;

class Conexion
{
  private $host = "localhost";
  private $database = "colabFinal";
  private $user = "root";
  private $password = "";
  public $pdo;
  
  public function __construct() {
    $this->pdo = null;
    try{
      $this->pdo = new \PDO('mysql:host='.$this->host.';dbname='.$this->database,$this->user,$this->password);
    } catch(\PDOException $exception) {
      echo "Conexión Fallida: " . $exception->getMessage();
    }
    return $this->pdo;
  }
}