defmodule Problem do
  def multiple(x,sum,lim) when x < lim do
    cond do
      rem(x,5) == 0 or rem(x,3) == 0 ->
        multiple x+1, sum+x, lim
      true ->
        multiple x+1, sum, lim
    end
  end

  def multiple(x,sum, lim) when x == lim do
    IO.puts sum
  end

end

Problem.multiple(1,0,1000)
