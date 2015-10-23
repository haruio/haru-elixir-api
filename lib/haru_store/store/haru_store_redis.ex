defmodule HaruStore.Store.Redis do
  use GenServer

  ## Public API
  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def ping(server) do
    GenServer.call(server, :ping)
  end

  ## Callback API
  def init(:ok) do
    {:ok, Exredis.start}
  end

  def handle_call(:ping, _form, conn) do
    pong = conn |> Exredis.query ["PING"]

    {:reply, pong, conn}
  end
end
