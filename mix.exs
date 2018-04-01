defmodule HttpServer.Mixproject do
  use Mix.Project

  def project do
    [
      app: :mockingserver,
      version: "1.0.0",
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:logger, :cowboy, :plug],
      mod: {HttpServer, []}
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.0"}
    ]
  end
end
