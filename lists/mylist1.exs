defmodule MyList do
  def add([]), do: []
  def add([head | tail]), do: [head + 1 | add(tail)]
  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]
end
