@doc """
    
    99% do código que você escreve em elixir estará organizado em módulos
    Um módulo é uma coleção de diferentes funções
    Toda declaração de um módulo é feita com o defmodule
    Todo nome de módulo deve ter a primeira letra maiúscula
    Toda função em Elixir deve estar dentro de um módulo
    
"""

defmodule ModulosEFuncoes do
    
    # Não precisamos de parênteses para chamar funções no Elixir, parênteses não são obrigatórios
    # Também não precisamos declarar retorno nas funções, temos o retorno implícido, sendo o último valor passado
    
    def hello do
    
        "hello"
    end
    
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

end