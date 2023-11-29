defmodule Valmue.Web.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Valmue.Web.Telemetry,
      # Start a worker by calling: Valmue.Web.Worker.start_link(arg)
      # {Valmue.Web.Worker, arg},
      # Start to serve requests, typically the last entry
      Valmue.Web.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Valmue.Web.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Valmue.Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
