defmodule ImageGallery.Albums do
  alias ImageGallery.Albums.Context.AlbumContext

  defdelegate create_album(params \\ %{}), to: AlbumContext
  defdelegate list_albums(preload \\ []), to: AlbumContext
end
