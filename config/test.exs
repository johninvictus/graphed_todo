use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :graphed_todo, GraphedTodoWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :graphed_todo, GraphedTodo.Repo,
  username: "postgres",
  password: "postgres",
  database: "graphed_todo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
