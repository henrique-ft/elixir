defmodule KeywordLists do
    
    # Listas são como arrays podemos ter o tamanho que quisermos de dados e etc..
    # Tuplas são como arrays porém os index tem um significado especial para a gente e o tamanho sempre será o mesmo
    # Keyword lists misturam essas duas estruturas em uma só
    # São como listas e tuplas juntas ex:
    #
    # [{:primary, "red"},{:secondary, "green"}]
    #
    # Se digitarmos isso no terminal, obteremos:
    #
    # [primary: "red", secondary: "green"]
    #
    # Isso é um sintax sugar para os keywod lists
    #
    # A diferença de Keyword lists para maps é que:
    #
    # Um keyword list pode ter uma mesma key mais de uma vez ex:
    #
    # [primary: "green", primary: "red"]
    #
    # Ja em um map, isso não é permitido
    
    def example do
        
        # Apesar de abaixo parecer apenas um par de chave e valor 
        # O Elixir ainda considera como sendo uma tupla
        #
        # [{:primary, "red"},{:secondary, "green"}]
        colors = [primary: "red", secondary: "green"]
        
        # Aqui temos outro sintax sugar da linguagem para obter valores dos keyword lists    
        colors[:primary] # "red"
    end
    
    def example_two do
        
        # Caso quisermos passar um keyword list como argumento em uma função no Elixir
        # E esse keyword list é o último argumento da função
        # Podemos omitir os [] como sintax sugar, logo:
        
        KeywordLists.receive_keyword_list "primeiro argumento", primary: "red", secondary: "green" # lembrando que parênteses não são obrigatórios no elixir
        
        # = KeywordLists.receive_keyword_list("primeiro argumento", primary: "red", secondary: "green")
        #
        # = KeywordLists.receive_keyword_list([primary: "red", secondary: "green"])
        #
        # = KeywordLists.receive_keyword_list([{:primary, "red"},{:secondary, "green"}])
        #
        # Os 3 exemplos acima representam a mesma coisa
    end
    
    def receive_keyword_list(outro, kl) do
        kl
    end
end