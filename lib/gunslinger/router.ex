defmodule Gunslinger.Router do
  use Plug.Router

  if Mix.env() == :dev do
    use Plug.Debugger
  end

  plug Plug.Logger
  plug Plug.Static, from: :gunslinger, at: "/", only: ["css", "images", "favicon.ico"]
  plug :match
  plug Plug.Parsers, parsers: [:urlencoded, :multipart]
  plug :put_secret_key_base
  plug Plug.Session, store: :cookie, key: "_gunslinger_app", signing_salt: "gunslinger salt"
  plug :fetch_session
  plug :dispatch

  get "/", to: Gunslinger.Actions.Posts.Index
  post "/posts", to: Gunslinger.Actions.Posts.Create
  get "/login", to: Gunslinger.Actions.Sessions.New
  post "/sessions", to: Gunslinger.Actions.Sessions.Create

  def put_secret_key_base(conn, _) do
    put_in(
      conn.secret_key_base,
      "superDuperCaliFragiListicExpialidociousStillNotLongEnoughSecretKey"
    )
  end
end
