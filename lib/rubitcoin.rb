require 'open-uri'
require 'json'
require 'pry'
class Rubitcoin
  END_POINT = "https://btc-e.com/api/3/ticker"
  class << self
    def fetch(currency=:usd)
      Hash.[] raw_fetch(currency).map { |k, v| [k.to_sym, v.to_f] }
    end

    %w|high low avg vol vol_cur last buy sell updated|.each do |mth|
      define_method(mth) do |currency=:usd|
        raw_fetch(currency)[mth].to_f
      end
    end

    private
      def raw_fetch(currency)
        rslt = JSON.load open "#{END_POINT}/btc_#{currency}"
        rslt.values.first
      end
  end
end
