defmodule GraphedTodoWeb.PageController do
  use GraphedTodoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
