=begin
APLICAÇÃO DE HERANÇA
note que os metodos tambem sao herdados da classe produto. e nao
apenas os atributos listados em super...
=end

class ProdutoLivro < Produto
  attr_accessor :autor, :genero, :paginas
  def initialize(nome:, preco:, estoque:, autor:,
                 genero:, paginas:)
    super(nome: nome, preco: preco, estoque: estoque)
    @autor = autor
    @genero = genero
    @paginas = paginas
  end

end
