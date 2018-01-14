# Pattern Matching se assemelha a "atribuição de variável" do elixir, porém mais avançada
# O sinal = é o operador de pattern matching
# O Pattern Matching compara padrões entre o sinal =
defmodule PatternMatching do

    # Uma tupla é igual a um array, porém cada index tem um significado especial para nós que estamos desenvolvedores
    # Você não pode acrescentar ou retirar elementos de uma tupla
    def return_tupla do
        {"valor1","valor2"}
    end
    
    # Podemos retornar o valor de uma tupla através da função elem
    # a função elem recebe uma tupla e um índice e irá buscar o valor de acordo com o índice
    def get_valor_de_uma_tupla(tupla, index) do
        
        elem(tupla, index)
    end
    
    # Também podemos retornar o valor inserindo em "variáveis" a partir do Pattern Matching
    # por exemplo, abaixo, se o valor da tupla for {"teste", 5} a função vai dar match atribuindo
    # "teste" a valor1 e 5 a valor2
    # O pattern matching faz match com qualquer padrão, com qualquer tipo
    def retorna_segundo_valor_tupla(tupla) do
    
        {valor1, valor2} = tupla
        valor2
    end
end 