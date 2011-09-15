source 'http://rubygems.org'

gem 'rack', '~> 1.2.2' # Security fix
gem 'rails', '3.0.7'

gem 'devise', :git => 'http://github.com/plataformatec/devise.git', :tag => 'v1.3.4'
gem 'sl_data', :path => 'lib/sl_data'
gem 'daffy', '= 0.0.2', :git => 'http://github.com/mikemaltese/daffy.git'
gem 'sl_webdav', :path => 'lib/sl_webdav'
gem 'sl_workflow_data', :path => 'lib/sl_workflow_data'
gem 'workflow-conductor', :require => 'workflow/conductor', :path => 'lib/workflow-conductor'

# gem 'sunspot_rails', '~> 1.2.1'
gem 'sunspot_rails', :git => "http://github.com/mikemaltese/sunspot.git"

group :development do
	gem 'sqlite3-ruby', :require => 'sqlite3'
end
group :production do
	gem 'mysql2'
end

# workflow
gem 'paperclip', '~> 2.3'
gem 'unicorn'
gem "htmldiff", :git => "http://github.com/mikemaltese/htmldiff.git"
gem "high_voltage"
gem "responders"
gem "inherited_resources", '~> 1.2.1'
gem 'yaml_db'
gem 'memcache-client'
gem 'pg'
gem 'paper_trail'
