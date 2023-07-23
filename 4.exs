defmodule Palindorme do
  def biggestPalindrome() do
    list =
      for a <- 999..100, b <- 999..100, is_palindrome(a * b) do
        a*b
      end
    Enum.max(list)
  end

  defp is_palindrome(n) do
    n = to_string(n)
    n == String.reverse(n)
  end
end

# 조금더 좋은 방법이 있을 것 같아...
