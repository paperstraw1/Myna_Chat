defmodule Myna.Repo do
  use Ecto.Repo,
    otp_app: :Myna,
    adapter: Ecto.Adapters.Postgres
end
