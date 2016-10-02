defmodule Sally.PageController do
  use Sally.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
