defmodule ImageGalleryWeb.GraphQL.Schema do
  use ImageGalleryWeb.GraphQL, :schema

  alias ImageGalleryWeb.GraphQL.Albums.{
    Mutations.AlbumMutations,
    Queries.AlbumQueries,
    Types.AlbumTypes,
  }

  alias ImageGalleryWeb.GraphQL.Photos.{
    Mutations.PhotoMutations,
    Queries.PhotoQueries,
    Types.PhotoTypes,
  }


  # Types imports
  import_types(AlbumTypes)
  import_types(PhotoTypes)

  # Queries imports
  import_types(AlbumQueries)
  import_types(PhotoQueries)

  # Mutations imports
  import_types(PhotoMutations)
  import_types(AlbumMutations)


  query do
    import_fields(:album_queries)
    import_fields(:photo_queries)
  end

  mutation do
    import_fields(:photo_mutations)
    import_fields(:album_mutations)
  end
end
