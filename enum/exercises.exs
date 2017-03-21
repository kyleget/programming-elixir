# ListsAndRecursion-7
defmodule MyList do
  def span(from, to), do: _span([to], from)
  defp _span(list = [from | _tail], from), do: list
  defp _span([ head | tail ], from) do
    _span([ head - 1, head | tail ], from)
  end

  def primes_up_to(n) do
    seive = span(2, n)
    seive -- (for x <- seive, y <- seive, x <= y, x * y <= n, do: x * y)
  end

end

IO.inspect MyList.primes_up_to(100)
