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