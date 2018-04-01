defmodule HttpServer.Router2 do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get("/", do: send_resp(conn, 200, "cześć"))
  match(_, do: send_resp(conn, 404, "Oops!"))
end
