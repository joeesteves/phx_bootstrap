defmodule PhxBootstrapTest do
  use ExUnit.Case
  doctest PhxBootstrap

  test "greets the world" do
    assert PhxBootstrap.hello() == :world
  end
end
