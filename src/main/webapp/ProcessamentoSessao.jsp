<%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 21/09/2021
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.net.*" %>
<html>
<head>
    <title>Processando...</title>
</head>
<body>
<%
String nome,celular,mensagem,cupom,pagamento,operador;
String [] pedidos ;
//pegar dados
    nome = request.getParameter("txtNome");
    celular = request.getParameter("txtCelular");
    cupom = request.getParameter("txtCupom");
    pagamento = request.getParameter("formaPagamento");
    mensagem = request.getParameter("mensagem");
    operador = request.getParameter("operador");
    pedidos = request.getParameterValues("pedido");
    session.setAttribute("Nome", URLEncoder.encode(nome,"UTF-8"));
    session.setAttribute("Celular", URLEncoder.encode(celular,"UTF-8"));
    session.setAttribute("Pagamento", URLEncoder.encode(pagamento,"UTF-8"));
    session.setAttribute("Mensagem", URLEncoder.encode(mensagem,"UTF-8"));
    session.setAttribute("Cupom", URLEncoder.encode(cupom,"UTF-8"));
    session.setAttribute("Operador", URLEncoder.encode(operador,"UTF-8"));
    String pedido = "";
    for(int i=0;i<pedidos.length;i++){
        pedido = pedido + pedidos[i] + ",";
    }
    out.println(pedido);
    session.setAttribute("Pedido", URLEncoder.encode(pedido,"UTF-8"));
    session.setMaxInactiveInterval(30);
    response.sendRedirect("ExibicaoSessao.jsp");




%>
</body>
</html>
