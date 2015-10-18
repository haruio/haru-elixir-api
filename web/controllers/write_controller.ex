defmodule HaruElixirApi.WriteController do
  use HaruElixirApi.Web, :controller

  ## Entity
  def create_entity(conn, params) do
    json conn, params
  end

  def update_entity(conn, params) do
    json conn, params

  end

  def delete_entity(conn, params) do
    json conn, params
   
  end

  ## Config
  def create_config(conn, params) do
    json conn, params
   
  end

  def update_config(conn, params) do
    json conn, params
   
  end

  def delete_config(conn, params) do
    json conn, params
   
  end
  ## Review crawler
  def fetch_review(conn, params) do
    json conn, params
   
  end

  ## Push
  def send_push(conn, params) do
    json conn, params
   
  end

  ## Monetization
  def create_monetization(conn, params) do
    json conn, params
  end
end
