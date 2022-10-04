defmodule ImageGalleryWeb.GraphQL do
  alias Absinthe.Schema.Notation

  def type do
    quote do
      use Notation
    end
  end

  def query do
    quote do
      use Notation
    end
  end

  def schema do
    quote do
      use Absinthe.Schema
    end
  end

  def resolver do
    quote do
      alias ImageGalleryWeb.Repo
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
