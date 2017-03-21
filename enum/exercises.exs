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

# ListsAndRecursion-8
tax_rates = [ NC: 0.075, TX: 0.08 ]
orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount:  35.50 ],
  [ id: 125, ship_to: :TX, net_amount:  24.00 ],
  [ id: 126, ship_to: :TX, net_amount:  44.80 ],
  [ id: 127, ship_to: :NC, net_amount:  25.00 ],
  [ id: 128, ship_to: :MA, net_amount:  10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 120, ship_to: :NC, net_amount:  50.00 ]
]

defmodule Tax do
  def calculate(orders, tax_rates) do
    orders |> Enum.map(&add_total(&1, tax_rates))
  end

  def add_total(order = [id: _, ship_to: ship_to, net_amount: net_amount], tax_rates) do
    tax_rate = Keyword.get(tax_rates, ship_to, 0)
    total = net_amount * (1 + tax_rate)
    Keyword.put(order, :total, total)
  end
end

IO.inspect Tax.calculate(orders, tax_rates)
