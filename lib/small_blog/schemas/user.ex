defmodule SmallBlog.Schemas.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string
    has_many :posts, SmallBlog.Schemas.Post
    has_many :comments, SmallBlog.Schemas.Comment

    timestamps()
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:username])
    |> validate_required([:username])
  end
end
