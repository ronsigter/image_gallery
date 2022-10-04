defmodule ImageGalleryWeb.GraphQL.Albums.Mutations.AlbumMutations do
  use ImageGalleryWeb.GraphQL, :query

  alias ImageGalleryWeb.GraphQL.Albums.Resolvers.AlbumResolvers

  # temporary. for initial setup only.
  object :album_mutations do
    @desc "Create photo album"
    field :create_photo_album, :album do
      arg(:album, non_null(:album_input))
      arg(:photo_ids, non_null(list_of(:string)))

      resolve(&AlbumResolvers.create_photo_album/2)
    end
  end
end
