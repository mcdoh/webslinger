defmodule Webslinger.Actions.Sessions.Create do
  use Webslinger.Action

  def call(conn, _opts) do
    %{"email" => email} = conn.params

    conn
    |> put_session(:current_user_email, email)
    |> redirect(to: "/")
  end
end
