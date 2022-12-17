defmodule Mrvl.MixProject do
  use Mix.Project

  def project do
    [
      app: :mrvl,
      version: "0.2.5",
      description: "Generates user access tokens",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto]
    ]
  end

  defp deps do
    [

    ]
  end
end
