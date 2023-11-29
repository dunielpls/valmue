defmodule Valmue.DDNSTest do
  use ExUnit.Case
  doctest Valmue.DDNS

  test "greets the world" do
    assert Valmue.DDNS.hello() == :world
  end
end
