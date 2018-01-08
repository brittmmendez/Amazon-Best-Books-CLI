# BestBooks

Welcome to my Best-Books gem! This gem was designed to help me stay on track with my new years resolution! I would like to read at least 1 book a month.  So, I created an application that provides a CLI to view Amazon's weekly top 20 best sellers. From this list, I can then select a book and see the author, how long it's been on the list, see the rating and summary, read an interactive  sample, and download the Audible version.    

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'best_books'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install best_books

## Usage

Once you run: ./best_books/bin/best-books
you will be greeted and given the list of top 20 books.
You can then input the number that represents the book you’d like more information on

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'brittmmendez'/best_books.
