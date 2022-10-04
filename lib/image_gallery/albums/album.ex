defmodule ImageGallery.Albums.Album do
  use ImageGallery, :schema

  alias ImageGallery.Photos.Photo

  schema "albums" do
    field :name, :string
    field :description, :string

    many_to_many :photos, Photo, join_through: "albums_photos"
    timestamps()
  end
end
