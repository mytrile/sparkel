defmodule SparkelTest do
  use ExUnit.Case
  doctest Sparkel

  test "works like holman/spark" do
    assert Sparkel.sparkline([1, 2, 3, 4, 5, 6, 7, 8]) == "▁▂▃▄▅▆▇█"
    assert Sparkel.sparkline([1, 5, 22, 13, 5]) == "▁▂█▅▂"
    assert Sparkel.sparkline([5.5, 20]) == "▁█"
    assert Sparkel.sparkline([1, 2, 3, 4, 100, 5, 10, 20, 50, 300]) == "▁▁▁▁▃▁▁▁▂█"
    assert Sparkel.sparkline([1, 50, 100]) == "▁▄█"
    assert Sparkel.sparkline([2, 4, 8]) == "▁▃█"
    assert Sparkel.sparkline([0, 30, 55, 80, 33, 150]) == "▁▂▃▄▂█"
    assert Sparkel.sparkline([1, 2, 3, 4, 5]) == "▁▂▄▆█"
  end

  test "works with equal numbers" do
    assert Sparkel.sparkline([10, 10]) == "▁▁"
  end

end
