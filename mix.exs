defmodule KhepriBench.MixProject do
  use Mix.Project

  def project do
    [
      app: :khepri_bench,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:khepri, git: "https://github.com/rabbitmq/khepri.git", tag: "main"},
      {:benchee, git: "https://github.com/bencheeorg/benchee.git", tag: "main", override: true},
      {:stream_data, "~> 0.5.0"},
      {:benchee_markdown, "~> 0.2"}
    ]
  end
end
