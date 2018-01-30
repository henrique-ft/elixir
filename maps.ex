defmodule Maps do
    
    # Maps no elixis são coleções de chave e valor
    # Maps são comos os hash do Ruby
    # Ou como os objetos do javascript
    def example do
    
        # Temos abaixo um map com 
        um_map = %{primary: "red", secondary: "blue"}
        colors.primary # red
    end
    
    # Podemos acessar propriedades de um map usando pattern matching
    def map_with_pattern_matching do
    
        colors = %{primary: "red", secondary: "blue"}
        %{secondary: secondary_color} = colors
        
        secondary_color # blue
    end
    
    def update_value_inside_a_map do
    
        colors = %{primary: "red", secondary: "blue"}
        
        # Não podemos fazer isso:
        #
        # colos.primary = "blue"
        #
        # Isso geraria um erro: cannot invoke remote funcion colors. primaryq0 inside match
        # Toda estrutura de dados que nós criamos, nós não manipulamos e não mudamos
        # Nós criamos uma nova
        #
        # "Nada muda, tudo se transforma"
        #
        # Para realizarmos operações imutáveis com os maps em elixir, temos o módulo nativo Map
        
        Map.put(colors, :primary, "blue")
        
        # Também podemos utilizar um sintax sugar para criar novos maps a partir de um existente (realizar updates)
        
        %{ colors | primary: "black"}
    end
end