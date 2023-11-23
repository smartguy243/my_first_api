defmodule MyFirstApiTest do
  use ExUnit.Case
  doctest MyFirstApi

  test "greets the world" do
    assert MyFirstApi.hello() == :world
  end
end
