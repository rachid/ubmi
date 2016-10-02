# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sally,
  ecto_repos: [Sally.Repo]

# Configures the endpoint
config :sally, Sally.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "I8ErIeCYVGAAy+QUYI+RdVl6fd8+0rfonlUcLby8XaW/7NZSCxc0JYmxs1uT+du2",
  render_errors: [view: Sally.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sally.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
