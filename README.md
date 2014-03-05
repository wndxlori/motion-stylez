# Motion::Stylez

A super basic RubyMotion stylesheet library based off Todd Werth's [RMQ library](https://github.com/infinitered/cdq) that lets you centralize your view styles.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-stylez'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-stylez

## Usage

You can use the `z` method from anywhere in your application.

First you will need to set your stylesheet.

```ruby
z.stylesheet = MyStylesheet.new
```

Then create your stylesheet and it's styles.

```ruby
class MyStylesheet
  def bw_big(v)
    v.backgroundColor = UIColor.blackColor
    v.textColor = UIColor.whiteColor
    v.font = UIFont.systemFontOfSize(36)
    v.frame = [[20, 40], [280, 50]]
    v.textAlignment = UITextAlignmentCenter
  end

  def white_bg(v)
    v.backgroundColor = UIColor.whiteColor
  end
end
```

Then you can use the `z` method to create your styled view, which you can also pass a block to. For example, use in a controller.

```ruby
class MyViewController < UIViewController
  def viewDidLoad
    super
 
    z.stylesheet = MyStylesheet.new # works absolutely anywhere
 
    z(self.view).style(:white_bg)
 
    self.view.addSubview(z(UILabel).style(:bw_big) do |v|
      v.text = "Testing"
    end)
 
  end
end
```

## Contributing

1. Fork it ( http://github.com/FluffyJack/motion-stylez/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
