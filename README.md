# AbstractMethod

[Abstract
methods](https://en.wikipedia.org/wiki/Method_(computer_programming)#Abstract_methods)
are methods in base classes that lack an implementation but are supposed to be
defined in sub classes. It is an error if an abstract method is ever called

## Usage

AbstractMethod monkey-patches Kernel to add the method `abstract_method` that
raise an AbstractMethodError exception when called. It is intendend to be used
in one-line declarations of abstract methods:

```ruby
  require 'abstract_method'

  class A
    def method_to_be_defined_later = abstract_method
  end
```

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add abstract_method

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install abstract_method

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/abstract_method.
