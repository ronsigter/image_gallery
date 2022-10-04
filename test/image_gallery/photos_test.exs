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
    setup do
      # Generate 5 photos
      photo_ids = Enum.map(1..5, fn x ->
        params = %{name: "new_image_#{x}", type: "image/jpg"}
        {:ok, %{id: id}} = Photos.create_photo(params)
        id
      end)

      {:ok, photo_ids: photo_ids}
    end

    test "Returns all photos if no list parameters" do
      photos = Photos.list_photos()
      assert length(photos) == 5
    end

    test "Returns photos in the list parameters", %{photo_ids: photo_ids} do
      photo_ids = Enum.slice(photo_ids, 0, 3)
      photos = Photos.list_photos(photo_ids)
      assert length(photos) == 3
    end
  end
end
