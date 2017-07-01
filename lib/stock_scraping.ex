defmodule StockScraping do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(StockScraping.Repo, []),
      supervisor(StockScraping.Endpoint, []),
    ]

    opts = [strategy: :one_for_one, name: StockScraping.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    StockScraping.Endpoint.config_change(changed, removed)
    :ok
  end
end
