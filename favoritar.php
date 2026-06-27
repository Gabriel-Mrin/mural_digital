<?php
session_start();

include "conexao.php";

if (!isset($_SESSION['id'])) {
    echo json_encode(["erro" => "Usuário não logado"]);
    exit;
}

if (!isset($_POST['id'])) {
    echo json_encode(["erro" => "ID não enviado"]);
    exit;
}

$id = (int) $_POST['id'];

$sql = "UPDATE anuncios
        SET favorito = IF(favorito = 1, 0, 1)
        WHERE id = $id";

$conn->query($sql);

$sql = "SELECT favorito FROM anuncios WHERE id = $id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();

echo json_encode([
    "favorito" => $row['favorito']
]);
?>