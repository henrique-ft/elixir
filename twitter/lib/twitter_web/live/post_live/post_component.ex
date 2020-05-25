defmodule TwitterWeb.PostLive.PostComponent do
  use TwitterWeb, :live_component

  def render(assigns) do
    ~L"""
      <%= @post.body %>
      <br>
    """
  end
end
