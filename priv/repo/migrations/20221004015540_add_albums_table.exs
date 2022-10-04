defmodule ImageGallery.Repo.Migrations.AddAlbumsTable do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :name, :string
      add :description, :string

      timestamps()
    end
  end
end
