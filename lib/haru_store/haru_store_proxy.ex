defmodule HaruStore.Proxy do
  use GenServer
  alias HaruStore.Store.Mongo
  alias HaruStore.Store.Redis
  alias HaruStore.Store.MySql

  ## Public API
  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, [], opts)
  end

  def insert(server, store_name, data) do
    GenServer.cast(server, {:insert, store_name, data})
  end

  ## Callback API
  def init(args) do
    stores = HashDict.new
    |> HashDict.put(:mongo, "mongo")
    |> HashDict.put(:redis, "redis")
    |> HashDict.put(:mysql, "mysql")
    {:ok, stores}
  end

  def handle_cast({:insert, store_name, data}, stores) do
    {:noreply, stores}
  end

end
