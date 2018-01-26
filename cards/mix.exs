# O arquivo mix.exs tem um monte de informações sobre o nosso projeto
# Aqui é onde você pode definir as dependências do seu projeto
# Para adicionar um novo package ao nosso projeto adicione uma tupla na função deps
# o primeiro argumento da tupla é o nome do package, o segundo é a versão ex:
#  defp deps do
#    [
#        {:ex_doc, "0.12"}
#    ]
#  end
#
# Para instalar os packages, entre na pasta do projeto e rode mix deps.get

defmodule Cards.Mixfile do
  use Mix.Project

  def project do
    [app: :cards,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, "~> 0.16", only: :dev, runtime: false}]
  end
end
