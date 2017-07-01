# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stock_scraping,
  ecto_repos: [StockScraping.Repo]

# Configures the endpoint
config :stock_scraping, StockScraping.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gy0ZuIoNKOAnB+iHsXLtA9jDznw2mD15iSHxKlvBjvE+2SRNUKxVlfqcOGWNTO/t",
  render_errors: [view: StockScraping.ErrorView, accepts: ~w(html json)],
  pubsub: [name: StockScraping.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
