defmodule HaruElixirApi.ConfigController do
  use HaruElixirApi.Web, :controller

  ## Config
  def create_config(conn, params) do
    json conn, params
  end

  def read_config(conn, params) do
    json conn, params
  end

  def update_config(conn, params) do
    json conn, params
  end

  def delete_config(conn, params) do
    json conn, params
  end
end
