defmodule Belly.Router do
  use Belly.Web, :router

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

  scope "/", Belly do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/kaas", PageController, :index
  end

  forward "/", Sally.Router

  # Other scopes may use custom stacks.
  # scope "/api", Belly do
  #   pipe_through :api
  # end
end
