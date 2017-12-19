defmodule Euler18Test do
  use ExUnit.Case
  doctest Euler18

  #@tag :pending
  test "empty triangle sums zero" do
    assert Euler18.find_max_sum([]) == 0
  end

  #@tag :pending
  test "one row triangle" do
    assert Euler18.find_max_sum([ [1234] ]) == 1234
  end

  #@tag :pending
  test "two rows triangle" do
    triangle = [
      [1],
      [2, 3]
    ]

    assert Euler18.find_max_sum(triangle) == 4
  end

  #@tag :pending
  test "two rows triangle (max in inverse order)" do
    triangle = [
      [1],
      [3, 2]
    ]

    assert Euler18.find_max_sum(triangle) == 4
  end

  #@tag :pending
  test "three rows triangle" do
    triangle = [
      [1],
      [2, 3],
      [4, 5, 6]
    ]

    assert Euler18.find_max_sum(triangle) == 10
  end

  #@tag :pending
  test "three rows triangle (not descending order)" do
    triangle = [
      [1],
      [2, 3],
      [6, 5, 4]
    ]

    assert Euler18.find_max_sum(triangle) == 1 + 3 + 5
  end

end
