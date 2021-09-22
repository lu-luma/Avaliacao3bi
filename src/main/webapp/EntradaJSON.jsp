<%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 21/09/2021
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <title>EntradaJSON</title>
    <link rel="icon" href="maidicon.jpg">

</head>
<body style="background-image: url('coffe.jpg');">
<h1 id="title">Maid Café - Json</h1>
<form name="form" action="processarJson" >
    <br><br>
    <fieldset>
        <legend>Pedido</legend>
        <label>Nome: </label><input type="text" name="txtNome" required>
        <br><br>
        <label>Celular: </label><input type="text" name="txtCelular" required>
        <br><br>
        <label>Cupom de desconto: </label><input type="text" name="txtCupom" required>
        <br><br>
        <label>Selecione o(a) operador(a): </label>
        <select name="operador" required>
            <option value="Rem">Rem</option>
            <option value="Matsuoka Rin">Matsuoka Rin</option>
            <option value="Toru">Toru</option>
            <option value="Levi Ackerman">Levi Ackerman</option>
            <option value="Misaki Ayuzawa">Misaki Ayuzawa</option>
            <option value="Fushiguro Megumi">Fushiguro Megumi</option>
        </select>
        <br><br>
        <label>Faça seu pedido: </label><br>
        <div >
            <input type="checkbox" class="alingn" name="pedido" value="Expresso" >Expresso <br>
            <input type="checkbox" class="alingn" name="pedido" value="Frappuccino" >Frappuccino <br>
            <input type="checkbox" class="alingn" name="pedido" value="Latte" >Latte <br>
            <input type="checkbox" class="alingn" name="pedido" value="Perfait de frutas" >Perfait de frutas <br>
            <input type="checkbox" class="alingn" name="pedido" value="Brownie" >Brownie <br>
        </div>
        <br><br>
        <label>Selecione a forma de pagamento:</label> <br>
        <div >
            <input type="radio" class="alinhar" name="formaPagamento" value="Cartão de Crédito">Cartão de crédito <br>
            <input type="radio" class="alinhar" name="formaPagamento" value="Cartão de Débito" >Cartão de débito <br>
            <input type="radio" class="alinhar" name="formaPagamento" value="Pix" >Pix <br>
            <input type="radio" class="alinhar" name="formaPagamento" value="Dinheiro">Dinheiro <br>
            <input type="radio" class="alinhar" name="formaPagamento" value="Ame" >Ame <br>
        </div>
        <br><br>
        <label>Mensagem especial: </label><br>
        <textarea name="mensagem" id="" cols="10" rows="5" required></textarea>
        <br><br>
        <button type="submit" value="Salvar" name="btnOperacao">Salvar</button>
        <button type="submit" value="Exibir" name="btnOperacao">Exibir</button>
    </fieldset>
    <br>
</form>
</body>
</html>
