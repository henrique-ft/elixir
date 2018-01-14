@doc """

  Mix é programa de linha de comando imbutido no Elixir.
  Mix é usado para criar projetos, compilar projetos, rodar 'Tasks' e fazer o controle de dependências.
  Para criar um novo projeto com o Mix execute:
  mix new projectname

  Rodando o comando, o mix criará um projeto com a seguinte estrutura de pastas e arquivos:
  
  projectname/
    config/
      config.exs
    lib/
      projext.exs
    test/
      project_test.exs
      test_helper.exs
  .gitignore
  mix.exs
  README.md

  Ao digitar iex na linha de comando, teremos a linha de comando interativa do Elixir.
  Para compilar um arquivo e usar suas funções, use o comando iex nomedoarquivo.exs .
  Toda função em Elixir deve estar dentro de um módulo.
  
  Podemos executar um projeto do Elixir utilizando iex -S mix dentro da pasta do projeto
  O -S procura um executável dentro do arquivo, no caso de um projeto elixir, o arquivo mix.exs
  O iex não recompila os arquivos automaticamente, para recompilar um projeto Elixir, use o comando: recompile
  
  Apertando ctrl C duas vezes, podemos sair do modo interativo
    
"""