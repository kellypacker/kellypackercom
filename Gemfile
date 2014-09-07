source 'https://rubygems.org'

ruby "2.1.0"

gem 'rails', '4.1.1'
gem 'pg'
gem 'unicorn'

gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem "paperclip", "~> 4.1"
# gem 'simple_form', github: "plataformatec/simple_form", branch: "master"
gem 'jquery-rails'
gem 'aws-sdk'
# gem "activeadmin", :git => "git://github.com/gregbell/active_admin.git"
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'formtastic'
gem 'devise'
# gem "meta_search",    '>= 1.1.0.pre'

group :development do
  gem 'foreman'
  gem 'better_errors'
end

group :development, :test do
  gem 'debugger'
  gem 'dotenv-rails'
end

group :production do
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end