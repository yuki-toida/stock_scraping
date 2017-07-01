defmodule StockScraping.HomeView do
  use StockScraping.Web, :view

  def date_to_string(date) do
    Timex.format!(date, "{YYYY}-{0M}-{0D}")
  end

  def integer_to_string(value) do
    Integer.to_string(value)
  end
end
