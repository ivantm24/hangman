defmodule TextClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :test_client,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      included_applications: [ :hangman ],  # do not start hangman app when text_client starts
      extra_applications:    [ :logger  ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:hangman, path: "../hangman" },
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
