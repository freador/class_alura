module Produto
    attr_reader :titulo, :preco, :ano_lancamento, :editora
    def to_csv
     	"#{@titulo}, #{@ano_lancamento}"
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