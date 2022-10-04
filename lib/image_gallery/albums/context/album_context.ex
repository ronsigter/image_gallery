defmodule ImageGallery.Albums.Context.AlbumContext do
  use ImageGallery, :context

  alias ImageGallery.Albums.Album
  alias ImageGallery.Photos

  def create_photo_album(album \\ %{}, photo_ids \\ []) do
    case length(photo_ids) != 0 do
      true ->
        photos = Photos.list_photos(photo_ids)
        %Album{}
        |> create_changeset(album)
        |> put_assoc(:photos, photos)
        |> Repo.insert()

      _ ->
        album
        |> create_album()
    end
  end

  def create_album(params \\ %{}) do
    %Album{}
    |> create_changeset(params)
    |> Repo.insert()
  end

  def list_albums() do
    Album
    |> preload(:photos)
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
