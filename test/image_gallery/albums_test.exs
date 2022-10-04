defmodule ImageGallery.AlbumsTest do
  use ImageGallery.DataCase, async: true
  alias ImageGallery.Albums
  alias ImageGallery.Albums.Album

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
end
