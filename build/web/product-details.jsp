<%@page import="controllers.ControladorProduto"%>
<%@page import="classes.Produto"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Produto produto = new ControladorProduto().getProduto(id);
%>
<jsp:include page="header.jsp" />
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="product-details">
                    <div class="col-sm-4">
                        <div class="view-product">
                            <img src="<%= produto.getImg()%>" alt="" />
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="product-information">
                            <h2><%= produto.getNome()%></h2>
                            <p>Web ID: <%= produto.getId()%></p>
                            <img src="images/product-details/rating.png" alt="" />
                            <form action="adicionarproduto" method="post">
                                <span>
                                    <span>R$ <%= produto.getPreco()%></span>
                                    <input type="hidden" value="<%=produto.getId()%>" name="idproduto" />
                                </span>    
                                <br>
                                <label>Quantidade:</label> 
                                <div class="cart_quantity_button" style="height: 30px">
                                    <div class="cart_quantity_up" href="" onclick="mais('txt-quantidade')"> + </div>
                                    <input class="cart_quantity_input" id="txt-quantidade" type="text" name="quantidade" value="1" style="width: 35px;">
                                    <div class="cart_quantity_down" href="" onclick="menos('txt-quantidade')"> - </div>
                                </div>
                                <br>    
                                <button type="submit" class="btn btn-fefault cart">
                                    <i class="fa fa-shopping-cart"></i>
                                    Adicionar ao carrinho
                                </button>
                            </form>
                            <p><b>Disponibilidade:</b> Em Estoque</p>
                            <p><b>Estado:</b> Novo</p>
                            <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                        </div>
                    </div>
                </div>
                <div class="category-tab shop-details-tab">
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#reviews" data-toggle="tab">Descrição</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="reviews" >
                            <div class="col-sm-12">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp" />