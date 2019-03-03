defmodule Gunslinger.Actions.Posts.Index do
  use Gunslinger.Action
  alias Gunslinger.Views.Posts

  def call(conn, _opts) do
    posts = Gunslinger.Repo.all()

    current_user_email = get_session(conn, :current_user_email)

    render(conn, Posts.index(posts: posts, current_user_email: current_user_email))
  end
end
