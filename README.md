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

In your Dashboard `ATTRIBUTE_TYPES` use the field type `PasswordField`. i.e.
```ruby
ATTRIBUTE_TYPES = {
  images_files: FieldPassword
}
```

By default all `Password` options are false, you can set them to true like this:
```ruby
ATTRIBUTE_TYPES = {
  images_files: FieldPassword.with_options(direct: true, presigned: true, multiple: true)
}
```

If in you are displaying the password field on your forms, add this on you `UserController`
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
MIT License

