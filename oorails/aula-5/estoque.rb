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

    def method_missing(name)
        matcher = name.to_s.match "(.+)_que_mais_vender_por_(.+)"
        if matcher
            tipo = matcher[1]
            campo = matcher[2].to_sym
            que_mais_vedeu_por(tipo, &campo)
        else
            super
        end
    end

    def respond_to?(name)
        matched = name.to_s.match("(.+)_que_mais_vender_por_(.+)") 
        !!matched || super
    end


    def que_mais_vedeu_por(tipo, &campo)
    	@vendas.select{|produto| produto.matches?(tipo)}.sort{ |v1,v2| quantidade_de_vendas_por(v1, &campo) <=>
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