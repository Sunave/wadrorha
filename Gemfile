source 'https://rubygems.org'

ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'bootstrap-sass'
# Bootswatch themes for Bootstrap
gem 'bootswatch-rails'

# Font Awesome for icons
gem 'font-awesome-sass'

# Devise for user management
gem 'devise'

group :development, :test do
  gem 'sqlite3'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'better_errors'

  gem 'rspec-rails', '~> 3.0'

  # FactoryGirl generates default factories when scaffolding. If this is a problem, move this
  # to test group only.
  gem 'factory_girl_rails'

  # Rspec-Guard-Growl automated testing
  gem 'guard-rspec'
  gem 'growl'
  gem 'ruby_gntp'
end

# For OS X and Rspec-Guard-Growl, as adviced
# in http://www.johnplummer.com/rails/heroku-error-conditional-rbfsevent-gem.html
# On non-OSX-systems need to run 'bundle install --without darwin' once.
# 'heroku config:add BUNDLE_WITHOUT="development test darwin"' or similar
# also necessary for deployment.
group :test, :darwin do
  gem 'rb-fsevent'
end

group :development do
  gem 'rails_layout'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'simplecov', require: false
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end