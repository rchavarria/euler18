defmodule Euler18 do

  def find_max_sum([]), do: 0
  def find_max_sum([ top | rows ]) do
    top |> Enum.at(0)
  end

end
