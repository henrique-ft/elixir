# Para rodar testes em um projeto elixir use o comando mix test
# No elixir temos dois tipos de documentação
# 1. A tradicional onde escrevemos aqui os testes com as asserções
# 2. Os doctests, Sempre que você escreve uma documentação para o seu projeto Elixir
# se você adicionar exemplos de código rodando, como os abaixo:
#
# iex> MeuModulo.funcao
# "teste"
#
# O doctest vai RODAR o exemplo e verificar se o último resultado bate
# Ou seja, até os exemplos da nossa documentação SÃO TESTADOS
# São executados nos testes com mix test
defmodule CardsTest do
  use ExUnit.Case # São os testcases
  doctest Cards # Faz um parse no módulo Cards e testa os exemplos de código também
  
  test "Create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20 # Podemos passar qualquer valor booleano para o assert e ele nos dirá se está certo ou não
  end
  
  test "Shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck) # O refute é como se fosse o contrário do assert
  end
end
