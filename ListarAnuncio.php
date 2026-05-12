<?php
session_start();

include("conexao.php");

if (!isset($_SESSION['id']) || $_SESSION['tipo'] != 'Administrador') {
    header("Location: TelaLogin.html");
    exit;
}

$sql = "SELECT * FROM anuncios ORDER BY id DESC";
$resultado = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anúncios - Mural Digital</title>
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

        <h1>Anúncios</h1>
        <p>Lista de anúncios cadastrados.</p>

        <div class="card">

            <?php if ($resultado && mysqli_num_rows($resultado) > 0) { ?>

                <table class="tabela">

                    <tr>
                        <th>Imagem</th>
                        <th>Título</th>
                        <th>Descrição</th>
                        <th>Data</th>
                        <th>Visualizações</th>
                        <th>Ações</th>
                    </tr>

                    <?php while ($anuncio = mysqli_fetch_assoc($resultado)) { ?>

                        <?php

                            $sqlViews = "
                            SELECT usuarios.nome
                            FROM visualizacoes
                            INNER JOIN usuarios
                            ON visualizacoes.id_usuario = usuarios.id
                            WHERE visualizacoes.id_anuncio = ?
                            ";

                            $stmtViews = $conn->prepare($sqlViews);
                            $stmtViews->bind_param("i", $anuncio['id']);
                            $stmtViews->execute();

                            $usuariosViews = $stmtViews->get_result();

                        ?>

                        <tr>

                            <td>
                                <img src="img/<?php echo $anuncio['imagem']; ?>" class="img-tabela">
                            </td>

                            <td>
                                <?php echo $anuncio['titulo']; ?>
                            </td>

                            <td>
                                <?php echo mb_strimwidth($anuncio['descricao'], 0, 50, "..."); ?>
                            </td>

                            <td>
                                <?php echo date('d/m/Y', strtotime($anuncio['data'])); ?>
                            </td>

                            <td>
                                <?php
                                while($usuario = $usuariosViews->fetch_assoc()){
                                    echo $usuario['nome'] . "<br>";
                                }
                                ?>
                            </td>

                            <td>

                                <a href="EditarAnuncio.php?id=<?php echo $anuncio['id']; ?>" class="btn-editar">
                                    Editar
                                </a>

                                <a href="ExcluirAnuncio.php?id=<?php echo $anuncio['id']; ?>" class="btn-excluir">
                                    Remover
                                </a>

                            </td>

                        </tr>

                    <?php } ?>

                </table>

            <?php } else { ?>

                <p>Nenhum anúncio encontrado.</p>

            <?php } ?>

        </div>

    </div>

</body>

</html>