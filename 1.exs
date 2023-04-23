defmodule SumMultiples do
  def sumBelow(n) do
    1..(n-1)
    |> Enum.filter(fn x -> rem(x, 3) == 0 or rem(x, 5) == 0 end)
    |> Enum.sum()
  end
end
