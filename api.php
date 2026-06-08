<?php

$json = file_get_contents("https://randomuser.me/api/");
$dados = json_decode($json, true);

$usuario = $dados['results'][0];
?>

<!DOCTYPE html>
<html>
<head>
    <title>Teste API</title>
</head>
<body>

    <h1>Usuário da API</h1>

    <img src="<?= $usuario['picture']['large'] ?>">

    <p>Nome: <?= $usuario['name']['first'] . ' ' . $usuario['name']['last'] ?></p>

    <p>Email: <?= $usuario['email'] ?></p>

    <p>País: <?= $usuario['location']['country'] ?></p>

</body>
</html>