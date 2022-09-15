defmodule SmallBlog.Repo.Migrations.CreatePostsTable do
  use Ecto.Migration

  def change do
    create table("posts") do
      add :user_id, references(:users)
      add :post_text, :text

      timestamps()
    end
  end
end
