defmodule A do
  use GenStage

  # The initial state of the producer (things to do)
  def init(initial_state) do
    {:producer, initial_state}
  end

  # Receive a integer value(also called demand, that is a number of things a consumer is asking for) and the state of the producer at the time the consumer asked for them
  def handle_demand(demand, state) when demand > 0 do
    IO.inspect(state)
    IO.inspect("passando pelo A")
    IO.inspect(demand)

    {to_do, remaining} = Enum.split(state, demand)

    # action / list of values (things) / state_a
    # the remaining never is send to producer_consumer or consumer, it is ever and sent back to A
    {:noreply, to_do, remaining}
  end
end
