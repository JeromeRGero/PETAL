defmodule PetalProject.Repo do
  use Ecto.Repo,
    otp_app: :petal_project,
    adapter: Ecto.Adapters.Postgres
end
