defmodule Solution do
  {n, _} = Integer.parse(IO.read(:line))
  IO.puts List.to_string(List.duplicate("Hello World\n", n))
end
