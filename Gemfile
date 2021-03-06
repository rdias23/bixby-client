source "https://rubygems.org"

gem 'bixby-common'
# gem 'bixby-common', :path => '../common'

gem 'multi_json'
gem 'oj'
gem 'httpi'
gem 'curb'
gem 'mixlib-shellout'
gem 'fuzzy_file_finder'

gem "api-auth", :git => "https://github.com/chetan/api_auth.git", :branch => "bixby"

group :development do

  gem "yard"
  gem "redcarpet", :platforms => [:mri, :rbx]

  gem "bundler"
  gem "jeweler", :git => "https://github.com/chetan/jeweler.git", :branch => "bixby"
  gem "pry"
  gem "debugger",     :platforms => [:mri_19, :mri_20]
  gem "debugger-pry", :require => "debugger/pry", :platforms => [:mri_19, :mri_20]

  gem "test_guard", :git => "https://github.com/chetan/test_guard.git"
  gem 'rb-inotify', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-fchange', :require => false

end

group :test do
  gem "simplecov",  :platforms => [:mri_19, :mri_20, :rbx], :git => "https://github.com/chetan/simplecov.git", :branch => "inline_nocov"
  gem "micron",     :github => "chetan/micron"
  gem "coveralls",  :require => false

  gem "webmock", :require => false
  gem "mocha",   :require => false
  gem "psych"
end
