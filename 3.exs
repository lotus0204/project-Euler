defmodule PrimeFactor do
  def biggesPrimeFactor(n) when n > 1 do
    biggest_prime_factor(n, 2)
  end

  defp biggest_prime_factor(1, max_factor), do: max_factor
  defp biggest_prime_factor(n, max_factor) do
    case rem(n, max_factor) do
      0 -> biggest_prime_factor(div(n, max_factor), max_factor)
      _ -> biggest_prime_factor(n, max_factor + 1)
    end
  end
end
