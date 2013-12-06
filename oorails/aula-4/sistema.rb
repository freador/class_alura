require_relative 'livro'
require_relative 'estoque'



<<<<<<< HEAD
a = Livro.new('aa', 90, 2006, true, 'alpha')
b =	Livro.new('BB', 20, 2006, true, 'beta')

estoque = Estoque.new
estoque << a << b  << a << b  << a << b << b << b
estoque.vendas a
estoque.vendas a
estoque.vendas a
estoque.livro_que_mais_vendeu_por_titulo.titulo
=======
a = Livro.new('aa', 90, 2006, true, 'Alpha','livro')
b =	Livro.new('BB', 20, 2006, true, 'Beta', 'livro')
c = Livro.new('Revista a', 20, 2006, true, 'Beta', 'revista')
d = Livro.new('Revista b', 20, 2006, true, 'Beta', 'revista')

estoque = Estoque.new
estoque << a << b << a << c << c << c << c<<d<<d
estoque.maximo_nessesario
estoque.venda a
estoque.venda b
estoque.venda c
estoque.venda c
estoque.venda c
estoque.venda d
#p estoque.revista_que_mais_vender_por_titulo.titulo
#p estoque.livro_que_mais_vender_por_titulo.titulo
>>>>>>> a6152fd2512b2f95014afb1ff899e7e5b0aa07c0
