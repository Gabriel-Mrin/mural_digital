<?php
session_start();

include("conexao.php");

if (!isset($_SESSION['id'])) {
    header("Location: TelaLogin.html");
    exit;
}

if (!isset($_GET['id'])) {
    die("Notícia não encontrada.");
}

$id = intval($_GET['id']);

$sql = "SELECT * FROM anuncios WHERE id = ?";
$stmt = $conn->prepare($sql);

$stmt->bind_param("i", $id);

$stmt->execute();

$result = $stmt->get_result();

if ($result->num_rows == 0) {
    die("Notícia não encontrada.");
}

$row = $result->fetch_assoc();

$idUsuario = $_SESSION['id'];
$idAnuncio = $_GET['id'];

$verifica = "SELECT id FROM visualizacoes
WHERE id_usuario = ? AND id_anuncio = ?";

$stmt = $conn->prepare($verifica);
$stmt->bind_param("ii", $idUsuario, $idAnuncio);
$stmt->execute();

$resultVerifica = $stmt->get_result();

if ($resultVerifica->num_rows == 0) {
    $insert = "INSERT INTO visualizacoes
    (id_usuario, id_anuncio)
    VALUES (?, ?)";

    $stmtInsert = $conn->prepare($insert);
    $stmtInsert->bind_param("ii", $idUsuario, $idAnuncio);
    $stmtInsert->execute();
}
?>

<!DOCTYPE html>
<html lang="pt-br">


<head>
    <meta charset="UTF-8">
    <title><?php echo $row['titulo']; ?></title>
    <link rel="stylesheet" href="feed.css?v=4">
</head>

<body>

    <header>
        <h2>Mural Digital</h2>

        <div class="menu-links">
            <a href="Feed.php">Feed</a>
            <a href="favoritas.php">Favoritos</a>
            <a href="logout.php">Sair</a>
        </div>
    </header>

    <div class="noticia">

        <h1>
            <?php echo $row['titulo']; ?>
        </h1>

        <img src="img/<?php echo $row['imagem']; ?>">


        <p>
            <?php echo $row['descricao']; ?>
        </p>

        <span>
            <?php echo date('d/m/Y H:i', strtotime($row['criado_em'])); ?>
        </span>

        <br><br>



    </div>

</body>

</html>