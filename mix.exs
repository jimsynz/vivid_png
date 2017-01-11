defmodule Vivid.PNG.Mixfile do
  use Mix.Project

  def project do
    [app: :vivid_png,
     version: "0.1.0",
     description: description,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :png]]
  end

  def description do
    """
    Generate PNG files with Vivid.
    """
  end

  def package do
    [
      maintainers: [ "James Harton <james@messagerocket.co>" ],
      licenses: [ "MIT" ],
      links: %{
        "Source" => "https://github.com/jamesotron/vivid_png.ex"
      }
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:png,   "~> 0.1.1"},
      {:vivid, ">= 0.2.0"}
    ]
  end
end
