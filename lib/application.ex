defmodule TwitchElixirBot.Application do
  @moduledoc """
  All the configuration of the bot
  """

  def start_bot do
    config = [
      user: Dotenv.get("BOT_NAME"),
      pass: Dotenv.get("OAUTH"),
      chats: [Dotenv.get("CHANNEL_NAME")],
      handler: TwitchElixirBot,
      capabilities: ['membership']
    ]

    TMI.supervisor_start_link(config)

    case TMI.is_connected? do
      true ->
        TMI.message("#jpbrab0", "o bot está online")
    end
  end
end
