defmodule Cards do

    def create_deck do
        
        # Podemos definir uma lista de elementos usando [].
        # Para definir strings é recomendado o uso de "" aspas duplas, porém também pode-se utilizar aspas simples.
        
        values = ["Ace","Two","Three","Four","Five"]
        suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
        
        # List comprehension, é como se fosse um loop for no elixir
        # Ele recebe cada elemento em suits como suit executando a função do bloco 'do' para cada um.
        # Após feito isso é retornado o resultado em um novo array
        # Apesar de ser bem parecido com o for das linguagens tradicionais, o List comprehension tem algumas diferenças
        # O list comprehension, assim como tudo no elixir, retorna uma valor.
        # Todo list comprehension retorna uma lista, isso significa que podemos, inclusive, atribuir um list comprehension a uma variável
        
        # cards = for value <- values do
            
        #     for suit <- suits do
                
        #         "#{value} of #{suit}"
        #     end
        # end
        
        # List.flatten(cards)
        
        # A solução acima funcionaria para retornar uma lista de cartas com os seus tipos
        # Porém podemos fazer de uma maneira melhor
        # Podemos ter uma mesma list comprehension com mais de uma lista
        # Se a list comprehension tiver mais de uma lista, ela irá realizar todas as combinações possíveis com essas listas executando o bloco 'do' para cada combinação
        
        for value <- values, suit <- suits do
            "#{value} of #{suit}"
        end
    end
    
    # Podemos passar argumentos para uma função através dos ().
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
