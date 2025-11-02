import Config

config :friends, Friends.Repo,
  database: "friends_repo",
  username: "mamuns",
  password: "321",
  hostname: "localhost"

config :friends, ecto_repos: [Friends.Repo]
