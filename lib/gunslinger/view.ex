defmodule Gunslinger.View do
  defmacro __using__(_) do
    quote do
      import Gunslinger.View
    end
  end

  @root_path "lib/gunslinger/templates"

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
