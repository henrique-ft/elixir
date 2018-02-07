defmodule Pipe do

    # O Pipe operator pega o resultado de uma função (ou um valor) e atribui ao primeiro argumento da próxima função
    # Podemos encadear várias funções resultando em um código muito mais limpo e agradável
    def pipe_strings do 
        
        "Elixir rocks" 
        |> String.upcase() 
        |> String.split()
    end

    def reference_function_by_arity() do
        
        [1,2,3,4]
        |> Enum.map(&more_than_one/1) # Como temos duas funções com o mesmo nome mais ariedade diferentes, temos que especificar qual é o more_than_one que queremos referenciar
    end

    def more_than_one(x) do
        x + 1
    end

    def more_than_one(x, y) do
        x + y
    end
end