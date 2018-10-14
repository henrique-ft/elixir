defmodule TryCatch do
  # Se um erro ocorrer durante a execução, automaticamente cai no rescue (raise, rescue)
  # No exemplo abaixo, se você passar um integer parao x irá imprimir "Hey ho Let' go"
  # Se você passar uma string para o x,"a" por exemplo, irá imprimir 221a
  def hello(x) do
    "221" <> x
  rescue
    _ -> "Hey ho Let's go"
  end

  # É utilizado quando você espera um erro específico, o catch apenas pega throws
  def hello_catch() do
    throw("error")
  catch
    :exit, _ -> IO.puts "there was an error"
  end

  # Também é aceitável a sintaxe
  #
  # try do
  # ...
  # catch
  # ...
  # end
end
