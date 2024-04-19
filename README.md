# luhn-ruby

Very simple library to calculate and validate Luhn numbers .

## Installation

Add to your Gemfile:

    gem 'luhn_ruby'

And then :

    $ bundle

Or install it:

    $ gem install luhn-ruby

## Usage

``` ruby
require 'luhn'

number = '4111111111111111'

Luhn.valid? number
# => true
```

## Contributing
 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/luhn_ruby/blob/master/CODE_OF_CONDUCT.md).

1. Fork it
2. Create your feature branch (`git checkout -b new-feature`)
3. Commit your changes (`git commit -am 'Added some New feature'`)
4. Push to the branch (`git push origin new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LuhnRuby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/luhn_ruby/blob/master/CODE_OF_CONDUCT.md).
