defmodule ImageGallery.Photos do
  alias ImageGallery.Photos.Context.PhotoContext

  defdelegate create_photo(params \\ %{}), to: PhotoContext
  defdelegate list_photos(photo_ids \\ []), to: PhotoContext
end
