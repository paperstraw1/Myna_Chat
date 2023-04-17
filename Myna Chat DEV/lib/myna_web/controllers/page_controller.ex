defmodule MynaWeb.PageController do
  use MynaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  # see: github.com/dwyl/ping
  def ping(conn, params) do
    Ping.render_pixel(conn, params)
  end
end
