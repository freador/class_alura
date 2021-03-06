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
	def quantidade_de_vendas_titulo(produto)
		@vendas.count {|venda| venda.titulo == produto.titulo}		
	end

	def livro_que_mais_vendeu_por_titulo(produto)
		@vendas.sort{|v1,v2| quantidade_de_vendas_titulo(v1) <=> quantidade_de_vendas_titulo(v2)}.last
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

<<<<<<< HEAD
    def vendas(livro)
=======
    def venda(livro)
>>>>>>> a6152fd2512b2f95014afb1ff899e7e5b0aa07c0
    	@vendas << livro
        @livros.delete(livro)

    end

    def maximo_nessesario
        @livros.maximo_nessesario
    end
end