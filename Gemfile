source 'http://rubygems.org'


gem 'rails', '6.0.3.5'
gem 'bundler', '>= 1.0.0'
gem "chef", ">= 16.0.257", :require => false

gem "nokogiri", "1.10.8"

#Security
gem 'devise', '4.7.1'
gem 'devise-mongo_mapper', :git => 'git://github.com/collectiveidea/devise-mongo_mapper'
gem 'devise_invitable', '1.3.5'

#Authentication
gem 'omniauth', '>= 1.3.2'
gem 'twitter', '4.0.0'

#Mongo
gem 'mongo_mapper', :branch => 'rails3', :git => 'git://github.com/jnunemaker/mongomapper.git'
gem 'bson_ext', '1.1'
gem 'bson', '3.0.4'

#Views
gem 'haml', '>= 5.0.0'
gem 'will_paginate', '3.0.5'

#Uncatagorized
gem 'roxml', :git => 'git://github.com/Empact/roxml.git'
gem 'addressable', :require => 'addressable/uri'
gem 'json', '>= 2.3.0'
gem 'http_accept_language', :git => 'git://github.com/iain/http_accept_language.git'

#Standards
gem 'pubsubhubbub', '>= 0.1.1'

#EventMachine
gem 'em-http-request',:ref => 'bf62d67fc72d6e701be5',  :git => 'git://github.com/igrigorik/em-http-request.git', :require => 'em-http'
gem 'thin', '>= 1.2.7'

#Websocket
gem 'em-websocket', :git => 'git://github.com/igrigorik/em-websocket'
gem 'magent', :git => 'git://github.com/dcu/magent.git'

#File uploading
gem 'carrierwave', :git => 'git://github.com/rsofaer/carrierwave.git' , :branch => 'master' #Untested mongomapper branch
gem 'mini_magick', '>= 4.9.4'
gem 'aws', '>= 2.3.26'
gem 'fastercsv', :require => false
gem 'jammit'

#Backups
gem "cloudfiles", :require => false

group :test, :development do
  gem 'factory_girl_rails', '>= 1.0'
  gem 'ruby-debug19' if RUBY_VERSION.include? "1.9"
  gem 'ruby-debug' if RUBY_VERSION.include? "1.8"
  gem 'launchy', '>= 0.3.7'
end

group :test do
  gem 'capybara', '~> 0.3.9'
  gem 'cucumber-rails', '0.3.2'
  gem 'rspec', '>= 2.0.0'
  gem 'rspec-rails', '>= 2.0.0'
  gem 'mocha', '>= 0.9.9'
  gem 'database_cleaner', '0.5.2'
  gem 'webmock', '>= 1.6.1', :require => false
  gem 'jasmine', :path => 'vendor/gems/jasmine', :require => false
  gem 'mongrel', :require => false if RUBY_VERSION.include? "1.8"
  gem 'rspec-instafail', :require => false
end

group :deployment do
  #gem 'sprinkle', :git => 'git://github.com/rsofaer/sprinkle.git'
end
