$(function () {
    //Deleta Item inteiro
    $('tr #deleteitem').click(function (e) {
        e.preventDefault();
        var elemento = $(this);
        var idproduto = elemento.parent().find('#idartigo').text();
        $.ajax({
            url: 'deletaritem',
            type: 'post',
            data: {idproduto: idproduto, excluir: 1},
            success: function (r) {
                elemento.parent().parent().remove();

                var elementostabela = $('#shop-table tr');
                if (elementostabela.length <= 1) {
                    $('#cart-container').append('<span>O carrinho esta vazio</span>');
                }

                $('#txt-subtotal').text(r);
                $('#txt-total').text(r);
            }
        });
    });

});

function aumentaQtd(id, preco) {
    var quantidade = $('#cart-qtd-'+id).val();
    quantidade++;    
    var valtot = $('#total-prod-'+id).text();
    valtot = parseFloat(valtot.slice(2));
    
    var valunit = $('#val-unit-'+id).text();
    valunit = parseFloat(valunit.slice(2));
    
    var novopreco = valunit + valtot; 
    $.ajax({
        url: 'adicionarproduto',
        type: 'post',
        data: {idproduto: id, quantidade : 1},
        success: function () {
            $('#cart-qtd-'+id).val(quantidade);
            $('#total-prod-'+id).text('R$'+novopreco.toFixed(2));
            var totalprod = 0;
            var aux;
            $('.cart_total_price').each(function(){
                aux = parseFloat($('#'+this.id).text().slice(2));
                totalprod = aux + totalprod;
            });
            $('#txt-subtotal').text(totalprod.toFixed(2));
            $('#txt-total').text(totalprod.toFixed(2));
        }
    });
}

function diminuiQtd(id, preco){
    var quantidade = $('#cart-qtd-'+id).val();
    quantidade--;    
    
    var valtot = $('#total-prod-'+id).text();
    valtot = parseFloat(valtot.slice(2));
    
    var valunit = $('#val-unit-'+id).text();
    valunit = parseFloat(valunit.slice(2));
    
    var novopreco = valtot - valunit; 
    $.ajax({
        url: 'deletaritem',
        type: 'post',
        data: {idproduto: id, excluir : 0},
        success: function (r) {
            if(quantidade == '0'){
                $('#cart-qtd-'+id).parent().parent().parent().remove();
                var elementostabela = $('#shop-table tr');
                if (elementostabela.length <= 1) {
                    $('#cart-container').append('<span>O carrinho esta vazio</span>');
                }
            }else{
                $('#cart-qtd-'+id).val(quantidade);
                $('#total-prod-'+id).text('R$'+novopreco.toFixed(2));
            }
            $('#txt-subtotal').text(r);
            $('#txt-total').text(r);
        }
    });
}