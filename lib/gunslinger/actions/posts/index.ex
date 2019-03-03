defmodule Gunslinger.Actions.Posts.Index do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    send_resp(conn, 200, "Keep plugging away!")
  end
end
