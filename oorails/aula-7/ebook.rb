require_relative 'produto'
class Ebook < Produto
    include Impresso
    def to_csv
        "#{@titulo}, #{@ano_lancamento}"
    end


    def matches?(query)
      ["ebook","digital"].include?(query)
    end
end