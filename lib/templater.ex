defmodule Templater do
  def read(dict) do
    {:ok, body} = File.read "templates/hello.tpl"
    Regex.replace( ~r/%{(\w+)}/, body, fn _, x -> "#{dict[String.to_atom(x)] || x}" end  )
  end
end
