defmodule WebslingerTest do
  use ExUnit.Case
  doctest Webslinger

  test "greets the world" do
    assert Webslinger.hello() == :world
  end
end
