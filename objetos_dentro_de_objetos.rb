class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  #uma instancia da classe Categoria e criada por padrao, sempre que invocarmos a classe produto
  def initialize(nome: 'Sem nome', categoria: Categoria.new, preco: 0, estoque: 0)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
