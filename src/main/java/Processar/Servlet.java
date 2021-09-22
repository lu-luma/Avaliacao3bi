package Processar;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.*;

@WebServlet(name = "processarJson", value = "/processarJson")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome, celular, mensagem, cupom, pagamento, operador, operacao;
        String[] pedidos;
        //pegar dados
        nome = request.getParameter("txtNome");
        celular = request.getParameter("txtCelular");
        cupom = request.getParameter("txtCupom");
        pagamento = request.getParameter("formaPagamento");
        mensagem = request.getParameter("mensagem");
        operador = request.getParameter("operador");
        pedidos = request.getParameterValues("pedido");
        operacao = request.getParameter("btnOperacao");
        String pedido = "";
        for (int i = 0; i < pedidos.length; i++) {
            pedido = pedido + pedidos[i] + ",";
        }
        PrintWriter out = response.getWriter();
        String arqNome = "C:\\Users\\lumal\\Documents\\maidcafe.json";
        if (operacao.equals("Salvar")) {
            //gravando o JSON
            try {

                JSONObject item = new JSONObject();
                JSONArray arrItens = new JSONArray();
                //Verificando se o arquivo existe
                //Se existir, recupera os valores
                File arqExiste = new File (arqNome);
                if(arqExiste.exists()) {
                    JSONParser o_Parser = new JSONParser();
                    arrItens = (JSONArray) o_Parser.parse(new FileReader(arqNome));
                }
                item.put("Nome", nome);
                item.put("Celular", celular);
                item.put("Cupom", cupom);
                item.put("Operador", operador);
                item.put("Pedido", pedido);
                item.put("Pagamento", pagamento);
                item.put("Mensagem", mensagem);
                arrItens.add(item);
                FileWriter o_FileWritter = new FileWriter(arqNome);
                o_FileWritter.write(arrItens.toJSONString());
                o_FileWritter.close();
                response.setContentType("text/html");
                out.println("<h3>Dados salvos com sucesso!</h3><br>");
            } catch (Exception e) {
                out.println("Ocorreu um erro:" + e.getMessage());
            }
        } else if (operacao.equals("Exibir")) {
            try {
                File arqExiste = new File(arqNome);
                if(arqExiste.exists()) {
                    JSONParser o_Parser = new JSONParser();
                    JSONArray arrItens = (JSONArray) o_Parser.parse(new FileReader(arqNome));
                    String o_nome, o_celular, o_mensagem, o_cupom, o_pagamento, o_operador, o_pedido;
                    o_pedido = "";
                    response.setContentType("text/html");
                    out.println("<h1>Maid Café - Json</h1>");
                    out.println("<br>");
                    for (Object item : arrItens) {
                        out.println("<hr>");
                        JSONObject dados = (JSONObject) item;
                        o_nome = dados.get("Nome").toString();
                        o_celular = dados.get("Celular").toString();
                        o_cupom = dados.get("Cupom").toString();
                        o_operador = dados.get("Operador").toString();
                        o_pedido = dados.get("Pedido").toString();
                        //gerando nova lista com pedidos
                        pedidos = o_pedido.split(",");
                        o_pagamento = dados.get("Pagamento").toString();
                        o_mensagem = dados.get("Mensagem").toString();

                        out.println("Nome: " + o_nome + "<br>");
                        out.println("Celular: " + o_celular + "<br>");
                        out.println("Cupom: " + o_cupom + "<br>");
                        out.println("Operador: " + o_operador + "<br>");
                        out.println("Pedido: ");
                        for (int i = 0; i < pedidos.length; i++) {
                            if (i == pedidos.length - 1) {
                                out.println(pedidos[i]);
                            } else {
                                out.println(pedidos[i] + ", ");
                            }
                        }
                        out.println("<br>");
                        out.println("Pagamento: " + o_pagamento + "<br>");
                        out.println("Mensagem: " + o_mensagem + "<br>");

                    }
                    out.println("<a href='EntradaJSON.jsp'>Clique aqui para voltar</a>");
                    out.println("<br>");
                    out.println("<hr>");
                }
                else{
                    response.setContentType("text/html");
                    out.println("<p>Arquivo não existe<p>");
                }

            } catch (Exception e) {
                out.println("Ocorreu um erro:" + e.getMessage());
            }

        }

    }
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }
}