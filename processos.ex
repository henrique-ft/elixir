# Um processo no elixir é diferente de um processo no sistema operacional
# É como se fosse um micro processo (bem leve) dentro do processo
defmodule Processo do
    
    def start() do
        Processo.loop()
    end

    def loop() do

        # Todo processo Elixir tem que ter a função/macro receive para receber mensagens,
        # caso contrário ele não será capaz de responder mensagens.
        # O receibe faz pattern matching dando match nos tipos de mensagens que o proceso pode receber e seus devidos retornos.
        receive do
            {:ok, mensagem} -> IO.puts "Recebi a mensagem #{mensagem}"
            {:error} -> IO.puts "erro"
        end

        # O bloco receive só executa uma vez, quando recebida uma mensagem.
        # O bloco receive, na verdade, pausa a execução da função do processo esperando uma mensagem que case com o pattern matching.
        # Se casar, o processo/função não pode receber mais nenhuma mensagem.
        # Se quisermos que o processo sempre atenda a mensagens usamos um loop recursivo.
        Processo.loop() 

        # Um processo sempre morre após o bloco receive, a única maneira de deixa-lo vivo é através de loops e recursão
    end
end

defmodule Teste do
    
    def start() do
        
        # Para criar um processo podemos usar as funções spawn/1 e spawn/2, que criam um processo e retornam o seu PID.
        # A função spawn/1 recebe uma função anônima, que será executada no processo.
        # Já a spawn/3 recebe um módulo, um :atom com o nome de uma função e argumentos que podem ser passados para a função.
        spawn(Processo, :start, [])
    end

    def enviar_mensagem(pid, mensagem) do
        
        # Para enviar mensagens para um processo podemos usar a função send/2
        # que recebe o PID do processo e a mensagem.
        send pid, mensagem
    end
end