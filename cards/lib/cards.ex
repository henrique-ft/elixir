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
    
    # Este método retorna uma tupla
    # Uma tupla é igual a um array, porém cada index tem um significado especial para nós que estamos desenvolvedores
    # Você não pode acrescentar ou retirar elementos de uma tupla
    def deal(deck, hand_size) do
        
        Enum.split(deck, hand_size)
    end
    
    # No iex podemos fazer: Cards.create_deck |> Cards.save("teste") para criar um card e salva-lo no arquivo 'teste'
    def save(deck, filename) do
        
        # O Atom erlang serve para chamar funções do erlang no elixir,  
        binary = :erlang.term_to_binary(deck)
        
        # Escrevendo um arquivo com Elixir
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
    
    # O Pipe operator pega o resultado de uma função (ou um valor) e atribui ao primeiro argumento da próxima função
    # Podemos encadear várias funções resultando em um código muito mais limpo e agradável
    def create_hand(hand_size) do
        
        Cards.create_deck 
        |> Cards.shuffle
        |> Cards.deal(hand_size)
    end
end
