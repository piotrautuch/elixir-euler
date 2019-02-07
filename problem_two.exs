defmodule Problem do
  def fib(one \\ 1, two \\ 2, sum \\ 0)

  def fib(one,two,sum) when two <= 4000000 do
    cond do
      rem(two,2) == 0 ->
        fib(two, one + two, sum + two)
      true ->
        fib(two,one + two, sum)
    end
  end

  def fib(_one,two,sum) when two >= 4000000 do
    IO.puts sum
  end

end

Problem.fib()
