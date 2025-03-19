defmodule Main do
  def main do
    inventario = %{"papas" => 10, "manzanas" => 20, "peras" => 30}

    producto = "Ingrese el nombre del producto: "
    |> Util.ingresar(:texto)

    cantidad = "Ingrese la cantidad : "
    |> Util.ingresar(:entero)

    inventario_actualizado = actualizar_inventario(inventario, producto, cantidad)

    generar_mensaje(inventario_actualizado)

    |> Util.mostrar_mensaje

  end

  defp actualizar_inventario(inventario, producto, cantidad) do
    case Enum.find(inventario, fn {producto_actual, _} -> producto == producto_actual end) do
      {_, stock} ->
        if cantidad <= stock do
          Map.put(inventario, producto, stock - cantidad)
        else
          "Stock insuficiente"
        end
        _ -> "Producto no encontrado"

    end
  end

  defp generar_mensaje(inventario_actualizado) do
    case inventario_actualizado do
      "Stock insuficiente" -> "Stock insuficiente"
      "Producto no encontrado" -> "Producto no encontrado"
      _ -> "El inventario actualizado es: #{inspect(inventario_actualizado)}"
    end
  end
end


Main.main()
