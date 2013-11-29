require_relative 'livro'
require_relative 'estoque'



a = Livro.new('aa', 90, 2006, true)
b =	Livro.new('BB', 20, 2006, true)

estoque = Estoque.new
estoque << a << b
estoque.maximo_nessesario
estoque.remove a
p estoque.maximo_nessesario