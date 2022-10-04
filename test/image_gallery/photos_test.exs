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

  describe "Photos.list_photos/1" do
    test "Returns list of photos" do
      # Generate 5 photos
      Enum.each(1..5, fn x ->
        params = %{name: "new_image_#{x}", type: "image/jpg"}
        Photos.create_photo(params)
      end)

      photos = Photos.list_photos()
      assert length(photos) == 5
    end
  end
end
