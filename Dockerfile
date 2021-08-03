FROM bitwalker/alpine-elixir:latest
WORKDIR /twitch_elixir_bot
COPY . .
RUN mix deps.get
CMD ["iex", "-S", "mix"]