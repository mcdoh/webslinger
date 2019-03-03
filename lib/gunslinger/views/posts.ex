defmodule Gunslinger.Views.Posts do
  require EEx

  EEx.function_from_file(:def, :index, "lib/gunslinger/templates/posts/index.html.eex", [:assigns])
end
