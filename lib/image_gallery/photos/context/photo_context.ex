defmodule ImageGallery.Photos.Context.PhotoContext do
  use ImageGallery, :context

  alias ImageGallery.Photos.Photo

  def create_photo(params \\ %{}) do
    %Photo{}
    |> create_changeset(params)
    |> Repo.insert()
  end

  def list_photos(project_ids \\ []) when is_list(project_ids) do
    if length(project_ids) != 0 do
      Photo
      |> where([p], p.id in ^project_ids)
      |> Repo.all()
    else
      Photo
      |> Repo.all
    end
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
