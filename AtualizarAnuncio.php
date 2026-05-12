<?php
include "conexao.php";

$id = $_POST['id'];
$titulo = $_POST['titulo'];
$descricao = $_POST['descricao'];
$data = $_POST['data'];

$imagem = $_FILES['imagem']['name'];

if($imagem != ""){

    $tmp = $_FILES['imagem']['tmp_name'];

    move_uploaded_file($tmp, "img/" . $imagem);

}else{

    $sqlImagem = "SELECT imagem FROM anuncios WHERE id=?";
    $stmtImagem = $conn->prepare($sqlImagem);
    $stmtImagem->bind_param("i", $id);
    $stmtImagem->execute();

    $resultadoImagem = $stmtImagem->get_result();
    $dadosImagem = $resultadoImagem->fetch_assoc();

    $imagem = $dadosImagem['imagem'];
}

$sql = "UPDATE anuncios
        SET titulo=?, descricao=?, data=?, imagem=?
        WHERE id=?";

$stmt = $conn->prepare($sql);

$stmt->bind_param(
    "ssssi",
    $titulo,
    $descricao,
    $data,
    $imagem,
    $id
);

if($stmt->execute()){
    header("Location: ListarAnuncio.php");
}else{
    echo "Erro ao atualizar.";
}
?>