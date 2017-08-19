# Translookout
This is the Translookout's ruby client.
The Translookout is helpful to monitor your users.
[In details](http://www.translookout.work/)
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translookout'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translookout

## Usage
First you need to make an instance
Now available for free.

```ruby
Translookout::Translookout.new("free")
```
Then if you want to check the users photo whether contains adult or not,you need to use `image_judgment?`method.

What can you know through this?
You can know `adult_score` and adult or not in this api `true`or `false`,but also if the image is adult this api will make it null so `checked_image`will be null,if not do nothing just respond `adult_score`,`true`or`false`,and `checked_image`which is original image.

```ruby 
test=Translookout::Translookout.new("free")
response=test.image_judgment?("https://www.reduceimages.com/img/image-after.jpg")
puts response
=>{"checked_image"=>"https://www.reduceimages.com/img/image-after.jpg", "isadult"=>false, "adult_score"=>0.044976815581321716}
```

```ruby
test=Translookout::Translookout.new("free")
response=test.message_judgment?("message",["message"])
puts response
=>{"checked_message"=>"*******"}
```
First argument is the user's message as a String
Second argument is the forbidden words as an Array
Third is option if you want to make user's one null,you need to specify false but you want the default you don't need that. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/NishidaRyu416/translookout-ruby This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Translookout project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/NishidaRyu416/translookout-ruby).
