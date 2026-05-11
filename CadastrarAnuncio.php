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
    <title>Cadastrar Anúncio - Mural Digital</title>
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
    <h1>Cadastrar Anúncio</h1>
    <p>Preencha os dados do anúncio.</p>

    <div class="card">
        <form class="form" action="salvar_anuncio.php" method="POST" enctype="multipart/form-data">

            <label>Título</label>
            <input type="text" name="titulo" required>

            <label>Descrição</label>
            <input type="text" name="descricao" required>

            <!--TROQUEI PRA URL -->
            <label>Imagem</label>
            <input type="hidden" name="MAX_FILE_SIZE" value="10000000000" />
            <p>
            Escolha o arquivo para upload: <input name="uploadedfile" type="file" /><br />
        	</p>

            <label>Data</label>
            <input type="date" name="data" required>

            <div class="buttons">
                <button type="submit">Salvar</button>
                <a href="ListarAnuncio.php" class="btn-voltar">Voltar</a>
            </div>

        </form>
    </div>
</div>

</body>
</html>