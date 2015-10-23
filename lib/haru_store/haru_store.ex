defmodule HaruStore do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(HaruStore.Supervisor, [])
    ]

    opts = [strategy: :one_for_one, name: HaruStore.Supervisor]

    Supervisor.start_link(children, opts)
  end

end
