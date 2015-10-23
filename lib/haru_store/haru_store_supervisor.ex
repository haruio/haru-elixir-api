defmodule HaruStore.Supervisor do
  use Supervisor

  ## Public API
  def start_link(opts \\ []) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  ## Internal API
  def init(:ok) do
    children = []
    supervise(children, strategy: :one_for_one)
  end
end
