defmodule ImageGallery.Repo.Migrations.AddPhotosTable do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :name, :string
      add :type, :string

      timestamps()
    end
  end
end
