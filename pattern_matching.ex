# Pattern Matching se assemelha a "atribuição de variável" do elixir, porém mais avançada
# O sinal = é o operador de pattern matching
# O Pattern Matching compara padrões entre o sinal =
defmodule PatternMatching do

    def matching_em_listas do
        
      # Nesse caso fazemos pattern matching com listas
      # o _tail diz que sabemos que há mais valores nessa lista, mas não ligamos.
      # fazemos isso para pegarmos os três primeiro valores de uma lista, utilizando pattern matching.
      [r,g,b | _tail] = [1,2,3,4,5,6,7,8,9]
        
      [r,g,b] # [1,2,3]
    end
    
    # Utilizando pattern matching também podemos retornar o valor de uma tupla, inserindo em "variáveis"
    # por exemplo, abaixo, se o valor da tupla for {"teste", 5} a função vai dar match atribuindo
    # "teste" a valor1 e 5 a valor2
    # O pattern matching faz match com qualquer padrão, com qualquer tipo
    def retorna_segundo_valor_tupla(tupla) do
    
        {valor1, valor2} = tupla
        valor2
    end
    
    # Podemos realizar operações de pattern matching com o operador case
    def match_ok_ou_erro(tupla) do
        
        # O operador case recebe um valor e faz pattern matching para verificar as condições
        case tupla do
            {:ok, _} -> "Deu certo"
            {:error, _} -> "Deu errado"
        end
    end

    # Podemos realizar operações de pattern matching com valores dentro de variáveis em um case
    def match_case_com_variavel(tupla) do
        
        seu_nome = "José"
        nome1 = "arnaldo"
        nome2 = "José"
        
        # O sinal ^ diz para receber o último valor atribuido a variável e utiliza-lo como cláusula do match
        case seu_nome do
            ^nome1 -> "Errou"
            ^nome2 -> "Acertou" # Nesse caso, irá cair aqui
        end
    end

    # No elixir podemos também utilizar o pattern matching em parâmetros de função
    # No exemplo abaixo, recebemos o parâmetro lista, e ja fazemos o pattern matching direto no parâmetro
    # Ou seja, teremos disponível na função a 'variável' lista e as variáveis 'a' e 'b'
    def match_parameter([a,b | _tail] = lista) do
        
        "recebemos os valores #{inspect a} #{inspect b} e a lista #{inspect lista}"
    end

    # No caso abaixo receberemos um parâmetro que de match na estrutura abaixo
    # Mas teremos disponível apenas a e b
    def other_match_parameter([a ,b | _tail]) do
        
        "recebemos apenas os valores #{inspect a} e #{inspect b}"
    end

end 