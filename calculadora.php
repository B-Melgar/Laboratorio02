<!DOCTYPE html>
<html>
<head>
<title>Calculadora PHP</title>
</head>
<body>
<?php
$num1 = $_POST["num1"];
$num2 = $_POST["num2"];
$operacion = $_POST["operacion"];
$resultado = "";

if ($operacion == "sumar") {
    $resultado = $num1 + $num2;
} elseif ($operacion == "restar") {
    $resultado = $num1 - $num2;
} elseif ($operacion == "multiplicar") {
    $resultado = $num1 * $num2;
} elseif ($operacion == "dividir") {
    if ($num2 != 0) {
        $resultado = $num1 / $num2;
    } else {
        $resultado = "Error: División por cero";
    }
}
?>
<h1>Calculadora PHP</h1>
<form method="post" action="">
    <label for="num1">Número 1:</label>
    <input type="text" name="num1"><br>
    <label for="num2">Número 2:</label>
    <input type="text" name="num2"><br>
    <label for="operacion">Operación:</label>
    <select name="operacion">
        <option value="sumar">Sumar</option>
        <option value="restar">Restar</option>
        <option value="multiplicar">Multiplicar</option>
        <option value="dividir">Dividir</option>
    </select><br>
    <input type="submit" value="Calcular">
</form>
<?php
if (is_numeric($resultado)) {
    echo "Resultado: " . $resultado;
} else {
    echo $resultado;
}
?>
</body>
</html>
