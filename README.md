# AdministrateFieldPassword

All you need to integrate Password with Administrate.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-password'
```

And then execute:
```
$ bundle
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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DisruptiveAngels/administrate-field-password.
