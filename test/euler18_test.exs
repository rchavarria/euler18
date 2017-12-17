defmodule Euler18Test do
  use ExUnit.Case
  doctest Euler18

  test "empty triangle sums zero" do
    assert Euler18.find_max_sum([]) == 0
  end

  test "one row triangle" do
    assert Euler18.find_max_sum([ [1234] ]) == 1234
  end

end
