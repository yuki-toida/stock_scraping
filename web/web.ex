defmodule StockScraping.Web do
  def model do
    quote do
      use Ecto.Schema
      use Timex.Ecto.Timestamps

      import Ecto
      import Ecto.Changeset
      import Ecto.Query
    end
  end

  def controller do
    quote do
      use Phoenix.Controller

      alias StockScraping.Repo
      import Ecto
      import Ecto.Query

      import StockScraping.Router.Helpers
      import StockScraping.Gettext

      # add
      import StockScraping.Shared
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "web/templates"

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import StockScraping.Router.Helpers
      import StockScraping.ErrorHelpers
      import StockScraping.Gettext

      # add
      import StockScraping.Shared
    end
  end

  def router do
    quote do
      use Phoenix.Router
    end
  end

  def channel do
    quote do
      use Phoenix.Channel

      alias StockScraping.Repo
      import Ecto
      import Ecto.Query
      import StockScraping.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
