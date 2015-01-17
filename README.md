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

# USD is default currency.
Rubitcoin.fetch
#=> {:high=>220.0, :low=>196.0, :avg=>208.0, :vol=>4663985.33289, :vol_cur=>22407.9454, :last=>210.01, :buy=>210.01, :sell=>209.925, :updated=>1421464571.0}

Rubitcoin.high
#=> 223.15

Rubitcoin.last
#=> 222.15

Rubitcoin.fetch(:rur)
#=> {:high=>15120.05664, :low=>13800.0, :avg=>14460.02832, :vol=>5735982.89998, :vol_cur=>394.4822, :last=>14600.0, :buy=>14640.0, :sell=>14445.4708, :updated=>1421464501.0}

Rubitcoin.high(:rur)
#=> 15120.05664

# Rubitcoin.call is alias to Rubitcoin.fetch
Rubitcoin.(:eur)
#=> {:high=>193.09383, :low=>173.13251, :avg=>183.11317, :vol=>21602.3727, :vol_cur=>117.53392, :last=>184.96301, :buy=>184.96301, :sell=>183.09709, :updated=>1421465049.0}
....
```
## Contributing

1. Fork it ( https://github.com/[my-github-username]/Rubitcoin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
