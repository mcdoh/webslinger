defmodule Gunslinger.Actions.Posts.Index do
  import Plug.Conn
  require EEx

  EEx.function_from_file :def, :index, "lib/gunslinger/templates/posts/index.html.eex", [:adjective]

  def init(opts), do: opts

  def call(conn, _opts) do
    send_resp(conn, 200, index("coolest"))
  end
end
