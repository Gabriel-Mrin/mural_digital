<?php

include "conexao.php";

$json = file_get_contents("https://randomuser.me/api/?results=10");
$dados = json_decode($json, true);

foreach ($dados['results'] as $usuario) {

    $nome = $usuario['name']['first'] . " " . $usuario['name']['last'];
    $email = $usuario['email'];
    $senha = $usuario['login']['password'];

    $tipo = "Administrador";

    $sql = "INSERT INTO usuarios (nome, email, senha, tipo)
            VALUES (?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param(
        "ssss",
        $nome,
        $email,
        $senha,
        $tipo
    );

    $stmt->execute();
}

echo "10 usuários importados com sucesso!";
?>