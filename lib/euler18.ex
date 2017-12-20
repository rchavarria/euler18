defmodule Euler18 do

  def find_max_sum(piramid) do
    reversed_sum(piramid |> Enum.reverse(), [])
  end

  defp reversed_sum([], previous_row), do: previous_row |> Enum.at(0)
  defp reversed_sum(piramid, previous_row) do
    [ current_row | rows ] = piramid

    next_row = recurse_in_parallel(current_row, previous_row)
    reversed_sum(rows, next_row)
  end

  defp recurse_in_parallel([], _previous_row), do: []
  defp recurse_in_parallel([ current_element | current_row ], previous_row) do
    max = previous_row |> max_of_first_two()
    [ current_element + max | recurse_in_parallel(current_row, previous_row |> Enum.drop(1)) ]
  end

  defp max_of_first_two([]), do: 0
  defp max_of_first_two(row), do: row |> Enum.take(2) |> Enum.max()

end
