defmodule Examples.Modules.EvenDetector do
  require Integer

  def print_when_even(number) do
    if Integer.is_even(number) do
      IO.puts "It's even!"
    end
  end
end
