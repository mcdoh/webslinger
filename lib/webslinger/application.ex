defmodule Webslinger.Application do
  use Application

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Webslinger.Router, options: [port: 4001]},
      {Webslinger.Repo, []}
    ]

    opts = [strategy: :one_for_one, name: Webslinger.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
