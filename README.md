# Jekyll::RubyConverter

This is the Jekyll plugin that adds {ruby|ルビ} syntax support.

## Installation

Add this line to your Jekyll project's Gemfile:

```ruby
gem 'jekyll-ruby_converter'
```

Also add the following to your `_config.yml`:

```yaml
plugins:
  - jekyll/ruby_converter
```

## Usage

Write ruby with following syntax in Markdown files, then they will be converted to HTML `<ruby>` tags:

- `{漢字|かんじ}`  => `<ruby>漢字<rt>かんじ</rt></ruby>`
- `{漢字|かん|じ}` => `<ruby>漢<rt>かん</rt>字<rt>じ</rt></ruby>`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fuji-nakahara/jekyll-ruby_converter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jekyll::RubyConverter project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/jekyll-ruby_converter/blob/master/CODE_OF_CONDUCT.md).
