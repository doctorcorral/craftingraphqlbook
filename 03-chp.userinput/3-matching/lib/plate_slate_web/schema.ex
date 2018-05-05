# ---
# Excerpted from "Craft GraphQL APIs in Elixir with Absinthe",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/wwgraphql for more book information.
# ---
defmodule PlateSlateWeb.Schema do
  use Absinthe.Schema

  alias PlateSlateWeb.Resolvers

  query do
    @desc "menu items bien bonitos de nuevo"
    field :menu_items, list_of(:menu_item) do
      arg(:matching, :string)
      resolve(&Resolvers.Menu.menu_items/3)
    end
  end

  object :menu_item do
    field(:id, :id)
    field(:name, :string)
    field(:description, :string)
  end
end
