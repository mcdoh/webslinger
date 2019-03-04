defmodule Webslinger.Actions.Posts.Create do
  use Webslinger.Action

  def call(conn, _opts) do
    %{"post" => post, "author" => author} = conn.params

    # replace with ETS, Ecto, or Mnesia?
    Webslinger.Repo.insert(author, %{body: post, author: author})

    redirect(conn, to: "/")
  end
end
