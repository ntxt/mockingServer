  defmodule HttpServer.Router do
    use Plug.Router
    plug Plug.Logger
    plug Plug.Static, at: "/css", from: "public/css"
    plug :match
    plug :dispatch

  import Logger

  get "/*path" do

    vars = %{title: "Mocking Server Dashboard", text: "dashboard body", footer: conn.request_path}

    conn
    |> put_resp_content_type("text/plain")
    |> put_resp_header("content-type", "text/html; charset=utf-8")
    |> put_resp_header("Server", "MockingServ")
    |> send_resp(200, Templater.read(vars))
  end

  match(_, do: send_resp(conn, 404, "Oops!"))
end
