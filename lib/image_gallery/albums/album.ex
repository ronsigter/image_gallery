defmodule ImageGallery.Albums.Album do
  use ImageGallery, :schema

  schema "albums" do
    field :name, :string
    field :description, :string

    timestamps()
  end
end
