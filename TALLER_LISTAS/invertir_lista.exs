defmodule InvertirLista do
  def invertir([]), do: []
  def invertir([h | t]) do
    invertir(t) ++ [h]
  end

end
IO.puts("La lista invertida es:")
IO.inspect(InvertirLista.invertir([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
