defmodule GenStageExample do
  @moduledoc """
  Documentation for GenStageExample.
  """

  @doc """
  Hello world.

  ## Examples

      iex> GenStageExample.hello()
      :world

  """
  def hello do
    {:ok, a} = GenStage.start_link(A, Enum.to_list(0..10000))
    {:ok, b} = GenStage.start_link(B, "estado do B")
    {:ok, c} = GenStage.start_link(C, "estado do C")

    GenStage.sync_subscribe(c, to: b)
    GenStage.sync_subscribe(b, to: a)
  end
end
