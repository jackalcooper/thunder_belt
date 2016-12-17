defmodule ThunderBeltTest do
  use ExUnit.Case
  doctest ThunderBelt

  test "the truth" do
    ThunderBelt.q |> List.last |> ThunderBelt.update_record
    assert 1 + 1 == 2
  end

  # test "need_rectification" do
  #   ThunderBelt.q |> Enum.map(&ThunderBelt.need_rectification/1)
  #   |> IO.inspect
  # end
end
