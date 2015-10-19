defmodule HaruElixirApi.PushController do
  use HaruElixirApi.Web, :controller

  ## Push
  def send_push(conn, params) do
    json conn, params
  end
end
