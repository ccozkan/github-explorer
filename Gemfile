source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.6"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "pry-byebug"
  gem "pry-doc"
  gem "pry-rails"
  gem "rspec-rails", "~> 6.0.0"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem "httparty", require: false
