defmodule VisitCounterTest do
  use ExUnit.Case
  doctest VisitCounter

  test "greets the world" do
    assert VisitCounter.hello() == :world
  end
end
