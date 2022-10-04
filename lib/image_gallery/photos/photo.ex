defmodule ImageGallery.Photos.Photo do
  use ImageGallery, :schema

  schema "photos" do
    field :name, :string
    field :type, :string

    timestamps()
  end
end
