# Structs são um tipo de map usado para guardar dados em uma aplicação Elixir
# Eles são como Maps, mas têm duas vantagens em relação a ele:
#
# 1. Você pode definir valores padrões para um struct
#
# 2. Um Struct tem checagem de propriedades em tempo de compilação
#
# Você pode "instanciar" um struct com a sintaxe var = %Struct{}
#
# dessa forma teremos um struct %Struct{hex:nil}
#
# Podemos mudar o valor inicial de um hex, ex: var = %Struct{hex: []}
#
# Você só pode usar "chaves" previamente definidas em um struct, por exemplo hex: no caso.
# Diferente do map, que você pode adicionar qual chave você quiser
#
defmodule Struct do

    # Definimos uma estrutura, e a estrutura tem uma única propriedade chamada hex
    # E com um valor padrão nil
    defstruct hex: nil  

end

# Podemos definir propriedades padrão de um struct, sem definirmos nenhum valor padrão com a sintaze [:atom]
defmodule Pessoa do
    
    # Também podemos definir como obrigatória a definição de certa chave na criação do struct com o @enforce_keys
    # Com o enforce_keys se não criarmos o struct com a propriedade :nome teremos um erro de compilação
    @enforce_keys [:nome]

    defstruct [:nome,:idade]
end

defmodule Teste do
    
    def update_struct(pessoa) do

        # No elixir, nada muda, tudo se transforma
        # Para dar update em um struct podemos fazer dessa maneira, temos um sintax sugar
        # Passamos o struct antigo e um |, após o pipe colocamos os atributos que queremos alterar
        # Aqui transformamos qualquer pessoa em um josé
        %Pessoa{pessoa | nome: "josé"}
    end

    def update_struct_two(pessoa) do

        # Aqui transformamos qualquer pessoa em um josé com 30 anos
        %Pessoa{pessoa | nome: "josé", idade: 30}
    end

    def chaves_do_struct(pessoa) do

        # Structs também são Maps, portanto podemos utilizar as funções do módulo Map com Structs
        # No caso abaixo, retornaremos todas as chaves do determinado struct
        Map.keys(pessoa)
    end

    def qual_struct(struct) do

        # Podemos descobrir com qual struct estamos trabalhando utilizando o método especial __struct__
        struct.__struct__
    end
end