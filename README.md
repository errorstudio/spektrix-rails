# Spektrix::Rails

A collection of stuff to make it easier to hook Spektrix into your Rails project.

## Installation

Add this line to your application's Gemfile:

    gem 'spektrix-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spektrix-rails

## Newsletter Signups

### Controller and view generator
This gem includes a controller mixin which can handle the responses from Spektrix's newsletter signup endpoint.

```
rails g spektrix:rails:newsletter_signups_controller
```

Your new controller will be in `/app/controllers/newsletter_signups_controller` and be available in the routes on `/newsletter`.

You will probably want to specify a template to render your form and any messages coming back from Spektrix:
 
 ```
 # in your newly-generated newsletter signups controller
 
 class NewsletterSignupsController < ApplicationController
    layout "path/to/your/layout"
 end
 ```
 
### Newsletter Signup endpoint helper
You might want to have an omnipresent newsletter signup form. To make it easier to make one, there's a helper method called `spektrix_signup_path` you can use in your views to generate the path to POST to. 
 
## Spektrix Iframes

### Helper methods for URLs
There are some standard things you'll want to put into iframes:

* account page
* basket page
* checkout page
* instance booking process

There are some helpers to help with that:

* `account_iframe_url`
* `basket_iframe_url`
* `checkout_iframe_url`
* `instance_booking_iframe_url` (requires an instance ID)

### Iframe partial
There's a standard Spektrix iframe, so it's in a partial in this gem:

```
#in your view
<%= render partial: 'spektrix/rails/iframe', locals: {url: "https://something"} %>
```
