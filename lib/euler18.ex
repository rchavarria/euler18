defmodule Euler18 do

  def find_max_sum([]), do: 0
  def find_max_sum([[]]), do: 0
  def find_max_sum([ top | rows ]) do
    max_top = top |> Enum.max()
    max_top + find_max_sum(rows)
  end

end
