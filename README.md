# Vivid.PNG

[![Build Status](https://drone.harton.dev/api/badges/james/vivid_png/status.svg?ref=refs/heads/main)](https://drone.harton.dev/james/vivid_png)
[![Hex.pm](https://img.shields.io/hexpm/v/vivid_png.svg)](https://hex.pm/packages/vivid_png)

`Vivid.PNG` adds PNG generating support to [Vivid](https://hex.pm/packages/vivid),
a 2D rendering library implemented 100% in Elixir with no dependencies.

## Accessing on GitHub

This repository is [mirrored to GitHub](https://github.com/jimsynz/vivid_png.ex) from it's home on [harton.dev](https://harton.dev/james/vivid_png). Feel free to raise issues, etc, on GitHub.

## Installation

`Vivid.PNG` is [available in Hex](https://hex.pm/packages/vivid_png), the
package can be installed by adding `vivid_png` to your list of dependencies in
`mix.exs`:

```elixir
def deps do
  [
    {:vivid_png, "~> 0.2.0"}
  ]
end
```

Documentation for the latest release can be found on
[HexDocs](https://hexdocs.pm/vivid_png) and for the `main` branch on
[docs.harton.nz](https://docs.harton.nz/james/vivid_png).

## Github Mirror

This repository is mirrored [on Github](https://github.com/jimsynz/vivid_png)
from it's primary location [on my Forejo instance](https://harton.dev/james/vivid_png).
Feel free to raise issues and open PRs on Github.

## License

Source code is licensed under the terms of the MIT license, the text of which
is included in the `LICENSE` file in this distribution.

## Status

```elixir
use Vivid
alias Vivid.PNG

frame  = Frame.init(300,200)
text   = Font.line("seems to work")
         |> Transform.fill(frame)
         |> Transform.center(frame)
         |> Transform.apply
circle = Circle.init(Point.init(100, 100), 50)
box    = Box.init(Point.init(250,150), Point.init(275, 175))

frame
|> Frame.push(text,   RGBA.black)
|> Frame.push(circle, RGBA.init(1,0,0,0.5))
|> Frame.push(box,    RGBA.init(0,0,1, 0.75))
|> PNG.to_png("example.png")
```

![example.png](https://harton.dev/james/vivid_png/raw/branch/main/example.png)
