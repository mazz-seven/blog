# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_blog,
  ecto_repos: [LiveBlog.Repo]

# Configures the endpoint
config :live_blog, LiveBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "suBfu4iAKsUoviNpjYq69Nkv5nZntIx28TBMX1ZTVWPVJN9uB9+crFngy5LnWDOC",
  render_errors: [view: LiveBlogWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveBlog.PubSub,
  live_view: [signing_salt: "/8LCauvq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix, :template_engines, md: Cayde.Engine

config :cayde, :root, "priv/site"
config :cayde, :extensions, []

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
