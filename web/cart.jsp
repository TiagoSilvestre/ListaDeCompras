<%@page import="classes.Produto"%>
<%@page import="controllers.ControladorProduto"%>
<%@page import="classes.Artigo"%>
<%@page import="java.util.ArrayList"%>
<%
    HttpSession sessao = request.getSession(true);
    ArrayList<Artigo> artigos = sessao.getAttribute("listadecompras") == null ? null : (ArrayList) sessao.getAttribute("listadecompras");
%>
<jsp:include page="header.jsp" />

<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="index.jsp">Home</a></li>
                <li class="active">Carrinho</li>
            </ol>
        </div>
        <div class="table-responsive cart_info" id="cart-container">
            <table class="table table-condensed" id="shop-table">
                <thead>
                    <tr class="cart_menu">
                        <td class="image">Item</td>
                        <td class="description"></td>
                        <td class="price">Preço</td>
                        <td class="quantity">Quantidade</td>
                        <td class="total">Total</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>

                    <%
                        ControladorProduto cp = new ControladorProduto();
                        double total = 0;
                        if (artigos != null) {
                            for (Artigo a : artigos) {
                                Produto produto = cp.getProduto(a.getIdProduto());
                                total += a.getQuantidade() * produto.getPreco();

                    %>

                    <tr class="prod-tr" id="<%= Math.round(produto.getPreco() * a.getQuantidade() * 100.0) / 100.0%>">
                        <td class="cart_product">
                            <a href=""><img src="<%= produto.getImg()%>" alt="" width="120"></a>
                        </td>
                        <td class="cart_description">
                            <h4><a href=""><%= produto.getNome()%></a></h4>
                            <p>Web ID: <%= produto.getId()%></p>
                        </td>
                        <td class="cart_price">
                            <p id="val-unit-<%= produto.getId()%>">R$<%= produto.getPreco()%></p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <div class="cart_quantity_up" id="aumenta-qtd" onclick="aumentaQtd(<%= produto.getId()%>, <%= produto.getPreco()%>)"> + </div>
                                <input class="cart_quantity_input" type="text" id="cart-qtd-<%= produto.getId()%>" name="quantity" value="<%= a.getQuantidade()%>" autocomplete="off" size="2">
                                <div class="cart_quantity_down" id="diminui-qtd" onclick="diminuiQtd(<%= produto.getId()%>, <%= produto.getPreco()%>)"> - </div>
                            </div>
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price" id="total-prod-<%= produto.getId()%>">R$<%= Math.round(produto.getPreco() * a.getQuantidade() * 100.0) / 100.0%></p>
                        </td>
                        <td class="cart_delete">
                            <span id="idartigo" style="display:none"><%= produto.getId()%></span>
                            <a class="cart_quantity_delete" href="" id="deleteitem"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <% }} %>
                </tbody>
            </table>
            <% if (artigos == null) { %>
            <span>O carrinho está vazio</span>
            <% }%>
        </div>
        
    </div>
</section>

<section id="do_action">
    <div class="container">
        <a href="javascript:window.history.go(-2)">Continuar Comprando</a>
        <div class="row">
            <div class="col-sm-6 "></div>
            <div class="col-sm-6 ">
                <div class="total_area">
                    <ul>
                        <li>Sub Total do Carrinho<span id="txt-subtotal">R$ <%= Math.round(total * 100.0) / 100.0%></span></li>
                        <li>Impostos e Taxas <span>R$ 0.00</span></li>
                        <li>Taxa de Entrega <span>Gratis</span></li>
                        <li>Total <span id="txt-total">R$ <%= Math.round(total * 100.0) / 100.0%></span></li>
                    </ul>
                    <a class="btn btn-default check_out" href="">Finalizar</a>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp" />