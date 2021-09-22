<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="maidicon.jpg">
<meta charset="UTF-8">
<title>Bem vindo ao Maid Café!</title>
	<style>
		#title{
			text-align: center;
			color:black;
		}
		form{
			background-color: #F6C288;
			width: 500px;
			border-radius: 15px;
			border: solid 3px #F8AD59;
			margin: auto;
			padding-left: 10px;
			padding-right: 10px;
		}
		label{
			position: relative;
			width: 120px;
			left: 10px;
			display: inline-block;
		}
		input,select{
			position: relative;
			left: 20px;
			width: 250px ;
		}
		textarea{
			margin-left: 140px;
			width: 250px ;
		}
		button{
			width: 100px;
			background-color: #FCCEB7;
			border: solid 1px #FCCEB7;
			border-radius: 3px;
		}
		fieldset{
			border:solid 1px #FAD8CF;

		}
		.alingn{
			position: relative;
			left: 40px;
			width: 100px ;
		}
		.alinhar{
			position: relative;
			left: 40px;
			width: 100px ;
		}

		div{
			margin-left: 100px;
		}
	</style>
</head>
<body style="background-image: url('coffe.jpg')">

<h1 id="title">Maid Café - Cookies</h1>
<form action="MaidCafe-ProcessamentoCookies.jsp">
	<fieldset>
		<legend>Pedido</legend>
		<label>Nome: </label><input type="text" name="txtNome" required>
		<br><br>
		<label>Celular: </label><input type="text" name="txtCelular" required>
		<br><br>
		<label>Cupom de Desconto: </label><input type="text" name="txtCupom" required>
		<br><br>
		<label>Atendente: </label>
		<select name="operador">
			<option>Rem</option>
			<option>Matsuoka Rin</option>
			<option>Toru</option>
			<option>Levi Ackerman</option>
			<option>Misaki Ayuzawa</option>
			<option>Fushiguro Megumi</option>
		</select>
		<br><br>
		
		<label>Faça seu pedido:</label><br>
            <input type="checkbox" name="pedido" class="alingn" value="Expresso" >
            <label>Expresso</label> <br>
            <input type="checkbox" name="pedido" class="alingn" value="Frapuccino">
            <label>Frapuccino</label> <br>
            <input type="checkbox" name="pedido" class="alingn" value="Latte">
            <label>Latte</label> <br>
            <input type="checkbox" name="pedido" class="alingn" value="Perfait de frutas">
            <label>Perfait de frutas</label> <br>
            <input type="checkbox" name="pedido" class="alingn" value="Brownie">
            <label>Brownie</label>
        <br> <br>
		
		<label>Selecione a forma de Pagamento:</label><br>
            <input type="radio" name="pagamento" class="alinhar" value="Dinheiro">
            <label>Dinheiro</label> <br>
            <input type="radio" name="pagamento" class="alinhar" value="Cartão de crédito">
            <label>Cartão de crédito</label> <br>
            <input type="radio" name="pagamento" class="alinhar" value="Cartão de débito">
            <label>Cartão de débito</label> <br>
            <input type="radio" name="pagamento" class="alinhar" value="Pix">
            <label>Pix</label> <br>
            <input type="radio" name="pagamento" class="alinhar" value="Ame">
            <label>Ame</label>
        <br> <br>
        
		<label>Mensagem Especial: </label><br>
		<textarea name="mensagem" cols="10" rows="5" required></textarea>
		<br><br>
		<button type="submit" value="Enviar" name="btnEnviar">Enviar</button>
	</fieldset>
</form>
</body>
</html>