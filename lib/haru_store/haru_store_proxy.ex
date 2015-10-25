defmodule HaruStore.Proxy do
  alias HaruStore.Group

  def cmd(store_type, opts, cmd, data \\ []) do
    opts[:via]
    |> get_store(store_type)
    |> call_cmd(cmd, data)
  end

  defp get_store(pool_name, store_type) do
    pool_name
    |> :poolboy.checkout
    |> Group.get(store_type)
  end

  defp call_cmd({:ok, conn}, "ping", []), do: HaruStore.Store.Redis.ping(conn) 
end
