defmodule Plugtutorial.Router do
  use Plug.Router

  plug(Plug.Parsers, parsers: [:urlencoded, :multipart])

  plug(
    Plugtutorial.Plug.VerifyRequest,
    fields: ["content", "mimetype"],
    paths: ["/upload"]
  )

  plug(:match)
  plug(:dispatch)

  get("/", do: send_resp(conn, 200, "Welcome!"))
  match(_, do: send_resp(conn, 404, "Oops!"))
end
