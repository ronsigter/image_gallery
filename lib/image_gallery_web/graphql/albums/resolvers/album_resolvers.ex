defmodule ImageGalleryWeb.GraphQL.Albums.Resolvers.AlbumResolvers do
  use ImageGalleryWeb.GraphQL, :resolver

  alias ImageGallery.Albums

  def list_albums(_args, _context) do
    {:ok, Albums.list_albums()}
  end
end
