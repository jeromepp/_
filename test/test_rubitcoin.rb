require 'minitest_helper'

class TestRubitcoin < MiniTest::Unit::TestCase
  def test_usd
    assert_instance_of Hash, Rubitcoin.fetch
    assert_instance_of Float, Rubitcoin.high
    assert_instance_of Float, Rubitcoin.avg
    assert_instance_of Float, Rubitcoin.vol
    assert_instance_of Float, Rubitcoin.vol_cur
    assert_instance_of Float, Rubitcoin.last
    assert_instance_of Float, Rubitcoin.buy
    assert_instance_of Float, Rubitcoin.sell
    assert_instance_of Float, Rubitcoin.updated
  end

  def test_rur
    assert_instance_of Hash,  Rubitcoin.fetch(:rur)
    assert_instance_of Float, Rubitcoin.high(:rur)
    assert_instance_of Float, Rubitcoin.avg(:rur)
    assert_instance_of Float, Rubitcoin.vol(:rur)
    assert_instance_of Float, Rubitcoin.vol_cur(:rur)
    assert_instance_of Float, Rubitcoin.last(:rur)
    assert_instance_of Float, Rubitcoin.buy(:rur)
    assert_instance_of Float, Rubitcoin.sell(:rur)
    assert_instance_of Float, Rubitcoin.updated(:rur)
  end

  def test_call_mth
    assert_instance_of Hash,  Rubitcoin.fetch(:eur)
  end
end
