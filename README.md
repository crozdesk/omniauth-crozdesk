# OmniAuth Crozdesk

Adds an OmniAuth strategy for <a href="https://crozdesk.com">Crozdesk</a>.

## Installation

Add this line to your application's `Gemfile`:
```ruby
gem 'omniauth-crozdesk'
```

Then run `bundle install`.

Alternatively you can install it using `gem install omniauth-crozdesk`

## Usage

This gem provides the `OmniAuth::Strategies::Crozdesk` rack middleware that integrates with OmniAuth, for more details read the docs at https://github.com/intridea/omniauth.

Here's a quick example of how to active the strategy in a rails app, add the following lines to `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :crozdesk, ENV['CROZDESK_KEY'], ENV['CROZDESK_SECRET']
end
```

For a full example, check out the sample apps below:
[Sinatra](https://github.com/crozdesk/sinatra-oauth2-example)
[Rails](https://github.com/crozdesk/rails-oauth2-example)

## Auth Hash

The following is an example "auth hash" returned via `request.env['omniauth.auth']`:

```ruby
{
  provider: 'crozdesk',
  uid: '1234567',
  info: {
    first_name: 'John',
    last_name: 'Doe',
    name: 'John Doe',
    email: 'john@doe.com'
  },
  credentials: {
    ... # OAuth2 token value and expiry status
  },
  extra: {
    raw_info: {
      id: '1234567',
      first_name: 'John',
      last_name: 'Doe',
      name: 'John Doe',
      email: 'john@doe.com'
    }
  }
}
```

## License

The MIT License (MIT)

Copyright (c) 2015 Crozdesk Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
