defmodule Example do
  @author "Kyle Getrost"
  def get_author, do: @author
end

IO.puts Example.get_author()
