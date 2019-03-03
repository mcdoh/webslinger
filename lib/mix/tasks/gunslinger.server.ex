defmodule Mix.Tasks.Gunslinger.Server do
  use Mix.Task
  require Logger

  def run(args) do
    Logger.info("Starting Gunslinger")
    Mix.Tasks.Run.run(args ++ ["--no-halt"])
  end
end
