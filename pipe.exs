defmodule Pipe do

    # O Pipe operator pega o resultado de uma função (ou um valor) e atribui ao primeiro argumento da próxima função
    # Podemos encadear várias funções resultando em um código muito mais limpo e agradável
    def pipe_strings do 
        
        "Elixir rocks" 
        |> String.upcase() 
        |> String.split()
    end

end