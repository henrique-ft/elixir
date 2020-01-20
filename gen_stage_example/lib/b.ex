defmodule B do
  use GenStage

  # The producer consumer is a kind of middleware of the GenStage
  # It is not necessary, we can use only the consumer and producer
  def init(state_b) do
    {:producer_consumer, state_b}
  end

  # Receive events, from PID, and the state that was initialized
  def handle_events(to_do, _from, state_b) do
    IO.inspect(state_b)
    IO.inspect("passando pelo B")
    IO.inspect(things)

    # receive events from producer and send to consumer
    # action / list of values (events) / state_b
    # the state_b never is send to consumer or producer, it is ever transformed and sent back to B
    {:noreply, to_do, state_b}
  end
end
