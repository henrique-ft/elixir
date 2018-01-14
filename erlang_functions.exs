defmodule ErlangFunctions do

    def save(list, filename) do
        
        # O :erlang serve para chamar funções nativas do erlang no elixir.  
        # A função term_to_binary transforma algum valor, ou tipo, em binário
        binary = :erlang.term_to_binary(list)
        
        # Aqui escrevemos um arquivo com o Elixir, passando um nome para ele e o binário
        File.write(filename, binary)
        
    end
    
end