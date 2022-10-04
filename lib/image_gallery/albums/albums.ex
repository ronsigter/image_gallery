defmodule ImageGallery.Albums do
  alias ImageGallery.Albums.Context.AlbumContext

  defdelegate create_album(params \\ %{}), to: AlbumContext
  defdelegate list_albums(), to: AlbumContext
  defdelegate create_photo_album(album \\ %{}, photo_ids \\ []), to: AlbumContext
end
