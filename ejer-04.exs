defmodule Main do
  def main do
    list = [1,2,3]
    result = Enum.map(list, fn x -> x * 2 end)
    IO.inspect(result)
  end
end
Main.main()
