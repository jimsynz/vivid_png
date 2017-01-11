defimpl Vivid.PNG, for: Vivid.Frame do
  alias Vivid.{PNG, Frame}

  @moduledoc """
  Convert a Vivid frame into a PNG file.
  """

  @doc """
  Convert a Vivid frame into a PNG file.
  """
  @spec to_png(Frame.t, Path.t) :: :ok | {:error, any}
  def to_png(frame, file) do
    frame
    |> Frame.buffer(:horizontal)
    |> PNG.to_png(file)
  end
end