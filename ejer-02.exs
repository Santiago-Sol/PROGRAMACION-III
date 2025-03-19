defmodule Main do
  def main do
    ventas = %{"dia 1" => 50000, "dia 2" => 100000, "dia 3" => 200000}

    analisis= analizar_ventas(ventas)

    generar_mensaje(analisis)

    |> Util.mostrar_mensaje
  end

  defp analizar_ventas(ventas) do
    total_ventas = Enum.reduce(ventas, 0, fn {_, ventas}, total ->
      total + ventas end)
    promedio_ventas = total_ventas / Enum.count(ventas)
    |> Float.round(2)

    dia_mejor_ventas = Enum.max(ventas)

    {total_ventas, promedio_ventas, dia_mejor_ventas}

  end

  defp generar_mensaje(analisis) do
    "El analisis de ventas es: #{inspect(analisis)}"
  end

end

Main.main()
