# ModulesAndFunctions-4
defmodule Sum do
  def of(0), do: 0
  def of(n) do
    n + of(n-1)
  end
end

# ModulesAndFunctions-5
defmodule GCD do
  def of(x, 0), do: x
  def of(x, y), do: of(y, rem(x, y))
end

# ModulesAndFunctions-6
defmodule Chop do
  def guess(actual, low..high) do
    current = div(low + high, 2)
    IO.puts "Is it #{current}"
    _guess(actual, low..high, current)
  end
  defp _guess(actual, low..high, current) when actual === current do
    IO.puts "#{current}"
  end
  defp _guess(actual, low..high, current) when actual > current do
    guess(actual, current..high)
  end
  defp _guess(actual, low..high, current) when actual < current do
    guess(actual, low..current)
  end
end

Chop.guess(273, 1..1000)
Chop.guess(51028, 1..900000)
