require_relative 'contador'
class Estoque
	attr_reader :livros, :estoque

	def initialize
		@livros = []
		@vendas = []
        @livros.extend Contador
	end

	def quantidade_de_vendas_por(produto, &campo)
        @vendas.count {|venda| campo.call(venda) == campo.call(produto) }
    end

    def livro_que_mais_vender_por(&campo)    	
    	que_mais_vedeu_por('livro',&campo)
    end

    def revista_que_mais_vender_por(&campo)    	
    	que_mais_vedeu_por('revista',&campo)
    end


    def que_mais_vedeu_por(tipo, &campo)
    	@vendas.select{|l| l.tipo == tipo}.sort{ |v1,v2| quantidade_de_vendas_por(v1, &campo) <=>
    	quantidade_de_vendas_por(v2,&campo) }.last
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

    def venda(livro)
    	@vendas << livro
        @livros.delete(livro)

    end

    def maximo_nessesario
        @livros.maximo_nessesario
    end
end