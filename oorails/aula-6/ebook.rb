require_relative 'produto'
class Ebook
    include Produto
    def initialize(titulo, preco, ano_lancamento, editora)
       @titulo = titulo
       @preco = preco
       @ano_lancamento = ano_lancamento
       @editora = editora
     end

     def possui_reimpressao?
         @possui_reimpressao
     end

     def to_csv
     	"#{@titulo}, #{@ano_lancamento}"
     end


    def matches?(query)
      ["ebook","digital"].include?(query)
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