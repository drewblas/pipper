defmodule PipperTest do
  use ExUnit.Case
  doctest Pipper

  test "pipper works" do
    import Pipper

    list = [1,2,3]
    list <|> Enum.map(&(&1 * 2))
    assert list == [2,4,6]
  end
end
