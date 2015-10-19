defmodule HaruElixirApi.ClassController do
  use HaruElixirApi.Web, :controller

  def delete_class(conn, params) do
    json conn, params
  end

end
