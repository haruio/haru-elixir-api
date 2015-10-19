defmodule HaruElixirApi.ReviewController do
  use HaruElixirApi.Web, :controller

  ## Review crawler
  def fetch_review(conn, params) do
    json conn, params
  end

end
