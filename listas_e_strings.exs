defmodule ListasEStrings do

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
end