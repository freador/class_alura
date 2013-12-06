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