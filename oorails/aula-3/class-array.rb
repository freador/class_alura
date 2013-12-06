class Livro
    attr_reader :titulo, :preco, :ano_lancamento
    def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
       @titulo = titulo
       @preco = preco
       @ano_lancamento = ano_lancamento
       @possui_reimpressao = possui_reimpressao
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

module Contador
     def <<(livro)
            push(livro)
            if @maximo_nessesario.nil? || @maximo_nessesario < size
                @maximo_nessesario = size
            end
            self    
    end

    def maximo_nessesario
        @maximo_nessesario
    end
end

class Estoque
	attr_reader :livros, :estoque

	def initialize
		@livros = []
        @livros.extend Contador
	end

	def exporta_csv
		@livros.each do |livro|
			p livro.to_csv 
		end
	end

	def mais_baratos_que(valor)
		@livros.select do |livro|
			if livro.preco <= valor
				p livro.titulo
			end
		end
	end

	def livros_total
		p @livros.size
	end

    def <<(livro)
        @livros << livro if livro
    end

    def remove(livro)
        @livros.delete(livro)
    end

    def maximo_nessesario
        @livros.maximo_nessesario
    end
end


a = Livro.new('aa', 90, 2006, true)
b =	Livro.new('BB', 20, 2006, true)

estoque = Estoque.new
estoque << a << b
estoque.maximo_nessesario
estoque.remove a
p estoque.maximo_nessesario