<?php
include "conexao.php";

$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$tipo = $_POST['tipo'];

$sql = "INSERT INTO usuarios(nome, email, senha, tipo)
        VALUES (?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssss", $nome, $email, $senha, $tipo);

if($stmt->execute()){
    header("Location: ListarUsuarios.php");
}else{
    echo "Erro ao cadastrar.";
}
?>