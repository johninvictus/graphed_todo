defmodule GraphedTodo.Repo do
  use Ecto.Repo,
    otp_app: :graphed_todo,
    adapter: Ecto.Adapters.Postgres
end
