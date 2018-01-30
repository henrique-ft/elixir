defmodule Identicon do
  
  def main(input) do
    input
    |> hash_input
    |> pick_color
  end
  
  def pick_color do
    %Identicon.Image{hex: hex_list} = image
    # Poderíamos fazer  %Identicon.Image{hex: [r,g,b | _tail]} = image
    
    # Nesse caso fazemos pattern matching com listas
    # o _tail diz que sabemos que há mais valores nessa lista, mas não ligamos.
    # fazemos isso para pegarmos os três primeiro valores de uma lista, utilizando pattern matching.
    [r,g,b | _tail] = hex_list
    
    [r,g,b]
  end
  
  def hash_input(input) do
    # Chama a biblioteca de criptografia md5 do erlang, chamada crypto
    hex = :crypto.hash(:md5, input) # Recebe uma string e retorna o seu valor criptografado, em binário 
    |> :binary.bin_to_list # Transforma um binário em uma lista do Elixir ex: <<114,179>> para [114,179]
    
    # Retornamos um Identicon.Image (struct)
    %Identicon.Image{hex: hexs}
  end
  
  def list_of_numbers(string) do
    
  end
  
end
