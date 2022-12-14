defmodule ImageGalleryWeb.GraphQL.Photos.Types.PhotoTypes do
  use ImageGalleryWeb.GraphQL, :query

  object :photo do
    field :id,   :id
    field :name, :string
    field :type, :string
    field :inserted_at, :string
  end
end
