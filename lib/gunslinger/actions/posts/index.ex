defmodule Gunslinger.Actions.Posts.Index do
  use Gunslinger.Action
  alias Gunslinger.Views.Posts

  def call(conn, _opts) do
    posts = Gunslinger.Repo.all()

    render(conn, Posts.index(posts: posts))
  end
end
