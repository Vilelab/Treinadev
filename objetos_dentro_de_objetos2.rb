class Pagamento
  attr_accessor :produto, :quantidade, :preco, :valor

  def initialize(quantidade: 0, produto: Produto.new, preco: 0)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    #preco e atributo da classe Produto, e nao pagamento... por isso deve-se apontar como tal na notacao
    @valor = @quantidade * @produto.preco
    @produto.remove_estoque(@quantidade)
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end
