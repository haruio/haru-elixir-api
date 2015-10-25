defmodule HaruStore do
  use Application
  
  # TODO divide config
  def pool_name, do: :store_pool
  defp poolboy_config do
    [
      {:name, {:local, pool_name}},
      {:worker_module, HaruStore.Proxy},
      {:size, 5},
      {:max_overflow, 10}
    ]
  end


  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      :poolboy.child_spec(pool_name(), poolboy_config(), [])
    ]

    opts = [strategy: :one_for_one, name: HaruStore.Proxy]

    Supervisor.start_link(children, opts)
  end

end
