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
    <title>Cadastrar Usuário - Mural Digital</title>
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
        <h1>Cadastrar Usuário</h1>
        <p>Preencha os dados abaixo para adicionar um novo usuário.</p>

        <div class="card">
            <form class="form" action="salvar_usuario.php" method="POST">

                <label>Nome</label>
                <input type="text" name="nome" required>

                <label>Email</label>
                <input type="email" name="email" required>

                <label>Senha</label>
                <input type="password" name="senha" required>

                <label>Tipo de Usuário</label>
                <select name="tipo" required>
                    <option value="">Selecione</option>
                    <option>Administrador</option>
                    <option>Usuário</option>
                </select>

                <div class="buttons">
                    <button type="submit">Salvar</button>
                    <a href="ListarUsuarios.php" class="btn-voltar">Voltar</a>
                </div>

            </form>
        </div>
    </div>

</body>
</html>