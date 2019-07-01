defmodule Vivid.PNG.Mixfile do
  use Mix.Project

  def project do
    [
      app: :vivid_png,
      version: "0.2.0",
      description: description(),
      elixir: "~> 1.3",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger, :png]]
  end

  def description do
    """
    Generate PNG files with Vivid.
    """
  end

  def package do
    [
      maintainers: ["James Harton <james@automat.nz>"],
      licenses: ["MIT"],
      links: %{
        "Source" => "https://gitlab.com/jimsy/vivid_png.ex"
      }
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:credo, "~> 1.1", only: ~w(dev test)a, runtime: false},
      {:inch_ex, "~> 2.0", only: ~w(dev test)a, runtime: false},
      {:png, "~> 0.1"},
      {:vivid, "~> 0.4"}
    ]
  end
end
