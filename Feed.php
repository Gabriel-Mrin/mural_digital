<?php
session_start();

header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Expires: 0");

if (!isset($_SESSION['id'])) {
    header("Location: TelaLogin.html");
    exit;
}

include "conexao.php";

$sql = "SELECT * FROM anuncios ORDER BY id DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mural Digital</title>
    <link rel="stylesheet" href="feed.css">
</head>

<body>

<header>
    <h2>
        Mural Digital - Bem-vindo,
        <?php echo $_SESSION['nome']; ?>
    </h2>

    <a href="logout.php">Sair</a>
</header>

<div class="feed">

    <?php if ($result->num_rows > 0) { ?>

        <?php while($row = $result->fetch_assoc()) { ?>

            <?php

            $idUsuario = $_SESSION['id'];
            $idAnuncio = $row['id'];

            $verifica = "SELECT * FROM visualizacoes
            WHERE id_usuario = ? AND id_anuncio = ?";

            $stmt = $conn->prepare($verifica);
            $stmt->bind_param("ii", $idUsuario, $idAnuncio);
            $stmt->execute();

            $resultVerifica = $stmt->get_result();

            if($resultVerifica->num_rows == 0){

                $insert = "INSERT INTO visualizacoes
                (id_usuario, id_anuncio)
                VALUES (?, ?)";

                $stmtInsert = $conn->prepare($insert);
                $stmtInsert->bind_param("ii", $idUsuario, $idAnuncio);
                $stmtInsert->execute();
            }

            ?>

           <a href="noticia.php?id=<?php echo $row['id']; ?>" class="link-post">

                <div class="post">

                    <img
                    src="img/<?php echo $row['imagem']; ?>"
                    alt="Imagem do anúncio">

                    <h3>
                        <?php echo $row['titulo']; ?>
                    </h3>

                    <p>
                        <?php echo substr($row['descricao'], 0, 100); ?>...
                    </p>

                    <span>
                        <?php echo date('d/m/Y', strtotime($row['data'])); ?>
                    </span>

                </div>

            </a>

        <?php } ?>

    <?php } else { ?>

        <p style="text-align:center;">
            Nenhum anúncio disponível.
        </p>

    <?php } ?>

</div>

<script>
    if (window.history.replaceState) {
        window.history.replaceState(null, null, window.location.href);
    }
</script>

</body>
</html>