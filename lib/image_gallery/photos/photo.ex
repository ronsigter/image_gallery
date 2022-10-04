defmodule ImageGallery.Photos.Photo do
  use ImageGallery, :schema

  alias ImageGallery.Albums.Album

  schema "photos" do
    field :name, :string
    field :type, :string

    many_to_many :albums, Album, join_through: "albums_photos"

    timestamps()
  end
end
