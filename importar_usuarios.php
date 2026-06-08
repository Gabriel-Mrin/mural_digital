<?php

include "conexao.php";

$json = file_get_contents("https://randomuser.me/api/?results=60");
$dados = json_decode($json, true);

foreach ($dados['results'] as $usuario) {

    $nome = $usuario['name']['first'] . " " . $usuario['name']['last'];
    $email = $usuario['email'];
    $senha = $usuario['login']['password'];

    $tipo = "usuario";

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

echo "60 usuários importados com sucesso!";
?>