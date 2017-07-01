defmodule StockScraping.Shared do
  use Timex

  def now do
    Timex.now("Asia/Tokyo")
  end
end
