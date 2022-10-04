defmodule ImageGalleryWeb.GraphQL.Schema do
  use ImageGalleryWeb.GraphQL, :schema

  alias ImageGalleryWeb.GraphQL.Albums.{
    Types.AlbumTypes,
    Queries.AlbumQueries
  }

  alias ImageGalleryWeb.GraphQL.Photos.{
    Types.PhotoTypes,
    Queries.PhotoQueries
  }


  # Types imports
  import_types(AlbumTypes)
  import_types(PhotoTypes)

  # Queries imports
  import_types(AlbumQueries)
  import_types(PhotoQueries)

  # Mutations imports


  query do
    import_fields(:album_queries)
    import_fields(:photo_queries)
  end

  # mutation do
  #   import_fields(:create_photo_album)
  # end
end
