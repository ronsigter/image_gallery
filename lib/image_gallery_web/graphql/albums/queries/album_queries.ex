defmodule ImageGalleryWeb.GraphQL.Albums.Queries.AlbumQueries do
  use ImageGalleryWeb.GraphQL, :query

  alias ImageGalleryWeb.GraphQL.Albums.Resolvers.AlbumResolvers

  # temporary. for initial setup only.
  object :album_queries do
    @desc "List albums"
    field :list_albums, list_of(:album) do
      resolve(&AlbumResolvers.list_albums/2)
    end

    @desc "Get album by id"
    field :get_album, :album do
      arg(:album_id, non_null(:id))

      resolve(&AlbumResolvers.get_album/2)
    end
  end
end
