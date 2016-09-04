defmodule Sparkel.Mixfile do
  use Mix.Project

  def project do
    [app: :sparkel,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    []
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp description do
    """
    Sparkel is a port of spark for Elixir and lets you create ASCII sparklines
    """
  end

  defp package do
    [
     name: :sparkel,
     files: ["config", "lib", "test", "mix.exs", "README.md", "LICENSE"],
     maintainers: ["Dimitar Kostov"],
     licenses: ["MIT License"],
     links: %{"GitHub" => "https://github.com/mytrile/sparkel",
              "Docs" => "https://github.com/mytrile/sparkel"}]
  end

end
