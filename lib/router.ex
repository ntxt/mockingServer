  defmodule HttpServer.Router do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> put_resp_header("content-type", "text/html; charset=utf-8")
    |> put_resp_header("Server", "MockingServ")
    |> send_resp(200, Templater.read(%{title: "cześć", text: "blabla"}))
  end
end
