<?php
include "conexao.php";

$id = $_POST['id'];
$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$tipo = $_POST['tipo'];

$sql = "UPDATE usuarios
        SET nome=?, email=?, senha=?, tipo=?
        WHERE id=?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssi", $nome, $email, $senha, $tipo, $id);

if($stmt->execute()){
    header("Location: ListarUsuarios.php");
}else{
    echo "Erro ao atualizar.";
}
?>