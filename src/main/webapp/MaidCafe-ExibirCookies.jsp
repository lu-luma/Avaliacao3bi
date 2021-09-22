<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="maidicon.jpg">
<meta charset="UTF-8">
<title>Bem vindo ao Maid Café!</title>
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
</head>
<body style="background-image: url('coffe.jpg')">

<h1 id="title">Maid Café - Cookies</h1>
<div>
	<fieldset>
		<legend>Pedido</legend>
		
<%
	String nome, celular, cupom, operador, pagamento, mensagem;
	String[] pedidos;
	String pedido="";
	
	nome = "";
	celular = "";
	cupom = "";
	operador = "";
	pagamento = "";
	mensagem = "";
	
	//Recupera todos os cookies da máquina
	Cookie[] listaCookies = request.getCookies();
	
	if(listaCookies != null){
		for(Cookie o_Cookie : listaCookies){
			if(o_Cookie.getName().equals("Nome")){
				nome = URLDecoder.decode(o_Cookie.getValue(), "UTF-8");
			}
			else if(o_Cookie.getName().equals("Celular")){
				celular = URLDecoder.decode(o_Cookie.getValue(), "UTF-8");
			}
			else if(o_Cookie.getName().equals("Cupom")){
				cupom = URLDecoder.decode(o_Cookie.getValue(), "UTF-8");
			}
			else if(o_Cookie.getName().equals("Operador")){
				operador = URLDecoder.decode(o_Cookie.getValue(), "UTF-8");
			}
			else if(o_Cookie.getName().equals("Pagamento")){
				pagamento = URLDecoder.decode(o_Cookie.getValue(), "UTF-8");
			}
			else if(o_Cookie.getName().equals("Mensagem")){
				mensagem = URLDecoder.decode(o_Cookie.getValue(), "UTF-8");
			}
			else if(o_Cookie.getName().equals("Pedido")){
				pedido = URLDecoder.decode(o_Cookie.getValue(), "UTF-8");
			}
		}	
	}else{
		out.println("Não há dados cadastrados");
	}

%>

	<p>
		Nome: <%=nome %>
	</p>
	<p>
		Celular: <%=celular %>
	</p>
	<p>
		Cupom: <%=cupom %>
	</p>
	<p>
		Atendente: <%=operador %>
	</p>
	<p>
		Pedido: <%
		pedidos = pedido.split(",");
		for(int i=0; i<pedidos.length;i++){
			if(i==pedidos.length-1){
				out.println(pedidos[i]);
			}else{
				out.println(pedidos[i]+", ");
			}
		}%>
	</p>
	<p>
		Pagamento: <%=pagamento %>
	</p>
	<p>
		Mensagem: <%=mensagem %>
	</p>
</fieldset>
	<br>
<p>
	<a href="MaidCafe-EnviarCookies.jsp">Clique aqui para voltar.</a>
</p>
</div>
</body>
</html>