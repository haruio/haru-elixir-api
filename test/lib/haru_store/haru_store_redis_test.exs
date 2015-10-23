defmodule HaruStore.RedisStoreTest do
  use ExUnit.Case, async: true

  alias HaruStore.Store.Redis

  setup do
    {:ok, conn} = Redis.start_link
    {:ok, conn: conn}
  end

  test "PING, PONG", %{conn: conn} do
    assert Redis.ping(conn) == "PONG"
  end
end
