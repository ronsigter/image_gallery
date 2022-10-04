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
end
