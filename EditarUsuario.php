<?php
session_start();
include "conexao.php";

if (!isset($_SESSION['id']) || $_SESSION['tipo'] != 'Administrador') {
    header("Location: TelaLogin.html");
    exit;
}

$id = $_GET['id'];

$sql = "SELECT * FROM usuarios WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();

$resultado = $stmt->get_result();
$usuario = $resultado->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuário - Mural Digital</title>
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
        <h1>Editar Usuário</h1>
        <p>Altere os dados do usuário.</p>

        <div class="card">

            <form class="form" action="AtualizarUsuario.php" method="POST">

                <input type="hidden" name="id" value="<?php echo $usuario['id']; ?>">

                <label>Nome</label>
                <input type="text" name="nome"
                value="<?php echo $usuario['nome']; ?>">

                <label>Email</label>
                <input type="email" name="email"
                value="<?php echo $usuario['email']; ?>">

                <label>Senha</label>
                <input type="password" name="senha"
                value="<?php echo $usuario['senha']; ?>">

                <label>Tipo de Usuário</label>

                <select name="tipo">

                    <option value="Administrador"
                    <?php if($usuario['tipo'] == 'Administrador') echo 'selected'; ?>>
                    Administrador
                    </option>

                    <option value="Usuário"
                    <?php if($usuario['tipo'] == 'Usuário') echo 'selected'; ?>>
                    Usuário
                    </option>

                </select>

                <div class="buttons">
                    <button type="submit">Salvar Alterações</button>
                    <a href="ListarUsuarios.php" class="btn-voltar">Cancelar</a>
                </div>

            </form>

        </div>
    </div>

</body>
</html>