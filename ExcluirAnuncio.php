<?php
include "conexao.php";

$id = $_GET['id'];

$sql = "DELETE FROM anuncios WHERE id=?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);

if($stmt->execute()){
    header("Location: ListarAnuncio.php");
}else{
    echo "Erro ao excluir.";
}
?>