defmodule Main do
  defp gcd(a, 0), do: a
  defp gcd(a, b), do: gcd(b, rem(a, b))

  defp lcm(a, b) do
    div(a * b, gcd(a, b))
  end

  defp lcm_list([x]), do: x
  defp lcm_list([x | xs]), do: lcm(x, lcm_list(xs))

  def smallest_multiple do
    lcm_list(Enum.to_list(1..20))
  end
end
