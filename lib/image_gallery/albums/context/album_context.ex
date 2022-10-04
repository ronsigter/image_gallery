defmodule ImageGallery.Albums.Context.AlbumContext do
  use ImageGallery, :context

  alias ImageGallery.Albums.Album

  def create_album(params \\ %{}) do
    %Album{}
    |> create_changeset(params)
    |> Repo.insert()
  end

  def list_albums(preload) do
    Album
    |> preload(^preload)
    |> Repo.all()
  end

  def create_changeset(%Album{} = album, params) do
    album
    |> changeset(params)
  end

  def changeset(%Album{} = album, params) do
    album
    |> cast(params, [
      :name,
      :description
    ])
  end
end
