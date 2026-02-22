import Config

config :friends, Friends.Repo,
  database: "friends_repo",
  username: "cvasu",
  password: "123",
  hostname: "localhost"

config :friends, ecto_repos: [Friends.Repo]
