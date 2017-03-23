defmodule MyString do
  # StringsAndBinaries-1
  def only_ascii(str), do: Enum.all?(str, fn c -> c in ? ..?~ end)

  # StringsAndBinaries-2
  def anagram?(word1, word2) do
    Enum.sort(word1) === Enum.sort(word2)
  end

  # StringsAndBinaries-4
  #def calculate(equation_str) do
  #  String.split(equation_str, ' ')
  #end
end

# StringsAndBinaries-3
IO.inspect ['cat' | 'dog']
# Question: Why does iex print 'cat' as a string, but 'dog' as individual numbers
# Answer: Because head of the list is a list itself [?c, ?a, ?t]

IO.inspect MyString.only_ascii('helllo')  # True
IO.inspect MyString.only_ascii('👌©')  # False
IO.inspect MyString.anagram?('cinema', 'iceman')  # True
IO.inspect MyString.anagram?('taco', 'burrito')  # False
IO.inspect MyString.calculate('123 + 456')
