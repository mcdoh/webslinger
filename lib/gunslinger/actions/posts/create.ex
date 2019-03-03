defmodule Gunslinger.Actions.Posts.Create do
  use Gunslinger.Action

  def call(conn, _opts) do
    %{"post" => post, "author" => author} = conn.params

    # replace with ETS, Ecto, or Mnesia?
    Gunslinger.Repo.insert(author, %{body: post, author: author})

    redirect(conn, to: "/")
  end
end
