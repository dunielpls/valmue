import Config

config :valmue_web,
  namespace: Valmue.Web,
  ecto_repos: [Valmue.Web.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :valmue_web, Valmue.Web.Endpoint,
  url: [host: "localhost"],
  adapter: Phoenix.Endpoint.Cowboy2Adapter,
  render_errors: [
    formats: [html: Valmue.Web.ErrorHTML, json: Valmue.Web.ErrorJSON],
    layout: false
  ],
  pubsub_server: Valmue.Web.PubSub,
  live_view: [signing_salt: "q39iA15K"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.17.11",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/valmue_web/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configure tailwind (the version is required)
config :tailwind,
  version: "3.3.2",
  default: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../apps/valmue_web/assets", __DIR__)
  ]

config :web,
  namespace: Valmue.Web,
  ecto_repos: [Valmue.Web.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :web, Valmue.Web.Endpoint,
  url: [host: "localhost"],
  adapter: Phoenix.Endpoint.Cowboy2Adapter,
  render_errors: [
    formats: [html: Valmue.Web.ErrorHTML, json: Valmue.Web.ErrorJSON],
    layout: false
  ],
  pubsub_server: Valmue.Web.PubSub,
  live_view: [signing_salt: "Eo4vZjhs"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.17.11",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/web/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configure tailwind (the version is required)
config :tailwind,
  version: "3.3.2",
  default: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../apps/web/assets", __DIR__)
  ]

import Config

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
