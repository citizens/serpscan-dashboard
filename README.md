# SERP Scan Dashboard

##### [SERP Scan](https://serpscan.com) tracks your website's search engine position for the keywords that matter to you.

The **serpscan-dashboard** gem is a Rails Engine for managing your keywords and viewing your rankings. Before you can use the gem you'll need a SERP Scan account (https://serpscan.com), and an api key which can be found on the accounts page. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'serpscan-dashboard'
```

And then execute:

$ bundle

Or install it yourself:

$ gem install serpscan-dashboard

## Usage

Set your API key. If you're using Rails you may want to place the code below in a file at config/initializers/serpscan.rb.

```ruby
Serpscan.api_key = 'YOUR API KEY'
```

Add the engine to your routes file:

```ruby
mount Serpscan::Dashboard::Engine => "/serpscan"
```
## Devise
To make the engine accessible only to authenticated users
```ruby
  authenticate :user do
    mount Serpscan::Dashboard::Engine => "/serpscan"
  end
 ```
 To make the engine accessible only to authenticated admin users
```ruby
  authenticate :user, lambda { |u| u.admin? } do
    mount Serpscan::Dashboard::Engine => "/serpscan"
  end
 ```

## Viewing the dashboard
Simply visit `/serpscan` 

## Preview
![Screenshot](/../screenshots/screenshots/example1.png?raw=true "Screenshot")
