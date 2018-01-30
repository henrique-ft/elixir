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