# Protocolos são uma forma de termos "Polimorfismo" no elixir
# É uma forma de definir um grupo funções que se comportam de maneira diferente dentro de um contexto de acordo com o tipo que é recebido
defprotocol Show do
    
    # O protocolo Show espera uma função nomeada de show que recebe um argumento
    @doc """ 
        Mostra algo na tela
    """
    def show(data)

    # O protocolo Show espera uma função nomeada de show_with_parents que recebe um argumento
    @doc """
        Mostra um valor entre parenteses
    """
    def show_with_parents(data)
end

# Dizemos que estamos implementando o protocolo Show para os tipo inteiro
defimpl Show, for: Integer  do
    
    def show(integer), do: IO.puts("showing a integer: #{integer}")
    def show_with_parents(integer), do: IO.puts("(#{integer})")
end

# Dizemos que estamos implementando o protocolo Show para os tipo tupla
defimpl Show, for: Tuple  do
    
    # Utilizamos o inspect para podermos exibir uma tupla na tela, basicamente transformar a tupla em string
    def show(tuple), do: IO.puts("showing a tuple: #{inspect tuple}")
    def show_with_parents(tuple), do: IO.puts("(#{inspect tuple})")
end

# Você pode definir protocolos para todos os tipos do Elixir:

# Atom
# BitString
# Float
# Function
# Integer
# List
# Map
# PID
# Port
# Reference
# Tuple

# Além disso, podemos definir protocolos para os seus Structs também

# Criamos um struct pessoa com campos nome e idade
defmodule Pessoa, do: defstruct [:nome,:idade] 

# Implementamos o protocolo Show para o struct Pessoa
defimpl Show, for: Pessoa do
    def show(pessoa), do: IO.puts("Nome: #{pessoa.nome}, Idade: #{pessoa.idade}")
    def show_with_parents(pessoa), do: IO.puts("(Nome: #{pessoa.nome}, Idade: #{pessoa.idade})")
end

# Dessa forma, se recebermos um struct Pessoa na função Show.show/1 teremos o resultado "Nome: #{pessoa.nome}, Idade: #{pessoa.idade}"


# Se definirmos um defimpl com o for: Any será basicamente uma implementação genérica do protocolo
defimpl Show, for: Any do
    # Dessa forma ignoramos os parâmetros
    def show(_), do: ""
end

# Caso quisermos usar a implementação genérica do protocolo em um struct utilizamos o atributo 'mágico' @derive
# Dentro do struct em questão
defmodule OutraPessoa do
    @derive [Show]
    defstruct [:nome, :idade]
end