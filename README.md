# Gem::Springclean

Supply a Gemfile or a Gemfile.lock and cleanup all the unwanted ones.

## Installation

Add this line to your application's Gemfile:

    gem 'gem-springclean'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gem-springclean

## Usage

After installation, run the command:
    $ gem help springclean

To use the command, you can pass in two options: `--exclude` and `--include`

### --exclude
The `--exclude` parameter uninstalls all the gems on the system except the
ones provided in the Gemfile.lock.

### --only
The `--only` parameter uninstalls all the gems that are only in the Gemfile.lock.
Rest of the gems are untouched.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/gem-springclean/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
