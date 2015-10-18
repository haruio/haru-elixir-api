defmodule HaruElixirApi.Router do
  use HaruElixirApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HaruElixirApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

    ## Entity
    post "/classes/:classname", WriteController, :create_entity
    put "/classes/:classname/:id", WriteController, :update_entity
    delete "/classes/:classname/:id", WriteController, :delete_entity
    delete "/classes/:classname", WriteController, :delete_class
end
