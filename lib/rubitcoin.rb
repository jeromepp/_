require 'open-uri'
require 'json'

class Rubitcoin
  END_POINT = "https://www.bitstamp.net/api/ticker/"
  class << self
    def fetch
      Hash.[] raw_fetch.map { |k, v| [k.to_sym, v.to_f] }
    end

    %w|high low bid ask volume last timestamp|.each do |mth|
      define_method(mth) do
        raw_fetch[mth].to_f
      end
    end

    private
      def raw_fetch
        JSON.load open END_POINT
      end
  end
end
