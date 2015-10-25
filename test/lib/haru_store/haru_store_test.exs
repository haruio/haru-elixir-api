defmodule HaruStore.StoreTest do
  use ExUnit.Case, async: true

  alias HaruStore

  test "Start HaruStore application" do
    HaruStore.start [],[] 

    reply = HaruStore.Proxy.cmd  :redis, [via: HaruStore.pool_name()], "ping"

    assert reply == "PONG" 
  end
end
