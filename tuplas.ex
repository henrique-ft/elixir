defmodule Tuplas do

    # Uma tupla é igual a um array, porém cada index tem um significado especial para nós que estamos desenvolvedores
    # Você não pode acrescentar ou retirar elementos de uma tupla
    def return_tupla do
        {"valor1","valor2"}
    end
    
    # Podemos retornar o valor de uma tupla através da função elem e também através de pattern matching
    # a função elem recebe uma tupla e um índice e irá buscar o valor de acordo com o índice
    def get_valor_de_uma_tupla(tupla, index) do
        
        elem(tupla, index)
    end
    
end