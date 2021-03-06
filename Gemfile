source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'byebug'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# gem coffee-script-source version 1.8.0 eingebaut, da 1.9.1.1 nicht mit Windows zu funktionieren scheint
gem 'coffee-script-source', '1.8.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

# Rack-Cache als Vorspeicher für Heroku
gem 'rack-cache'

# Devise for User Authentification
gem 'devise'

# cancancan for Authorization
gem 'cancancan'

# will_paginate for pagination of e.g. comments
gem 'will_paginate'

# factories for testing
gem 'factory_girl_rails'

# Stripe Payment solution
gem 'stripe'

# Security Shit + nokogiri for fixes
gem 'brakeman'
gem 'nokogiri'

# Storing Caches
gem 'dalli'
gem 'redis-rails'