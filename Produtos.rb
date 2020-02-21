#aplicacao simples de orientacao a objetos (com uso de keyword arguments)
#onde um valor padrao e atribuido a categoria caso o usuario nao o preencha

class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  # attr_reader :categoria
  def initialize(nome:, categoria: 'Geral',  preco:, estoque:)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end 
end

