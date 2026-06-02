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
    <link rel="stylesheet" href="noticia.css">
    <meta charset="UTF-8">
    <title><?php echo $row['titulo']; ?></title>

    <style>
        body {
            font-family: Arial;
            background: #f4f4f4;
            padding: 30px;
        }

        .noticia {
            background: white;
            max-width: 800px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
        }

        img {
            width: 100%;
            border-radius: 10px;
        }

        .noticia {
            background: white;
            max-width: 850px;
            margin: 40px auto;
            padding: 30px;
            border-radius: 18px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
        }

        .noticia img {
            width: 100%;
            max-height: 420px;
            object-fit: cover;
            border-radius: 14px;
        }

        .noticia h1 {
            color: #141e30;
            margin-top: 25px;
            font-size: 34px;
        }

        .noticia p {
            line-height: 1.8;
            color: #444;
            font-size: 18px;
        }
    </style>

</head>

<body>

    <div class="noticia">

        <img src="img/<?php echo $row['imagem']; ?>">

        <h1>
            <?php echo $row['titulo']; ?>
        </h1>

        <p>
            <?php echo $row['descricao']; ?>
        </p>

        <span>
            <?php echo date('d/m/Y', strtotime($row['data'])); ?>
        </span>

        <br><br>

        <a href="feed.php" class="btn-voltar">
            ← Voltar ao Feed
        </a>

    </div>

</body>

</html>