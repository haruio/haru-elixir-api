defmodule HaruElixirApi.MonetizationController do
  use HaruElixirApi.Web, :controller

  ## Monetization
  def create_monetization(conn, params) do
    json conn, params
  end
end
