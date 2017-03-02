break = fn -> IO.puts "********************" end

# Functions-1
list_concat = fn list1, list2 -> list1 ++ list2 end
sum = fn a, b, c -> a + b + c end
pair_tuple_to_list = fn {a, b} -> [a, b] end

IO.inspect list_concat.([:a, :b], [:c, :d])
IO.inspect sum.(1, 2, 3)
IO.inspect pair_tuple_to_list.({1234, 5678})

break.()

# Functions-2
fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

# Functions-3
fb_rem = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

IO.puts fb_rem.(10)
IO.puts fb_rem.(11)
IO.puts fb_rem.(12)
IO.puts fb_rem.(13)
IO.puts fb_rem.(14)
IO.puts fb_rem.(15)
IO.puts fb_rem.(16)

break.()

# Functions-4
prefix = fn first -> (fn second -> "#{first} #{second}" end) end

mrs = prefix.("Mrs.")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")

break.()

# Functions-5
IO.inspect Enum.map [1,2,3,4], &(&1 + 2)
Enum.each [1,2,3,4], &(IO.inspect &1)
