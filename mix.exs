defmodule Viex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :viex,
      version: "0.2.0",
      elixir: "~> 1.4",
      description: "Elixir package to validate European VAT numbers with the VIES service.",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),

      # Documentation
      name: "Viex",
      source_url: "https://github.com/marceldegraaf/viex",
      homepage_url: "http://github.com/marceldegraaf/viex",
      docs: [main: "Viex", extras: ["README.md"]]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.5"},
      {:floki, "~> 0.13"},
      {:sweet_xml, "~> 0.6.5"},
      {:exvcr, github: "blendmedia/exvcr", ref: "5258f4f1f866f128a19e8ce5ff5e22e6198c2a18", only: :test},
      {:ex_doc, "~> 0.14", only: :dev},
      {:earmark, "~> 1.1", only: :dev},
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:mox, "~> 0.4", only: [:test]}
    ]
  end

  defp package do
    [
      licenses: ["WTFPL"],
      maintainers: ["Marcel de Graaf <mail@marceldegraaf.net>"],
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      links: %{
        "GitHub" => "https://github.com/marceldegraaf/viex",
        "Documentation" => "https://hexdocs.pm/viex"
      }
    ]
  end
end
