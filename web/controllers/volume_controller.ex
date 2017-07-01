defmodule StockScraping.VolumeController do
  use StockScraping.Web, :controller

  def index(conn, %{"date" => date}) do
    target = Date.from_iso8601!(date)
    items = StockScraping.YahooVolume |> where(date: ^target) |> Repo.all

    conn
    |> assign(:items, items)
    |> assign(:target, target)
    |> render("index.html")
  end
end
