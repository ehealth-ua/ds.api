defmodule DigitalSignatureUmbrella.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      preferred_cli_env: [coveralls: :test],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [
      {:distillery, "~> 2.0", runtime: false, override: true},
      {:credo, "~> 0.9.3", only: [:dev, :test]},
      {:excoveralls, "~> 0.8.1", only: [:dev, :test]},
      {:plug_logger_json, "~> 0.5"},
      {:ecto_logger_json, "~> 0.1"},
      {:confex, "~> 3.3"},
      {:jvalid, "~> 0.6.0"},
      {:jason, "~> 1.0"},
      {:nex_json_schema, ">= 0.7.2"},
      {:toml, "~> 0.3.0"}
    ]
  end

  defp aliases do
    [test: ["ecto.create", "ecto.migrate", "test"]]
  end
end
