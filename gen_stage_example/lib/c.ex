defmodule C do
  use GenStage

  def init(state_c) do
    {:consumer, state_c}
  end

  # Receive events, from PID, and the state that was initialized
  def handle_events(_events, _from, state_c) do
    IO.inspect(state_c)
    IO.inspect("passando pelo C")

    #Process.sleep(state_c)

    # action / list of values (events) / state_c
    # the state_c never is send to producer_consumer or producet, it is ever transformed and sent back to A
    {:noreply, [], state_c}
  end
end
