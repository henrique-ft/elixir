defmodule A do
  use GenStage

  def init(state_a) do
    {:producer, state_a}
  end

  # Receive a integer value(also called demand) and the state that was initialized
  def handle_demand(demand, state_a) when demand != 1000 do
    IO.inspect(demand)
    IO.inspect(state_a)
    IO.inspect("passando pelo A")

    # Receive a demand, and return events
    # action / list of values (events) / state_a
    # the state_a never is send to producer_consumer or consumer, it is ever transformed and sent back to A
    {:noreply, [1, 2, 3], state_a}
  end
end
