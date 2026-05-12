<?php
session_start();
include "conexao.php";

if (!isset($_SESSION['id']) || $_SESSION['tipo'] != 'Administrador') {
    header("Location: TelaLogin.html");
    exit;
}

$id = $_GET['id'];

$sql = "SELECT * FROM anuncios WHERE id=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();

$resultado = $stmt->get_result();
$anuncio = $resultado->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Anúncio - Mural Digital</title>
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
        <h1>Editar Anúncio</h1>
        <p>Altere os dados do anúncio.</p>

        <div class="card">

            <form class="form"
            action="AtualizarAnuncio.php"
            method="POST"
            enctype="multipart/form-data">

                <input type="hidden"
                name="id"
                value="<?php echo $anuncio['id']; ?>">

                <label>Título</label>

                <input type="text"
                name="titulo"
                value="<?php echo $anuncio['titulo']; ?>">

                <label>Descrição</label>

                <input type="text"
                name="descricao"
                value="<?php echo $anuncio['descricao']; ?>">

                <label>Data</label>

                <input type="date"
                name="data"
                value="<?php echo $anuncio['data']; ?>">

                <label>Imagem Atual</label><br>

                <img src="img/<?php echo $anuncio['imagem']; ?>"
                width="120">

                <br><br>

                <label>Alterar Imagem</label>

                <input type="file"
                name="imagem"
                accept="image/*">

                <div class="buttons">
                    <button type="submit">
                        Salvar Alterações
                    </button>

                    <a href="ListarAnuncio.php"
                    class="btn-voltar">
                    Cancelar
                    </a>
                </div>

            </form>

        </div>
    </div>

</body>
</html>