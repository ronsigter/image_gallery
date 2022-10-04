defmodule ImageGalleryWeb.GraphQL.Photos.Resolvers.PhotoResolvers do
  use ImageGalleryWeb.GraphQL, :resolver

  alias ImageGallery.Photos

  def list_photos(_args, _context) do
    {:ok, Photos.list_photos()}
  end
end
