defmodule Vivid.PNG.ShapeToPng do
  use Vivid
  alias Vivid.PNG

  def to_png(shape, file) do
    bounds = Bounds.bounds(shape)
    width  = bounds |> Bounds.width  |> round |> Kernel.+(3)
    height = bounds |> Bounds.height |> round |> Kernel.+(3)

    frame = Frame.init(width, height)

    shape = shape
      |> Transform.center(frame)
      |> Transform.apply

    frame
    |> Frame.push(shape, RGBA.black)
    |> PNG.to_png(file)
  end
end

Enum.each(~w(Arc Box Circle Group Line Path Polygon), fn mod ->
  mod = Module.concat(Vivid, mod)
  defimpl Vivid.PNG, for: mod do
    def to_png(shape, file), do: Vivid.PNG.ShapeToPng.to_png(shape, file)
  end
end)