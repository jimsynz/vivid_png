defmodule Vivid.PNG.Mixfile do
  @moduledoc false
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
      deps: deps(),
      source_url: "https://harton.dev/james/vivid_png",
      homepage_url: "https://harton.dev/james/vivid_png",
      docs: [
        extras: ["README.md", "CHANGELOG.md"]
      ]
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
        "Source" => "https://harton.dev/james/vivid_png",
        "GitHub" => "https://github.com/jimsynz/vivid_png",
        "Changelog" => "https://docs.harton.nz/james/vivid_png/changelog.html",
        "Sponsor" => "https://github.com/sponsors/jimsynz"
      }
    ]
  end

  defp deps do
    devtestopts = [only: ~w[dev test]a, runtime: false]

    [
      {:credo, "~> 1.6", devtestopts},
      {:dialyxir, "~> 1.3", devtestopts},
      {:doctor, "~> 0.22.0", devtestopts},
      {:ex_check, "~> 0.16.0", devtestopts},
      {:ex_doc, ">= 0.28.1", devtestopts},
      {:git_ops, "~> 2.4", devtestopts},
      {:mix_audit, "~> 2.1", devtestopts},
      {:png, "~> 0.2"},
      {:vivid, "~> 0.4"}
    ]
  end
end
