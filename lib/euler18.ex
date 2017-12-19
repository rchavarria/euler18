defmodule Euler18 do

  def find_max_sum(piramid) do
    sum(piramid, 0)
  end

  defp sum([], _col), do: 0
  defp sum([[]], _col), do: 0
  defp sum([ top | rows ], col) do
    meaningful_cols = top |> Enum.drop(col) |> Enum.take(2)
    max_top = meaningful_cols |> Enum.max()
    col_of_max = meaningful_cols |> Enum.find_index(&(&1 == max_top))

    max_top + sum(rows, col + col_of_max)
  end

end
