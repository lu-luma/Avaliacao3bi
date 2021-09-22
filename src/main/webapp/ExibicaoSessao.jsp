<%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 21/09/2021
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.net.*" %>
<html>
<head>
    <link rel="icon" href="maidicon.jpg">
    <style>
        #title{
            text-align: center;
            color: black;
        }
        div{
            background-color: #F6C288;
            width: 500px;
            border-radius: 15px;
            border: solid 3px #F8AD59;
            margin: auto;
            padding-left: 10px;
            padding-right: 10px;
        }
        fieldset{
            border:solid 1px #FAD8CF;

        }
    </style>
    <title>Exibir sessão</title>
</head>
<body style="background-image: url('coffe.jpg');">
<h1 id="title">Maid Café - Sessão</h1>
<%
    String nome,celular,mensagem,cupom,pagamento,operador,pedido;
    pedido="";
    operador="";
    pagamento="";
    cupom="";
    mensagem="";
    celular="";
    nome="";
    if(session.getAttribute("Nome") !=null){
        nome=(String) session.getAttribute("Nome");
        nome= URLDecoder.decode(nome,"UTF-8");
    }
    if(session.getAttribute("Celular") !=null){
        celular=(String) session.getAttribute("Celular");
        celular= URLDecoder.decode(celular,"UTF-8");
    }
    if(session.getAttribute("Cupom") !=null){
        cupom=(String) session.getAttribute("Cupom");
        cupom= URLDecoder.decode(cupom,"UTF-8");
    }
    if(session.getAttribute("Operador") !=null){
        operador=(String) session.getAttribute("Operador");
        operador= URLDecoder.decode(operador,"UTF-8");
    }
    if(session.getAttribute("Pedido") !=null){
        pedido=(String) session.getAttribute("Pedido");
        pedido= URLDecoder.decode(pedido,"UTF-8");
    }
    if(session.getAttribute("Pagamento") !=null){
        pagamento=(String) session.getAttribute("Pagamento");
        pagamento= URLDecoder.decode(pagamento,"UTF-8");
    }
    if(session.getAttribute("Mensagem") !=null){
        mensagem=(String) session.getAttribute("Mensagem");
        mensagem= URLDecoder.decode(mensagem,"UTF-8");
    }
    String[] pedidos;
    pedidos = pedido.split(",");

%>
<div>
    <br>
    <fieldset>
        <legend>Pedido</legend>
        <br>
    <label>Nome: </label><%=nome%> <br>
    <label>Celular: </label><%=celular%> <br>
    <label>Cupom: </label><%=cupom%> <br>
    <label>Operador(a): </label><%=operador%> <br>
    <label>Pedido: </label><%for( int i=0;i<pedidos.length;i++){
            if(i == pedidos.length-1){
                out.println(pedidos[i]);
            }
            else{
                out.println(pedidos[i]+", ");
            }
        }%> <br>
    <label>Forma de pagamento: </label><%=pagamento%> <br>
    <label>Mensagem Especial: </label><%=mensagem%> <br>
    <br>
    </fieldset>
    <p>
        <a href="EntradaSessao.jsp">Clique aqui para voltar</a>
    </p>
</div>
</body>
</html>
