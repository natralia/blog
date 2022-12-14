defmodule SmallBlog.Schemas.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :comment_text, :string

    belongs_to :post, SmallBlog.Schemas.Post
    belongs_to :user, SmallBlog.Schemas.User

    timestamps()
  end

  def changeset(comment, params \\ %{}) do
    comment
    |> cast(params, [:comment_text])
    |> validate_required([:comment_text])
  end
end
