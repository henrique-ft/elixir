defmodule B do
  use GenStage

  def init(state_b) do
    {:producer_consumer, state_b}
  end

  # Receive events, from PID, and the state that was initialized
  def handle_events(_events, _from, state_b) do
    IO.inspect(state_b)
    IO.inspect("passando pelo B")

    # receive events from producer and send to consumer
    # action / list of values (events) / state_b
    # the state_b never is send to consumer or producer, it is ever transformed and sent back to B
    {:noreply, [1,2,3], state_b}
  end
end
