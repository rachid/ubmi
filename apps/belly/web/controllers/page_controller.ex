defmodule Belly.PageController do
  use Belly.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
