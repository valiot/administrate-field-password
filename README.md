# AdministrateFieldPassword
[![Gem](https://img.shields.io/gem/v/administrate-field-password.svg)]()

All you need to integrate Password with Administrate.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-password'
```

And then execute:
```
$ bundle install
```

## Usage

In your Dashboard use the field type `Field::Password` for your password attribute in `ATTRIBUTE_TYPES` i.e.
```ruby
ATTRIBUTE_TYPES = {
  user_password: Field::Password
}
```
And then add the attribute to the `FORM_ATTRIBUTES` list.
```ruby
FORM_ATTRIBUTES = [
    # Some other attributes...
    :user_password
  ].freeze
```

If in you are displaying the password field on your forms, add this to your `UserController`
```ruby
module Admin
  class UsersController < Admin::ApplicationController
    def update
      params[:user].delete(:password) if params[:user][:password].blank?
      super
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DisruptiveAngels/administrate-field-password.

## License
[MIT License](https://github.com/DisruptiveAngels/administrate-field-password/blob/better_readme/LICENSE)

