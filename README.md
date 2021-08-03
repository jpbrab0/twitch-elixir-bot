# TwitchElixirBot

Twitch.tv bot made in elixir for my [twitch channel :P](https://twitch.tv/jpbrab0)

## Installation

1 - Clone the github repository for your local machine with git:

With SSH:
```git
git clone git@github.com:jpbrab0/twitch-elixir-bot.git
```

With HTTPS:
```git
git clone https://github.com/jpbrab0/twitch-elixir-bot.git
```

## Running the project

You need installed on your machine: elixir and erlang.

1 - Rename the .exemple.env 

```bash
mv .exemple.env .env
```

2 - Change the .env content for the correct data.

3 - Install all dependencies

```bash
mix deps.get
``` 

4 - Run this command for compile the project
```bash
iex -S mix
``` 

5 - Type in the interactive shell

```bash
TwitchElixirBot.Application.start_bot
```

And the bot is running if everything is right :)