defmodule Gunslinger.Actions.Posts.Index do
  import Plug.Conn
  alias Gunslinger.Views.Posts

  def init(opts), do: opts

  def call(conn, _opts) do
    conn
    |> send_resp(200, Posts.index(adjective1: "fastest", adjective2: "coolest"))
  end
end
