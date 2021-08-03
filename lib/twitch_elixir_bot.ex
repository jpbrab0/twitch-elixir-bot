defmodule TwitchElixirBot do
  use TMI.Handler

  @moduledoc """
  All the commands of the bot.
  """

  @impl true
  def handle_message("!" <> command, sender, chat) do
    case command do
      "ping" -> TMI.message(chat, "🎾 Pong")
      "sociais" -> TMI.message(chat, "Todas as minhas redes sociais -> https://links.jpres.dev")
      "salve" -> TMI.message(chat, "salve #{sender}")
      _ -> TMI.message(chat, "Talvez você escreveu o nome do comando errado, ou ele não existe.")
    end
  end

  def handle_message(message, sender, chat) do
    Logger.debug("Message in #{chat} from #{sender}: #{message}")
  end
end
