defmodule ImageGallery do
  @moduledoc """
  ImageGallery keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def schema do
    quote do
      use Ecto.Schema

      @primary_key {:id, :binary_id, autogenerate: true}
      @foreign_key_type :binary_id
      @timestamps_opts [type: :utc_datetime]
    end
  end

  def context do
    quote do
      alias ImageGallery.Repo
      import Ecto.Query, warn: false
      import Ecto.Changeset
      alias Ecto.Multi
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
