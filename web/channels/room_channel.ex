#Created to handle the user channel.
defmodule InstantChat.RoomChannel do
  use Phoenix.Channel

  #Method to join the chat lobby:
  def join("rooms:lobby", message, socket)do
    {:ok, socket}
  end
  def join(_room, _param, _socket)do
    {:error, %{reason: "Oops !! You can only enter the lobby !"}}
  end
end
