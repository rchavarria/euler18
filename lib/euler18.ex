defmodule Euler18 do

  # helps making the code sorter: you'll see `at(0)` instead of `Enum.at(0)`
  import Enum, only: [reverse: 1, at: 2, drop: 2, take: 2, max: 1]

  def find_max_sum([]), do: 0
  def find_max_sum(piramid) do
    sum(piramid |> reverse(), [])
  end

  defp sum([], previous_row), do: previous_row |> at(0)
  defp sum([ current_row | rows ], previous_row) do
    next_row = merge_rows(current_row, previous_row)
    sum(rows, next_row)
  end

  defp merge_rows([], _previous_row), do: []
  defp merge_rows([ i | current_row ], previous_row) do
    max = previous_row |> max_of_first_two()
    [ i + max | merge_rows(current_row, previous_row |> drop(1)) ]
  end

  defp max_of_first_two([]), do: 0
  defp max_of_first_two(row), do: row |> take(2) |> max()

end
