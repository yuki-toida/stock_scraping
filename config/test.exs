use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :stock_scraping, StockScraping.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :stock_scraping, StockScraping.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "stock_scraping",
  username: "ytoida",
  password: "",
  hostname: "localhost",
  port: 3306,
  pool: Ecto.Adapters.SQL.Sandbox
