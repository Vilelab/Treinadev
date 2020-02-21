#atributos: quantidade, juros, produto, valor
#com exceção de juros, os outros serão herdados
#metodos: calcular_valor, atualizar_valor, aplicar_desconto(porcentgem inteiro)
#implementar atualizar_valor... os outros 2 métodos serão herdados

class PagamentoCredito < Pagamento
  attr_accessor :juros
  def initialize(produto:, quantidade:, juros:)
    super(produto: produto, quantidade: quantidade)
    @juros = juros
  end

def atualizar_valor()
  @valor += @valor * @juros/100
end

end
  
