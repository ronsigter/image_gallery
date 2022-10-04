defmodule ImageGalleryWeb.GraphQL.Photos.Queries.PhotoQueries do
  use ImageGalleryWeb.GraphQL, :query

  alias ImageGalleryWeb.GraphQL.Photos.Resolvers.PhotoResolvers

  # temporary. for initial setup only.
  object :photo_queries do
    @desc "List photos"
    field :list_photos, list_of(:photo) do
      resolve(&PhotoResolvers.list_photos/2)
    end
  end
end
