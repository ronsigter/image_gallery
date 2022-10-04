defmodule ImageGallery.PhotosTest do
  use ImageGallery.DataCase, async: true
  alias ImageGallery.Photos
  alias ImageGallery.Photos.Photo

  describe "Photos.create_photos/1" do
    test "Returns ok tuple for creating an image" do
      params = %{name: "new_image", type: "image/jpg"}
      assert {:ok, %Photo{}} = Photos.create_photo(params)
    end
  end
end
