require_relative 'produto'
require_relative 'impresso'
class Revista < Produto
    include Impresso
    attr_reader :numero
    def initialize(titulo, preco, ano_lancamento, editora, numero)
       super(titulo, preco, ano_lancamento, editora)
       @numero = numero
     end

    def matches?(query)
      ["revista","impresso"].include?(query)
    end

end