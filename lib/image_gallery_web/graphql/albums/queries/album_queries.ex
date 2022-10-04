defmodule ImageGalleryWeb.GraphQL.Albums.Queries.AlbumQueries do
  use ImageGalleryWeb.GraphQL, :query

  alias ImageGalleryWeb.GraphQL.Albums.Resolvers.AlbumResolvers

  # temporary. for initial setup only.
  object :album_queries do
    @desc "List Albums"
    field :list_albums, list_of(:album) do
      resolve(&AlbumResolvers.list_albums/2)
    end
  end
end
