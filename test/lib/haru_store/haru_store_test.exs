defmodule HaruStore.StoreTest do
  use ExUnit.Case, async: true

  alias HaruStore

  test "Start HaruStore application" do
    HaruStore.start 1, 2
    assert 1 == 1
  end
end
