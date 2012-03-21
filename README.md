# Togg #

Togg implements feature toggle for Ruby on Rails applications. Martin Fowler has a good article that discusses feature toggle:
http://martinfowler.com/bliki/FeatureToggle.html

## Usage ##

Include `togg` in the Gemfile for your Rails 3 application:

```ruby
gem 'togg'
```

To use `togg`, simply create a YAML configuration file that lists your application features, then wrap your feature-specific code in blocks.

## Example ##

The settings file is based on the `yettings` gem. You define features for each of your Rails environments:

```yaml
# File: config/yettings/togg.yml

defaults: &defaults
  some_active_feature: true
  some_pending_feature: false

development:
  <<: *defaults

test:
  <<: *defaults

production:
  <<: *defaults
```

Then, in your Rails application, wrap feature-specific code like this:

```ruby

Togg.le(:some_active_feature) do
  puts "Look at this feature go"
end

Togg.le(:some_pending_feature) do
  puts "Wait, this feature isn't ready yet"
end
```

The features with keys that evaluate to `true` in your yaml file get executed, and the others don't.
