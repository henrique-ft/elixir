defmodule ErlangFunctions do

    def save(list, filename) do
        
        # O :erlang serve para chamar funções nativas do erlang no elixir, no caso as que estão fora de um módulo.  
        # A função term_to_binary transforma algum valor, ou tipo, em binário
        # Podemos chamar qualquer módulo nativo do erlang através de :nome_do_modulo.funcao
        binary = :erlang.term_to_binary(list)
        
        # Aqui escrevemos um arquivo com o Elixir, passando um nome para ele e o binário
        File.write(filename, binary)
        
    end

    # Carrega um arquivo
    def load(filename) do
        
        # A função File.read lê um arquivo e retorna uma tupla com um status e o valor dentro do arquivo
        # No caso da função save, salvamos o deck(lista) em binário em um arquivo, no caso aqui podemos ler
        # Usamos o pattern matching para verificar e tratar caso o arquivo exista ou não
        # Quando lemos o arquivo escrito em binário, temos retornado um tipo lista, exatamente como salvamos antes.
        # Pois foi salvo como binário
        case File.read(filename) do
        
            {:ok, binary} -> :erlang.binary_to_term(binary)
            {:error, _} -> "O arquivo não existe"
        end
    end
end