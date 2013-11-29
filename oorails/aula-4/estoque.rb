require_relative 'contador'
class Estoque
	attr_reader :livros, :estoque

	def initialize
		@livros = []
		@vendas = []
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
    	@vendas << livro
        @livros.delete(livro)

    end

    def maximo_nessesario
        @livros.maximo_nessesario
    end
end