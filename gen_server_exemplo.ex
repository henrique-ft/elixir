defmodule GenServerExemplo do
  # GenServer são como "Servidores genéricos" dentro do elixir. É um processo que recebe mensagens síncronas, assíncronas e informações, compartilhando um estado em comum entre elas e podendo retornar respostas para o processo que o acionou.
  # Podemos chamar self() dentro do genserver para receber o seu próprio pid
  use GenServer

  # Inicia o estado do genserver
  # {:ok, pid} = GenServer.start_link(GenServerExemplo, "oi")
  @impl true
  def init(state) do
    {:ok, state}
  end

  # gen_server is an abstraction over a typical process message loop. It provides you with API like call and cast to send messages to the process BUT as you also have the PID of the process, any code can send message to the process without going through the call or cast APIs and in those cases the handle_info callback is called. If you want to send messages to your process using the ! operator then you probably don't need gen_server OR if you want to use gen_server then it is advised to use call and cast APIs for your server functionality and handle_info for other kind of messages.'
  # send(pid, :message)
  @impl true
  def handle_info(:message, state) do
    IO.puts("I receive a message")

    {:noreply, state}
  end

  # Faz uma chamada síncrona
  # GenServer.call(pid, :say_hello)
  @impl true
  def handle_call(:say_hello, _from, state) do
    # 1 - tipo de resposta  2 - o que vai retornar 3 - estado
    {:reply, "sou o retorno do genserver", state}
  end

  # Faz uma chamada assíncrona para o genserver
  # GenServer.cast(pid, :say_hello)
  @impl true
  def handle_cast(:say_hello, state) do
    # 1 - tipo de resposta  2 - estado
    {:noreply, state}
  end
end
