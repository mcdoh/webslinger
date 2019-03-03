defmodule Gunslinger.Actions.Posts.Index do
  import Plug.Conn
  alias Gunslinger.Views.Posts

  def init(opts), do: opts

  def call(conn, _opts) do
    posts = Gunslinger.Repo.all()

    conn
    |> send_resp(200, Posts.index(posts: posts))
  end
end
