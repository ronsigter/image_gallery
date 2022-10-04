defmodule ImageGalleryWeb.GraphQL.Albums.Resolvers.AlbumResolvers do
  use ImageGalleryWeb.GraphQL, :resolver

  alias ImageGallery.Albums
  alias ImageGallery.Albums.Album


  def list_albums(_args, _context) do
    {:ok, Albums.list_albums()}
  end

  def get_album(%{album_id: album_id}, _context) do
    case Albums.get_album(album_id) do
      %Album{} = album ->
        {:ok, album}

      nil ->
        {:error, %{message: "Album does not exist"}}
    end
  end
end
