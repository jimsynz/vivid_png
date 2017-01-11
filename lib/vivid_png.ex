defprotocol Vivid.PNG do
  alias Vivid.Shape
  @moduledoc """
  Turn a Vivid frame or shape into a PNG
  """

  @doc """
  Turn a frame or shape into a PNG file.
  """
  @spec to_png(Shape.t, Path.t) :: :ok | {:error, any}
  def to_png(shape, file)
end
