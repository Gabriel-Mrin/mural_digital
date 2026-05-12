<?php
session_start();
include "conexao.php";

// verifica se veio do formulário
if (!isset($_POST['email']) || !isset($_POST['senha'])) {
    header("Location: TelaLogin.html");
    exit;
}

$email = $_POST['email'];
$senha = $_POST['senha'];

// busca só pelo email
$sql = "SELECT * FROM usuarios WHERE email = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {

    $usuario = $result->fetch_assoc();

    // verifica senha criptografada
    if ($senha == $usuario['senha']) {

        $_SESSION['id'] = $usuario['id'];
        $_SESSION['nome'] = $usuario['nome'];
        $_SESSION['tipo'] = $usuario['tipo'];

        if ($usuario['tipo'] == 'Administrador') {
            header("Location: TelaAdm.php");
        } else {
            header("Location: Feed.php");
        }
        exit;

    } else {
        header("Location: LoginInvalido.html");
        exit;
    }

} else {
    header("Location: LoginInvalido.html");
    exit;
}
?>