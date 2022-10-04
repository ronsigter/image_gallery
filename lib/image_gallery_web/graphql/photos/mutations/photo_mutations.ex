defmodule ImageGalleryWeb.GraphQL.Photos.Mutations.PhotoMutations do
  use ImageGalleryWeb.GraphQL, :query

  alias ImageGalleryWeb.GraphQL.Photos.Resolvers.PhotoResolvers

  # temporary. for initial setup only.
  object :photo_mutations do
    @desc "Upload a photo"
    field :upload_photo, :photo do
      arg(:name, non_null(:string))
      arg(:type, non_null(:string))

      resolve(&PhotoResolvers.upload_photo/2)
    end
  end
end
