defmodule HaruElixirApi.EntityController do
  use HaruElixirApi.Web, :controller

  ## Entity
  def create_entity(conn, params) do
    json conn, params
  end

  def read_entity(conn, params) do
    json conn, params
  end

  def read_entities(conn, params) do
    json conn, params
  end

  def update_entity(conn, params) do
    json conn, params
  end

  def delete_entity(conn, params) do
    json conn, params
  end
end
