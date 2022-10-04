defmodule ImageGalleryWeb.GraphQL.Albums.Resolvers.AlbumResolvers do
  use ImageGalleryWeb.GraphQL, :resolver

  alias ImageGallery.Albums
  alias ImageGallery.Albums.Album
  alias ImageGallery.Repo



  def list_albums(_args, _context) do
    {:ok, Albums.list_albums()}
  end

  def get_album(%{album_id: album_id}, _context) do
    case Albums.get_album(album_id) do
      %Album{} = album ->
        {:ok, album}

      _ ->
        {:error, %{message: "Album does not exist"}}
    end
  end

  def create_photo_album(%{album: album, photo_ids: photo_ids}, _context) do
    case Albums.create_photo_album(album, photo_ids) do
      {:ok, %Album{} = album} ->
        {:ok, Repo.preload(album, :photos)}

      _ ->
        {:error, %{message: "Photo album creation failed"}}
    end
  end
end
