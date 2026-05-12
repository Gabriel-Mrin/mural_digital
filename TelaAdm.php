<?php
session_start();

if (!isset($_SESSION['id']) || $_SESSION['tipo'] != 'Administrador') {
    header("Location: TelaLogin.html");
    exit;
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel Administrativo - Mural Digital</title>
    <link rel="stylesheet" href="admin.css">

</head>

<body>

    <div class="sidebar">
        <h2>Mural Digital</h2>

        <a href="TelaAdm.php">Inicio</a>
        <a href="CadastrarUsuario.php">Cadastrar Usuário</a>
        <a href="ListarUsuarios.php">Visualizar Usuários</a>
        <a href="CadastrarAnuncio.php">Cadastrar Anúncio</a>
        <a href="ListarAnuncio.php">Visualizar Anúncios</a>
        <a href="logout.php">Sair</a>
    </div>

    <div class="content">
        <h1>Painel Administrativo</h1>
        <p>Bem-vindo, administrador!</p>

        <div class="card">
            <h3>Resumo</h3>
            <p>Gerencie usuários e anúncios do sistema.</p>
        </div>
    </div>

</body>
</html>