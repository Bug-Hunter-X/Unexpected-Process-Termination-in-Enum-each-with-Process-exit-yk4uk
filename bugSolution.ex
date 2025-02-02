```elixir
list = [1, 2, 3, 4, 5]

# Solution using Enum.map
Enum.map(list, fn x ->
  if x == 3 do
    {:error, x}
  else
    {:ok, x}
  end
end) |> IO.inspect()

#Alternative solution using try/catch

try do
 Enum.each(list, fn x ->
  if x == 3 do
    throw(:kill)
  end
  IO.puts(x)
end)
rescue
  :kill -> IO.puts("Process was killed")
end
```