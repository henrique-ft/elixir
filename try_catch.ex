defmodule TryCatch do
  # Se um erro ocorrer durante a execução, automaticamente cai no rescue (raise, rescue)
  def hello(x) do
    "221"
  rescue
    _ -> "Hey ho Let's go"
  end
end