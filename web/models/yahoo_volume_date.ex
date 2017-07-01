defmodule StockScraping.YahooVolumeDate do
  use StockScraping.Web, :model

  @primary_key false
  schema "yahoo_volume_date" do
    field :date, Timex.Ecto.Date, primary_key: true
    field :add_date, Timex.Ecto.DateTime
    field :updt_date, Timex.Ecto.DateTime
  end
end
