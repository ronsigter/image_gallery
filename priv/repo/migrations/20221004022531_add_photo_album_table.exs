defmodule ImageGallery.Repo.Migrations.AddPhotoAlbumTable do
  use Ecto.Migration

  def change do
    create table(:albums_photos) do
      add :album_id, references(:albums)
      add :photo_id, references(:photos)
    end

    create unique_index(:albums_photos, [:album_id, :photo_id])
  end
end
