defmodule MyList do
  def add([]), do: []
  def add([ head | tail ]), do: [head + 1 | add(tail)]
  def square([]), do: []
  def square([ head | tail ]), do: [head * head | square(tail)]
  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]
end
