defmodule ImageGalleryWeb.GraphQL.Albums.Types.AlbumTypes do
  use ImageGalleryWeb.GraphQL, :query

  object :album do
    field :id,   :id
    field :name, :string
    field :description, :string
  end
end
