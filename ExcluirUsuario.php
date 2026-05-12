<?php
include "conexao.php";

$id = $_GET['id'];

$sql = "DELETE FROM usuarios WHERE id=?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);

if($stmt->execute()){
    header("Location: ListarUsuarios.php");
}else{
    echo "Erro ao excluir.";
}
?>