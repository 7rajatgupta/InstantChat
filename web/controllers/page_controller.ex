defmodule InstantChat.PageController do
  use InstantChat.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
