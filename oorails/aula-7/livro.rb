require_relative 'produto'
require_relative 'impresso'

class Livro < Produto
    include Impresso
    attr_reader :possui_reimpressao,:possui_sobrecapa
    def initialize(titulo, preco, ano_lancamento, editora,possui_reimpressao, possui_sobrecapa)
       super(titulo, preco, ano_lancamento, editora)
       @possui_reimpressao = possui_reimpressao
       @possui_sobrecapa = possui_sobrecapa
     end

    def matches?(query)
      ['livros', 'impresso'].include?(query)
    end


     def calcula_preco(livro)
     	if @ano_lancamento < 2006 && @possui_reimpressao == false
     		@preco*0.9
     	elsif @ano_lancamento < 2006 && @possui_reimpressao == true
     		@preco*0.94
     	elsif @ano_lancamento >= 2006 && @ano_lancamento <= 2006
     		@preco*0.95
     	end
    end
end