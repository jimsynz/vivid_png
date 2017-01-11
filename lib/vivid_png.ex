defprotocol Vivid.PNG do
  alias Vivid.{Shape, Frame, Buffer}
  @moduledoc """
  Turn a Vivid frame or shape into a PNG
  """

  @doc """
  Turn a frame or shape into a PNG file.
  """
  @spec to_png(Shape.t | Frame.t | Buffer.t, Path.t) :: :ok | {:error, any}
  def to_png(shape, file)
end
