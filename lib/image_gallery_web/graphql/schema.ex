defmodule ImageGalleryWeb.GraphQL.Schema do
  use ImageGalleryWeb.GraphQL, :schema

  alias ImageGalleryWeb.GraphQL.Albums.{
    Types.AlbumTypes,
    Queries.AlbumQueries
  }

  alias ImageGalleryWeb.GraphQL.Photos.{
    Types.PhotoTypes,
    Queries.PhotoQueries,
    Mutations.PhotoMutations
  }


  # Types imports
  import_types(AlbumTypes)
  import_types(PhotoTypes)

  # Queries imports
  import_types(AlbumQueries)
  import_types(PhotoQueries)

  # Mutations imports
  import_types(PhotoMutations)


  query do
    import_fields(:album_queries)
    import_fields(:photo_queries)
  end

  mutation do
    import_fields(:photo_mutations)
  end
end
