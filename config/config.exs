# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :graphed_todo,
  ecto_repos: [GraphedTodo.Repo]

# Configures the endpoint
config :graphed_todo, GraphedTodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NL6Y6BzApxQ6SPhmseYatgQLbqmD4ogOVhmKuJ71St3hkyp+DwArYqPQ3hePluJX",
  render_errors: [view: GraphedTodoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GraphedTodo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
