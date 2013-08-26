# Pipelining

A pipe takes an object and a block which contains methods to call on the object
in sequence.

## Installation

Add this line to your application's Gemfile:

    gem 'pipelining'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pipelining

## Usage

Use it like this:

```ruby

require "pipelining"

pipe [1,2,3] do
  reverse
  first
end
```

Returns the value 3.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
