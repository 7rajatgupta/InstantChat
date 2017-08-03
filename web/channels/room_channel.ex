#Created to handle the user channel.
defmodule InstantChat.RoomChannel do
  use Phoenix.Channel

  #To join the chat lobby:
  def join("rooms:lobby", message, socket)do
    {:ok, socket}
  end
  def join(_room, _param, _socket)do
    {:error, %{reason: "Oops !! You can only enter the lobby !"}}
  end
  #Handle the messages:
  def handle_in("new_message", body, socket)do
    broadcast! socket, "new_message", body
    {:noreply, socket}
  end
end
