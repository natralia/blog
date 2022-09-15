defmodule SmallBlog.Repo do
  use Ecto.Repo,
    otp_app: :small_blog,
    adapter: Ecto.Adapters.Postgres
end
