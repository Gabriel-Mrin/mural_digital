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

$limite = 10;
$pagina = isset($_GET['pagina']) ? (int) $_GET['pagina'] : 1;
$inicio = ($pagina - 1) * $limite;

$filtro = $_GET['filtro'] ?? '';

$sql = "SELECT * FROM anuncios
        WHERE titulo LIKE '%$filtro%'
        ORDER BY criado_em DESC
        LIMIT $inicio, $limite";

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mural Digital</title>
    <link rel="stylesheet" href="feed.css?v=3">
</head>

<body>

    <header>
        <h2>
            Mural Digital
        </h2>


        <div class="menu-links">
            <a href="favoritas.php">Favoritos</a>
            <a href="logout.php">Sair</a>
        </div>

    </header>
    <form method="GET" class="filtro">
        <input type="text" name="filtro" placeholder="Pesquisar notícia" value="<?php echo $filtro; ?>">
        <button type="submit">Pesquisar</button>
    </form>

    <div class="feed">

        <?php if ($result->num_rows > 0) { ?>

            <?php while ($row = $result->fetch_assoc()) { ?>

                <div class="post">

                    <a href="noticia.php?id=<?php echo $row['id']; ?>" class="link-post">

                        <img src="img/<?php echo $row['imagem']; ?>" alt="Imagem do anúncio">

                        <h3>
                            <?php echo $row['titulo']; ?>
                        </h3>

                        <p>
                            <?php echo substr($row['descricao'], 0, 100); ?>...
                        </p>

                    </a>

                    <div class="info-post">
                        <span>
                            <?php echo date('d/m/Y H:i', strtotime($row['criado_em'])); ?>
                        </span>

                        <a href="#" class="favorito" data-id="<?php echo $row['id']; ?>">
                            <?php echo $row['favorito'] ? '★' : '☆'; ?>
                        </a>
                    </div>

                </div>

            <?php } ?>

        <?php } else { ?>

            <p class="sem-post">
                Nenhum anúncio disponível.
            </p>

        <?php } ?>

    </div>

    <div class="paginacao">
        <?php if ($pagina > 1) { ?>
            <a href="feed.php?pagina=<?php echo $pagina - 1; ?>&filtro=<?php echo $filtro; ?>">
                Anterior
            </a>
        <?php } ?>

        <a href="feed.php?pagina=<?php echo $pagina + 1; ?>&filtro=<?php echo $filtro; ?>">
            Próxima
        </a>
    </div>

    <script>
        document.querySelectorAll('.favorito').forEach(botao => {
            botao.addEventListener('click', function (event) {
                event.preventDefault();

                const id = this.dataset.id;

                fetch('favoritar.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: 'id=' + id
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.favorito == 1) {
                            this.textContent = '★';
                        } else {
                            this.textContent = '☆';
                        }
                    });
            });
        });

        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>

</body>

</html>