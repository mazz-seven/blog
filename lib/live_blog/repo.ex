defmodule LiveBlog.Repo do
  use Ecto.Repo,
    otp_app: :live_blog,
    adapter: Ecto.Adapters.Postgres
end
