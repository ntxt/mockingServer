defmodule HttpServer do
  use Application
  require Logger

  def start(_type, _args) do
    port = 8080
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, HttpServer.Router, [], port: port)
    ]

    Logger.info("Starting application on port: #{port}")
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
