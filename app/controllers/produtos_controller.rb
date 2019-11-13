class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order(preco: :desc).limit(2)
    @produto_desconto = Produto.order(:preco).limit(1)
  end
end
