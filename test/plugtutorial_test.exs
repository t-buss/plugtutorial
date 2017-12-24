defmodule PlugtutorialTest do
  use ExUnit.Case
  doctest Plugtutorial

  test "greets the world" do
    assert Plugtutorial.hello() == :world
  end
end
