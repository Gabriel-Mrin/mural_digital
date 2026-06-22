<?php
session_start();

include "conexao.php";

if (!isset($_SESSION['id'])) {
    header("Location: TelaLogin.html");
    exit;
}

if (!isset($_GET['id'])) {
    die("Notícia não encontrada.");
}

$id = (int) $_GET['id'];

$sql = "UPDATE anuncios
        SET favorito = IF(favorito = 1, 0, 1)
        WHERE id = $id";

$conn->query($sql);

header("Location: feed.php");
exit;
?>