defmodule ImageGalleryWeb.GraphQL.Albums.Types.AlbumTypes do
  use ImageGalleryWeb.GraphQL, :query

  object :album do
    field :id,   :id
    field :name, :string
    field :description, :string
    field :inserted_at, :string
    field :photos, list_of(:photo)
  end

  input_object :album_input do
    field :name, :string
    field :description, :string
  end
end
