defmodule StockScraping.HomeController do
  use StockScraping.Web, :controller

  def index(conn, params) do
    target = case params do
      %{"year" => year, "month" => month}
        -> Date.from_erl!({String.to_integer(year), String.to_integer(month), 1})
      _
        -> Date.from_erl!({now().year, now().month, 1})
    end

    items = Repo.all(StockScraping.YahooVolumeDate)
    |> Enum.filter(fn(x) -> x.date.year == target.year && x.date.month == target.month  end)

    prev = Timex.shift(target, months: -1)
    next = Timex.shift(target, months: 1)

    conn
    |> assign(:items, items)
    |> assign(:target, target)
    |> assign(:prev, prev)
    |> assign(:next, next)
    |> render("index.html")
  end
end
