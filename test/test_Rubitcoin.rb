require 'minitest_helper'

class TestRubitcoin < MiniTest::Unit::TestCase
  def test_general
    assert_instance_of Hash, Rubitcoin.fetch
    assert_instance_of Float, Rubitcoin.high
    assert_instance_of Float, Rubitcoin.low
    assert_instance_of Float, Rubitcoin.bid
    assert_instance_of Float, Rubitcoin.ask
    assert_instance_of Float, Rubitcoin.volume
    assert_instance_of Float, Rubitcoin.last
    assert_instance_of Float, Rubitcoin.timestamp
  end
end
