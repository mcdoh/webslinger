defmodule Gunslinger.Application do
  use Application

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Gunslinger.Router, options: [port: 4001]},
      {Gunslinger.Repo, []}
    ]

    opts = [strategy: :one_for_one, name: Gunslinger.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
