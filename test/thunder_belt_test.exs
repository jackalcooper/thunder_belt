defmodule ThunderBeltTest do
  use ExUnit.Case
  doctest ThunderBelt

  test "the truth" do
    ThunderBelt.q |> List.last |> ThunderBelt.update_record
    assert 1 + 1 == 2
  end
end
