defmodule BetterEuler18 do

  # helps making the code sorter: you'll see `at(0)` instead of `Enum.at(0)`
  import Enum, only: [reverse: 1, at: 2, max: 1, map: 2, reduce: 3, zip: 2, chunk_every: 4]

  def find_max_sum([]), do: 0
  def find_max_sum(piramid) do
    piramid = piramid |> reverse()
    accumulator = piramid |> at(0) |> map(&zero/1)

    piramid
    |> reduce(accumulator, &merge_level/2)
    |> at(0)
  end

  defp merge_level(level, accumulator) do
    level
    |> zip(accumulator)
    |> map(&simple_sum/1)
    |> chunk_every(2, 1, [])
    |> map(&max/1)
  end

  defp zero(_), do: 0

  defp simple_sum({ a, b }), do: a + b

end

