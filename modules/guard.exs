defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end
  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is an atom"
  end
  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} is a list"
  end
  def what_is(x) when is_boolean(x) do
    IO.puts "#{x} is a boolean"
  end
end

Guard.what_is(1234)
Guard.what_is(true)
Guard.what_is(:ah)
Guard.what_is([1,2,3])
