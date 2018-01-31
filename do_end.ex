defmodule DoEnd do

    # Tudo no Elixir é função, ou seja, def, if, e qualquer outra coisa.
    # O 'do' é como se fosse um argumento dessas funções e um sintax sugar
    # Para escrevermos de uma forma que pareça mais imperativa e familiar
    def teste do

        # Exemplo de uma função if, que recebe um argumento booleano e um bloco do, executa o bloco do se o argumento for true
        if true do
            a = 1+2
            a + 10
        end

        # Por de baixo dos panos é isso que acontece, poderíamos trocar qualquer 'do end' por essa sintaxe
        # O 'do end' na verdade é um sintax sugar
        # Toda função do elixir recebe um primeiro parâmetro e um segundo, sendo o segundo um keyword list
        if true, do: (

            a = 1+2
            a + 10
        )

        # Como tudo é uma função, podemos passar inclusive qualquer 'construtor' da linguagem também como argumentos de outras funções
        # Pois TUDO no Elixir retorna algo, tudo é função 
        is_number(if true do 
        
            1 + 2
        end) # true

        # O que não nos bloquearia de fazer isso
        if true do
            1+2
        end 
        |> is_number
    end    
end

# Poderíamos inclusive definir um modulo INTEIRO em uma linha, por exemplo
defmodule ComDo, do: (def teste, do: "teste"; def x, do: 4)