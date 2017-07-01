use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :stock_scraping, StockScraping.Endpoint,
  secret_key_base: "sx8P4p1VhKtZR08TezTyOnaIhegkuByUajAm9Xjt7J9SK8Stp5XFor5jbjAfJ3zn"

# Configure your database
config :stock_scraping, StockScraping.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "stock_scraping",
  username: "root",
  password: "w8uEwio6",
  hostname: "freedb.chy3h8f6gmnh.ap-northeast-1.rds.amazonaws.com",
  port: 3306,
  pool_size: 10
