defmodule ThunderBelt.Repo do
  use Ecto.Repo,
    otp_app: :thunder_belt,
    adapter: Sqlite.Ecto
end