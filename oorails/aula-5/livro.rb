require_relative 'produto'
class Livro
    include Produto
    attr_reader :titulo, :preco, :ano_lancamento,:possui_reimpressao,:possui_sobrecapa, :editora
    def initialize(titulo, preco, ano_lancamento, possui_reimpressao, possui_sobrecapa, editora)
       @titulo = titulo
       @preco = preco
       @ano_lancamento = ano_lancamento
       @possui_reimpressao = possui_reimpressao
       @possui_sobrecapa = possui_sobrecapa
       @editora = editora
     end

     def possui_reimpressao?
         @possui_reimpressao
     end

    def matches?(query)
      ['livros', 'impresso'].include?(query)
    end
end