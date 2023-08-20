<%@ Language=VBScript %>
<!DOCTYPE html>
<html>
<head>
<title>Calculadora ASP Clásico</title>
</head>
<body>
<%
Dim num1, num2, resultado
num1 = Request.Form("num1")
num2 = Request.Form("num2")
operacion = Request.Form("operacion")

If operacion = "sumar" Then
    resultado = num1 + num2
ElseIf operacion = "restar" Then
    resultado = num1 - num2
ElseIf operacion = "multiplicar" Then
    resultado = num1 * num2
ElseIf operacion = "dividir" Then
    If num2 <> 0 Then
        resultado = num1 / num2
    Else
        resultado = "Error: División por cero"
    End If
End If
%>
<h1>Calculadora ASP Clásico</h1>
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
<%
If IsNumeric(resultado) Then
    Response.Write("Resultado: " & resultado)
Else
    Response.Write(resultado)
End If
%>
</body>
</html>
