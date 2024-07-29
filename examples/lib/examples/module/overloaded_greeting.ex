defmodule Examples.Modules.OverloadedGreeting do
  def hello do
    "Hello"
  end

  def hello("Mike") do
    "Hello Mike, Hello Joe"
  end

  def hello(name) do
    "Hello #{name}"
  end

  def hi(name \\ "Reader") do
    "Hi #{name}"
  end
end
