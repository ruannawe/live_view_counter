#TESTE
defmodule CounterWeb.CounterLive do
    use Phoenix.LiveView

    @impl true
    def render(assigns) do
        ~L"""
        <h1>Count: <%= @count %></h1>
        <button>+</button>
        <button>-</button>
        """
    end

    @impl true
    def mount(_params, _session, socket) do
        socket = assign(socket, :count, 0)
        {:ok, socket}
    end
end
