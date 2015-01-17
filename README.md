# Rubitcoin

Super simple Bitcoin ticker.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubitcoin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubitcoin

## How to

```rb
require 'rubitcoin'

Rubitcoin.fetch
#=> {:high=>223.15, :last=>208.39, :timestamp=>1421461371.0, :bid=>207.95, :vwap=>210.62, :volume=>32705.34241534, :low=>198.04, :ask=>208.21}

Rubitcoin.high
#=> 223.15

```
## Contributing

1. Fork it ( https://github.com/[my-github-username]/Rubitcoin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
