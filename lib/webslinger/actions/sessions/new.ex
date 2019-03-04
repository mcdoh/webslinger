defmodule Webslinger.Actions.Sessions.New do
  use Webslinger.Action

  def call(conn, _opts) do
    render(conn, Webslinger.Views.Sessions.new([]))
  end
end
