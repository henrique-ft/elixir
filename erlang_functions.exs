defmodule ErlangFunctions do

    def save(list, filename) do
        
        # O :erlang serve para chamar funções nativas do erlang no elixir, no caso as que estão fora de um módulo.  
        # A função term_to_binary transforma algum valor, ou tipo, em binário
        # Podemos chamar qualquer módulo nativo do erlang através de :nome_do_modulo.funcao
        binary = :erlang.term_to_binary(list)
        
        # Aqui escrevemos um arquivo com o Elixir, passando um nome para ele e o binário
        File.write(filename, binary)
        
    end
    
end