<?php
session_start();
include "conexao.php";

if (!isset($_SESSION['id']) || $_SESSION['tipo'] != 'Administrador') {
    header("Location: TelaLogin.html");
    exit;
}

$sql = "SELECT * FROM usuarios";
$resultado = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuários - Mural Digital</title>
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
        <h1>Usuários</h1>
        <p>Lista de usuários cadastrados no sistema.</p>

        <div class="card">

            <table class="tabela">

                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Tipo</th>
                    <th>Ações</th>
                </tr>

                <?php while($usuario = mysqli_fetch_assoc($resultado)) { ?>

                <tr>
                    <td><?php echo $usuario['nome']; ?></td>
                    <td><?php echo $usuario['email']; ?></td>
                    <td><?php echo $usuario['tipo']; ?></td>

                    <td>
                        <a href="EditarUsuario.php?id=<?php echo $usuario['id']; ?>" class="btn-editar">
                            Editar
                        </a>

                        <a href="ExcluirUsuario.php?id=<?php echo $usuario['id']; ?>" class="btn-excluir">
                            Remover
                        </a>
                    </td>
                </tr>

                <?php } ?>

            </table>

        </div>
    </div>

</body>
</html>