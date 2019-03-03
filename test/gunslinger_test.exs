defmodule GunslingerTest do
  use ExUnit.Case
  doctest Gunslinger

  test "greets the world" do
    assert Gunslinger.hello() == :world
  end
end
