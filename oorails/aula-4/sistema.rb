require_relative 'livro'
require_relative 'estoque'



a = Livro.new('aa', 90, 2006, true, 'alpha')
b =	Livro.new('BB', 20, 2006, true, 'beta')

estoque = Estoque.new
estoque << a << b  << a << b  << a << b << b << b
estoque.vendas a
estoque.vendas a
estoque.vendas a
estoque.livro_que_mais_vendeu_por_titulo.titulo