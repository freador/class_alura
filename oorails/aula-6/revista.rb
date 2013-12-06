require_relative 'produto'
class Revista
    include Produto
    attr_reader :numero
    def initialize(titulo, preco, ano_lancamento, numero, editora)
       @titulo = titulo
       @preco = preco
       @ano_lancamento = ano_lancamento
       @numero = numero
       @editora = editora
     end

     def possui_reimpressao?
         @possui_reimpressao
     end

    def matches?(query)
      ["revista","impresso"].include?(query)
    end

end