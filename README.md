# Sudo Mode

Sudo Mode helps you easily require a password confirmation before any controller action of your choice.

This is inspired (heavily) by [Github's implementation](https://github.com/blog/1513-introducing-github-sudo-mode).

## Installation

Add `sudo_mode` to your Gemfile:

```ruby
gem "sudo_mode"
```

And install:

```bash
$ bundle install
```

## Usage

```ruby
class FooController
  require_password_confirmation_for :destroy

  def destroy
    # Bad things happen here
  end
end
```

## Internationalization

Override these keys in your locale files:

```yaml
sudo_mode:
    confirmation:
      new:
        confirmation_heading: "Confirm your Password"
        check_password_button: "Check"
```

## Limitations

- Requires [`has_secure_password`](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html)
- Requires `ApplicationController` to have a `current_user` method
- Styling for the confirmation page is not taken care of

## Credits

[![Nilenso](https://s3.amazonaws.com/nilenso/nilenso.png)](http://nilenso.com)
