defmodule Fibonacci do
  def sum_even_fibonacci(max) when max >= 2 do
    {1, 2}  # 피보나치 수열의 첫 번째 두 수인 1과 2를 생성한다.
    |> Stream.unfold(fn {fib1, fib2} -> {fib1, {fib2, fib1 + fib2}} end)  # 무한 스트림을 생성한다.
    |> Enum.take_while(fn fib -> fib <= max end)  # max보다 작은 항들만 남긴다.
    |> Enum.filter(fn fib -> rem(fib, 2) == 0 end)  # 짝수 값만 필터링한다.
    |> Enum.sum()  # 필터링된 결과를 모두 더한다.
  end
end
#Stream.unfold/2는 두 개의 인자를 받는다. 첫 번째 인자는 초기 상태이고 두 번째 인자는 상태를 다음 상태로 변환하는 함수이다.
