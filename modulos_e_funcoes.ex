@doc """
    
    99% do código que você escreve em elixir estará organizado em módulos
    Um módulo é uma coleção de diferentes funções
    Toda declaração de um módulo é feita com o defmodule
    Todo nome de módulo deve ter a primeira letra maiúscula
    Toda função em Elixir deve estar dentro de um módulo
    
"""

defmodule ModulosEFuncoes do
    
    # Podemos definir atributos em módulos através do @
    # Atributos em módulos funcionam como constantes, não podem ser mudados
    @attribute :valor
    @attribute_int 3
    @attribute_map %{one: "two"}
    @database_connection "5712h51r021dnjdklq" 

    # Não precisamos de parênteses para chamar funções no Elixir, parênteses não são obrigatórios
    # Também não precisamos declarar retorno nas funções, temos o retorno implícido, sendo o último valor passado
    
    def hello do
    
        "hello"
    end
    
    # Podemos chamar atributos da maneira a seguir
    def return_attribute do

        @attribute
    end

    # Podemos definir funções com parâmetros pré-definidos através da sintaxe nome_parametro \\ "valor padrão"
    def default_params(nome \\ "") do
        
        nome
    end

    def funcoes_anonimas do

        # Podemos chamar funções da forma anônima com a sintaxe fn x -> x + 1 end
        Enum.map([1,2,3,4], fn x -> 
            x + 1 
        end) 

        # Podemos também, simplificar mais ainda utilizando a sintaxe &(&1 + &2)
        # Onde podemos receber os parâmetros com um sintax sugar
        # &1 significa o primeiro parâmetro, &2 significa o segundo parâmetro  
        Enum.map([1,2,3,4], &(&1 + &2))
    end

    # Referenciando funções pela ariedade
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

    # Podemos também defnir funções de uma forma simplificada, em apenas uma linha
    def simplificada(x), do: x + @attribute_int

    # Podemos definir passar argumentos para uma função através dos ().
    # No elixir podemos ter diversos métodos dentro de um módulo, estes que podem conter diferentes nomes ou não.
    # Caso os métodos tenham nomes iguais, eles serão separados pelo número de argumentos.
    # O nome de um método em elixir é sempre definido como 'nome/0' sendo o nome / a quantidade de parâmetros.
    # O método abaixo no caso, é reconhecido como shuffle/1.
    # o /1 também é conhecido como ariedade da função.
    
    def shuffle(deck) do
      
        # Enum é um módulo padrão do elixir que disponibiliza uma série de funções para trabalhar com coleções e listas de dados.
        # Utilizamos a função shuffle que embaralha uma lista de dados ou coleções
        # No elixir NADA é modificado, tudo é transformado. 
        # Ou seja, ao atribuirmos deck = [1,2,3] e passarmos como argumento do método shuffle, deck continuará valendo [1,2,3]
        # Shuffle criará uma cópia da lista, modificar a cópia e retorna-la, nunca alterando o valor original.
        
        Enum.shuffle(deck)
    end

    # Um método no elixir pode ter ? na sua declaração, geralmente métodos que tem ? na declaração retornam true ou false

    def contains?(deck, card) do
        
        # O método member? recebe uma lista e um elemento, verificando se o elemento se encontra na lista
        
        Enum.member?(deck, card)
    end

    # Podemos declarar um módulo dentro de outro
    # Dessa forma podemos chama-lo como ModulosEFuncoes.Interno.main
    defmodule Interno do

        def main do
            "Im a internal module"
        end
    end

end