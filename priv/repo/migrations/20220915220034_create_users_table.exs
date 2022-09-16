defmodule SmallBlog.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table("users", primary_id: false) do
      add :username, :string

      timestamps()
    end
  end
end
