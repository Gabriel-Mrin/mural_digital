<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "mural_digital";

// cria conexão
$conn = new mysqli($host, $user, $pass, $db);

// verifica erro
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

// define charset (evita erro com acentos)
$conn->set_charset("utf8");

?>