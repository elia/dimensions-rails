# Dimensions::Rails

[![Build Status](https://secure.travis-ci.org/elia/dimensions-rails.png?branch=master)](http://travis-ci.org/elia/dimensions-rails)

```erb
<%= image_tag 'logo.png' %>
```

```html
<img src="/assets/logo.png" width="230" height="80">
```

It uses [dimensions](http://github.com/sstephenson/dimensions) by [@sstephenson](http://github.com/sstephenson) to automatically add size attributes to image tags, which speeds browser rendering.


### How does this improve browser rendering?

See: https://developers.google.com/speed/docs/best-practices/rendering#SpecifyImageDimensions


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dimensions-rails'
```


## Usage

Just use the `image_tag` rails helper as usual, the `:size` options will be magically added by `dimensions-rails` elves!

If for any reason you need to disable `dimensions-rails` just pass `:dimensions => false` to `image_tag`.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push -u origin my-new-feature`)
5. Create new Pull Request
