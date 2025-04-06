defmodule SumarElemMatriz do
  def sumar_elem_matriz([]), do: 0

  def sumar_elem_matriz([fila | resto]) do
    sumar_fila(fila) + sumar_elem_matriz(resto)
  end
  defp sumar_fila([]), do: 0
  defp sumar_fila([h | t]) do
    h + sumar_fila(t)
  end
end
IO.puts("La suma de los elementos de la matriz es #{SumarElemMatriz.sumar_elem_matriz([[1, 2, 3], [4, 5, 6], [7, 8, 9]])}")
