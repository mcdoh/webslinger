defmodule Webslinger.Actions.Posts.Index do
  use Webslinger.Action
  alias Webslinger.Views.Posts

  def call(conn, _opts) do
    posts = Webslinger.Repo.all()

    current_user_email = get_session(conn, :current_user_email)

    render(conn, Posts.index(posts: posts, current_user_email: current_user_email))
  end
end
