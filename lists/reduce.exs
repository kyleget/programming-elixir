defmodule MyList do
  def reduce([], value, _), do: value
  def reduce([ head | tail ], value, func) do
    reduce(tail, fun.(head, value), func)
  end
end
