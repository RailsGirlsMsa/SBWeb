source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'carrierwave'
gem 'mini_magick'
gem 'devise'
gem 'therubyracer'
gem 'ckeditor', '~> 4.1'
gem 'simple_form', '~> 3.2'
gem 'bootstrap-sass', '~> 3.3'
gem 'rails', '~> 5.0.3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem "font-awesome-rails" # Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '~> 0.20.0'
  gem 'rails_12factor', '~> 0.0.3'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
