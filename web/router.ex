defmodule StockScraping.Router do
  use StockScraping.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", StockScraping do
    pipe_through :browser

    get "/", HomeController, :index
    #get "/:date", HomeController, :index

    get "/volume/:date", VolumeController, :index
  end
end
