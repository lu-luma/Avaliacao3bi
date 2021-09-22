<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="maidicon.jpg">
<meta charset="UTF-8">
<title>Processando...</title>
</head>
<body>

<%
	String operacao, nome, celular, cupom, operador, pagamento, mensagem;
	String[] pedidos;
	String pedido="";
	
	//Obtem os dados enviados
	operacao = request.getParameter("btnEnviar");
	nome = request.getParameter("txtNome");
	celular = request.getParameter("txtCelular");
	cupom = request.getParameter("txtCupom");
	operador = request.getParameter("operador");
	pagamento = request.getParameter("pagamento");
	mensagem = request.getParameter("mensagem");
	pedidos = request.getParameterValues("pedido");
	
	for (String comida : pedidos){
		pedido = pedido + comida + ",";
	}
	

	if(operacao.equals("Enviar")){
        Cookie ckNome = new Cookie("Nome", URLEncoder.encode(nome, "UTF-8"));
        ckNome.setMaxAge(30); //segundos * minutos * horas * dias
        response.addCookie(ckNome);
                        
        Cookie ckCelular = new Cookie("Celular", URLEncoder.encode(celular, "UTF-8"));
        ckCelular.setMaxAge(30); //segundos * minutos * horas * dias
        response.addCookie(ckCelular);
        
        Cookie ckCupom = new Cookie("Cupom", URLEncoder.encode(cupom, "UTF-8"));
        ckCupom.setMaxAge(30); //segundos * minutos * horas * dias
        response.addCookie(ckCupom);
        
        Cookie ckOperador = new Cookie("Operador", URLEncoder.encode(operador, "UTF-8"));
        ckOperador.setMaxAge(30); //segundos * minutos * horas * dias
        response.addCookie(ckOperador);
        
        Cookie ckPagamento = new Cookie("Pagamento", URLEncoder.encode(pagamento, "UTF-8"));
        ckPagamento.setMaxAge(30); //segundos * minutos * horas * dias
        response.addCookie(ckPagamento);
        
        Cookie ckMensagem = new Cookie("Mensagem", URLEncoder.encode(mensagem, "UTF-8"));
        ckMensagem.setMaxAge(30); //segundos * minutos * horas * dias
        response.addCookie(ckMensagem); 
        
        Cookie ckPedido = new Cookie("Pedido", URLEncoder.encode(pedido, "UTF-8"));
        ckPedido.setMaxAge(30); //segundos * minutos * horas * dias
        response.addCookie(ckPedido);     
        
        out.println("Cookies cadastrados.");
        
        response.sendRedirect("MaidCafe-ExibirCookies.jsp");
    
    }else{
        out.println("Operação inválida");
    }

%>

<p>
	<a href="MaidCafe-EnviarCookies.jsp">Clique aqui para voltar.</a>
</p>

</body>
</html>