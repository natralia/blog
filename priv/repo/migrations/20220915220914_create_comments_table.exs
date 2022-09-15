defmodule SmallBlog.Repo.Migrations.CreateCommentsTable do
  use Ecto.Migration

  def change do
    create table("comments") do
      add :user_id, references(:users)
      add :post_id, references(:posts)
      add :comment_text, :text

      timestamps()
    end
  end
end
