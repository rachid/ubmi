# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :belly,
  ecto_repos: [Belly.Repo]

# Configures the endpoint
config :belly, Belly.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "PxzRSn84uT/ZIRK1mHHh9HkXuDYZzj0Fzwr1AQ7wigNzpn16hxqwjoIrdP0YiTl7",
  render_errors: [view: Belly.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Belly.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
