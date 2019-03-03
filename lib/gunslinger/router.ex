defmodule Gunslinger.Router do
  use Plug.Router

  if Mix.env() == :dev do
    use Plug.Debugger
  end

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/", to: Gunslinger.Actions.Posts.Index
end
