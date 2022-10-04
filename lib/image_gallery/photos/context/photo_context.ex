defmodule ImageGallery.Photos.Context.PhotoContext do
  use ImageGallery, :context

  alias ImageGallery.Photos.Photo

  def create_photo(params \\ %{}) do
    %Photo{}
    |> create_changeset(params)
    |> Repo.insert()
  end

  def create_changeset(%Photo{} = photo, params) do
    photo
    |> changeset(params)
  end

  def changeset(%Photo{} = photo, params) do
    photo
    |> cast(params, [
      :name,
      :type
    ])
  end
end
