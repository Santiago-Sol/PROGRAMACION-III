defmodule TrasponerMatriz do
  def trasponer([]), do: []
  def trasponer([[] | _]), do: []
  def trasponer(matriz) do
    columna = Enum.map(matriz, fn[h | t] -> h end)
    resto = Enum.map(matriz, fn[h | t] -> t end)

    [columna | trasponer(resto)]
  end

end
IO.puts("La matriz traspuesta es:")
IO.inspect(TrasponerMatriz.trasponer([[1, 2, 3], [4, 5, 6], [7, 8, 9]]))
