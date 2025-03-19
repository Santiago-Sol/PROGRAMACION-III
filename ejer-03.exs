defmodule Main do
  def main do
    calificaciones = %{"carlos" => [10,5.6,7], "pedro" => [9,8,6], "luis" => [8,5.5,0]}

    nombre_estudiante = "Ingrese el nombre del estudiante: "
    |> Util.ingresar(:texto)

    evaluacion = evaluar_proyecto(calificaciones, nombre_estudiante)

    generar_mensaje(evaluacion)

    |> Util.mostrar_mensaje
  end

  defp evaluar_proyecto(calificaciones, nombre_estudiante) do
    case Enum.filter(calificaciones, fn {k,_} -> k == nombre_estudiante end) do
      [{_, calificaciones}] ->
        promedio = Enum.sum(calificaciones) / Enum.count(calificaciones)
        |> Float.round(2)
        estado = if promedio >= 6.0 do
          "Aprobado"
        else
          "Reprobado"
        end
        {estado, promedio}
      _ -> {0, "no encontrado"}
    end
  end

   defp generar_mensaje(evaluacion) do
    case evaluacion do
      {estado, promedio} -> "El estado del proyecto es: #{estado}, el promedio es: #{promedio}"
      _ -> {0, "no encontrado"}
    end
  end

end

Main.main()
