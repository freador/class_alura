require_relative 'livro'
require_relative 'revista'
require_relative 'ebook'
require_relative 'estoque'



a = Livro.new('aa', 90, 2006, true, true, 'Alpha')
b =	Livro.new('BB', 20, 2006, true,true ,'Beta')
c = Revista.new('Revista a', 20, 2006, 26, 'Beta')
d = Revista.new('Revista b', 20, 2006, 27, 'Beta')
e = Ebook.new('Ebooking A', 20, 2006, 'Beta')

estoque = Estoque.new
estoque << a << b << a << c << c << c << c <<d <<d << e << e
estoque.maximo_nessesario
estoque.venda a
estoque.venda b
estoque.venda c
estoque.venda c
estoque.venda c
estoque.venda d
estoque.venda e
p estoque.revista_que_mais_vender_por_titulo.titulo
p estoque.ebook_que_mais_vender_por_titulo.titulo
#p estoque.livro_que_mais_vender_por_titulo.titulo