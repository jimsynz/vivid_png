defimpl Vivid.PNG, for: Vivid.Frame do
  alias Vivid.{PNG, Frame}

  def to_png(frame, file) do
    frame
    |> Frame.buffer(:horizontal)
    |> PNG.to_png(file)
  end
end