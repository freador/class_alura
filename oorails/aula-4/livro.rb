class Livro
    attr_reader :titulo, :preco, :ano_lancamento, :editora
    def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora)
       @titulo = titulo
       @preco = preco
       @ano_lancamento = ano_lancamento
       @possui_reimpressao = possui_reimpressao
       @editora = editora
     end

     def possui_reimpressao?
         @possui_reimpressao
     end

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