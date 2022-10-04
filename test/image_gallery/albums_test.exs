defmodule ImageGallery.AlbumsTest do
  use ImageGallery.DataCase, async: true
  alias ImageGallery.Albums
  alias ImageGallery.Albums.Album
  alias ImageGallery.Photos

  describe "Albums.create_album/1" do
    test "Returns ok tuple for creating an album" do
      params = %{name: "new_album", description: "this is a test album"}
      assert {:ok, %Album{}} = Albums.create_album(params)
    end
  end

  describe "Albums.list_albums/1" do
    test "Returns list of albums" do
      # Generate 5 albums
      Enum.each(1..5, fn x ->
        params = %{name: "new_album_#{x}", description: "test album #{x}"}
        Albums.create_album(params)
      end)

      albums = Albums.list_albums()
      assert length(albums) == 5
    end
  end

  describe "Albums.get_album/1" do
    test "Returns existing album" do
      params = %{name: "new_album", description: "this is a test album"}
      {:ok, created_album} = Albums.create_album(params)

      assert created_album = Albums.get_album(created_album.id)
    end
  end

  describe "Albums.create_photo_album/2" do
    setup do
      # Generate 5 photos
      photo_ids = Enum.map(1..5, fn x ->
        params = %{name: "new_image_#{x}", type: "image/jpg"}
        {:ok, %{id: id}} = Photos.create_photo(params)
        id
      end)

      {:ok, photo_ids: photo_ids}
    end

    test "Returns album with associated photos", %{photo_ids: photo_ids} do
      params = %{name: "new_album", description: "this is a test album"}
      photo_ids = Enum.slice(photo_ids, 0, 3)

      {:ok, album} = Albums.create_photo_album(params, photo_ids)
      assert length(album.photos) == 3
    end

    test "Returns album even if no photo_ids parameters were passed" do
      params = %{name: "new_album", description: "this is a test album"}

      assert {:ok, %Album{}} = Albums.create_photo_album(params)
    end
  end
end
