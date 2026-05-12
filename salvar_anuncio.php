<?php
include "conexao.php";

$titulo = $_POST['titulo'];
$descricao = $_POST['descricao'];
$data = $_POST['data'];

$imagem = $_FILES['uploadedfile']['name'];
$tmp = $_FILES['uploadedfile']['tmp_name'];

move_uploaded_file($tmp, "img/" . $imagem);

$sql = "INSERT INTO anuncios (titulo, descricao, data, imagem)
        VALUES (?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssss", $titulo, $descricao, $data, $imagem);

if ($stmt->execute()) {
    header("Location: ListarAnuncio.php");
} else {
    echo "Erro: " . $conn->error;
}
?>