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
  end

  scope "/v2", HaruElixirApi do
    pipe_through :api

    ## Entity
    post "/classes/:classname", EntityController, :create_entity
    get "/classes/:classname", EntityController, :read_entities
    get "/classes/:classname/:id", EntityController, :read_entity
    put "/classes/:classname/:id", EntityController, :update_entity
    delete "/classes/:classname/:id", EntityController, :delete_entity

    ## Class
    delete "/classes/:classname", ClassController, :delete_class

    ## Config
    post "/config", ConfigController, :create_config
    get "/config", ConfigController, :read_config
    put "/config", ConfigController, :update_config
    delete "/config", ConfigController, :delete_config

    ## Review crawler
    post "/reiview/fetch", ReviewController, :fetch_review

    ## Push
    post "/push", PushController, :send_push

    ## Monetization
    post "/monetization", MonetizationController, :create_monetiztion
  end
end
