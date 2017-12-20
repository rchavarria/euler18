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

  #@tag :pending
  test "3 + 7 + 4 + 9 = 23" do
    triangle = [
      [3],
      [7, 4],
      [2, 4, 6],
      [8, 5, 9, 3]
    ]

    assert Euler18.find_max_sum(triangle) == 23
  end

  #@tag :pending
  test "13 + 54 + 21 + 44 + 43 = 175" do
    triangle = [
      [13],
      [54, 30],
      [21,  7, 39],
      [14, 44, 23, 45],
      [24, 43, 16, 17, 22]
    ]

    assert Euler18.find_max_sum(triangle) == 175
  end

  #@tag :pending
  test "Try from bottom to top" do
    triangle = [
      [5],
      [50, 6],
      [1, 9, 99]
    ]

    assert Euler18.find_max_sum(triangle) == 5 + 6 + 99
  end

  #@tag :pending
  test "Definitive test" do
    triangle = [
      [75],
      [95, 64],
      [17, 47, 82],
      [18, 35, 87, 10],
      [20,  4, 82, 47, 65],
      [19,  1, 23, 75,  3, 34],
      [88,  2, 77, 73,  7, 63, 67],
      [99, 65,  4, 28,  6, 16, 70, 92],
      [41, 41, 26, 56, 83, 40, 80, 70, 33],
      [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
      [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
      [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
      [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
      [63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
      [ 4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23]
    ]

    assert Euler18.find_max_sum(triangle) == 1074
  end

end
