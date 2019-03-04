defmodule Webslinger.View do
  defmacro __using__(_) do
    quote do
      import Webslinger.View
    end
  end

  @root_path "lib/webslinger/templates"

  defmacro deftemplate(template_name, function_name) do
    template_path = Path.join(@root_path, template_name)

    quote do
      require EEx

      EEx.function_from_file(
        :def,
        unquote(function_name),
        unquote(template_path),
        [:assigns]
      )
    end
  end
end
