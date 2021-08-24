# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :petal_project,
  ecto_repos: [PetalProject.Repo]

# Configures the endpoint
config :petal_project, PetalProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zwwIDkF7rn9egGOW9Sux9llWabrbHctjmprEZpzDJjUTbq9gfzJc0oDxCytVexlP",
  render_errors: [view: PetalProjectWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PetalProject.PubSub,
  live_view: [signing_salt: "o4pYp2Oo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
