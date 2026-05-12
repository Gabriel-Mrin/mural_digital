<?php
session_start();

include("conexao.php");

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
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title><?php echo $row['titulo']; ?></title>

    <style>

        body{
            font-family: Arial;
            background: #f4f4f4;
            padding: 30px;
        }

        .noticia{
            background: white;
            max-width: 800px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
        }

        img{
            width: 100%;
            border-radius: 10px;
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