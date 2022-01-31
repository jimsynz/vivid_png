defmodule Vivid.PNG.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :vivid_png,
      version: @version,
      description: description(),
      elixir: "~> 1.3",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  def description do
    """
    Generate PNG files with Vivid.
    """
  end

  def package do
    [
      maintainers: ["James Harton <james@harton.nz>"],
      licenses: ["MIT"],
      links: %{
        "Source" => "https://gitlab.com/jimsy/vivid_png.ex"
      }
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.28.0", only: ~w[dev test]a},
      {:credo, "~> 1.6", only: ~w[dev test]a, runtime: false},
      {:git_ops, "~> 2.4", only: ~w[dev test]a, runtime: false},
      {:png, "~> 0.2"},
      {:vivid, "~> 0.4"}
    ]
  end
end
