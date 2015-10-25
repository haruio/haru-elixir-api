defmodule HaruStore.Group do
  use GenServer
  alias HaruStore.Store.Mongo
  alias HaruStore.Store.Redis
  alias HaruStore.Store.MySql

  ## Public API
  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, [], opts)
  end

  def get(server, store_type) do
    GenServer.call(server, {:get, store_type})
  end

  ## Callback API
  def init(args) do
    stores = HashDict.new
    |> HashDict.put(:mongo, "mongo")
    |> HashDict.put(:redis, Redis.start_link |> get_connetion)
    |> HashDict.put(:mysql, "mysql")
    {:ok, stores}
  end

  def get_connetion({:ok, conn}), do: conn

  def handle_call({:get, store_type}, _from,  stores) do
    {:reply, HashDict.fetch(stores, store_type), stores}
  end

end
