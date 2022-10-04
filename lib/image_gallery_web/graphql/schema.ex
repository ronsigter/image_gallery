defmodule ImageGalleryWeb.GraphQL.Schema do
  use ImageGalleryWeb.GraphQL, :schema

  alias ImageGalleryWeb.GraphQL.Albums.{
    Types.AlbumTypes,
    Queries.AlbumQueries
  }


  # Types imports
  import_types(AlbumTypes)


  # Queries imports
  import_types(AlbumQueries)

  # Mutations imports


  query do
    import_fields(:album_queries)
    # import_fields(:list_photos)
    # import_fields(:get_album)
  end

  # mutation do
  #   import_fields(:create_photo_album)
  # end
end
