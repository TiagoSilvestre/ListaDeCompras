<%@page import="controllers.ControladorProduto"%>
<%
    ControladorProduto cp = new ControladorProduto();
%>
<jsp:include page="header.jsp" />

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="features_items">
                    <h2 class="title text-center" style="margin-top: 30px;">Lista de Produtos</h2>

                    <%=cp.getProdutos()%>
                </div>
            </div>

        </div>
</section>
<jsp:include page="footer.jsp" />