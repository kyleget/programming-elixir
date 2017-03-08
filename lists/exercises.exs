defmodule MyList do
  # ListsAndRecursion-0
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  # ListsAndRecursion-1
  def mapsum([], _), do: 0
  def mapsum([ head | tail ], func) do
    func.(head) + mapsum(tail, func)
  end

  # ListsAndRecursion-2
  def max([head | tail]), do: _max(tail, head)
  defp _max([], high), do: high
  defp _max([head | tail], high) when head > high, do: _max(tail, head)
  defp _max([_head | tail], high), do: _max(tail, high)

  # ListsAndRecursion-3
  def caesar([], _n), do: []
  def caesar([head | tail], n) when head + n > ?z do
    [head + n - 26 | caesar(tail, n)]
  end
  def caesar([head | tail], n) do
    [head + n | caesar(tail, n)]
  end

end
