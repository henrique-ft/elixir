defmodule Documentation do
    @moduledoc """
        Aqui podemos escrever uma documentação para o nosso módulo
        Se extivermos usando o package exdoc, podemos transformar toda essa documentação
        Em html de maneira super fácil
        Apenas entrando na raiz do projeto e digitar o comando mix docs
        Todas a documentação do Elixir é feita com o exdocs
        É muito da hora
    """
    
    @doc """
        Para documentar uma função específica podemos usar @doc
        No caso, quando gerarmos o html, teremos essa descrição para a função create_deck
        Podemos inclusive adicionar exemplos de código no nosso html gerado
        
        ## Examples
        
          iex>Documentation.mostrar
          "exemplo"
    """
    def mostrar do
        "exemplo"
    end
        
end