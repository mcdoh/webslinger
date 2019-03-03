defmodule Gunslinger.Actions.Sessions.New do
  use Gunslinger.Action

  def call(conn, _opts) do
    render(conn, Gunslinger.Views.Sessions.new([]))
  end
end
