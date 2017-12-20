defmodule Euler18 do

  def find_max_sum([]), do: 0
  def find_max_sum(piramid) do
    sum(piramid |> Enum.reverse(), [])
  end

  defp sum([], previous_row), do: previous_row |> Enum.at(0)
  defp sum(piramid, previous_row) do
    [ current_row | rows ] = piramid

    next_row = merge_rows(current_row, previous_row)
    sum(rows, next_row)
  end

  defp merge_rows([], _previous_row), do: []
  defp merge_rows([ i | current_row ], previous_row) do
    max = previous_row |> max_of_first_two()
    [ i + max | merge_rows(current_row, previous_row |> Enum.drop(1)) ]
  end

  defp max_of_first_two([]), do: 0
  defp max_of_first_two(row), do: row |> Enum.take(2) |> Enum.max()

end
