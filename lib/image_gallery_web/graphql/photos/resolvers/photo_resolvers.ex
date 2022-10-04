defmodule ImageGalleryWeb.GraphQL.Photos.Resolvers.PhotoResolvers do
  use ImageGalleryWeb.GraphQL, :resolver

  alias ImageGallery.Photos
  alias ImageGallery.Photos.Photo

  def list_photos(_args, _context) do
    {:ok, Photos.list_photos()}
  end

  def upload_photo(photo, _context) do
    case Photos.create_photo(photo) do
      {:ok, %Photo{}} ->
        {:ok, photo}
      _error ->
        {:error, %{message: "Failed to upload photo"}}
    end
  end
end
