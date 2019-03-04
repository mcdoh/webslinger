defmodule Mix.Tasks.Webslinger.Server do
  use Mix.Task
  require Logger

  def run(args) do
    Logger.info("Starting Webslinger")
    Mix.Tasks.Run.run(args ++ ["--no-halt"])
  end
end
