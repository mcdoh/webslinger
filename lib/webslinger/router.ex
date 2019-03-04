defmodule Webslinger.Router do
  use Plug.Router

  if Mix.env() == :dev do
    use Plug.Debugger
  end

  plug Plug.Logger
  plug Plug.Static, from: :webslinger, at: "/", only: ["css", "images", "favicon.ico"]
  plug :match
  plug Plug.Parsers, parsers: [:urlencoded, :multipart]
  plug :put_secret_key_base
  plug Plug.Session, store: :cookie, key: "_webslinger_app", signing_salt: "webslinger salt"
  plug :fetch_session
  plug :dispatch

  get "/", to: Webslinger.Actions.Posts.Index
  post "/posts", to: Webslinger.Actions.Posts.Create
  get "/login", to: Webslinger.Actions.Sessions.New
  post "/sessions", to: Webslinger.Actions.Sessions.Create

  def put_secret_key_base(conn, _) do
    put_in(
      conn.secret_key_base,
      "superDuperCaliFragiListicExpialidociousStillNotLongEnoughSecretKey"
    )
  end
end
