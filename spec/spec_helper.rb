require 'pathname'
require 'rubygems'
 
gem 'rspec', '>=1.1.12'
require 'spec'
 
gem 'dm-core', '0.9.11'
require 'dm-core'

require Pathname(__FILE__).dirname.parent.expand_path + 'lib/dm-form_friendly_integer'

begin
  DataMapper.setup(:default,'sqlite3::memory:')
  Object.const_set('ADAPTER', :sqlite)
rescue Exception => e
  Object.const_set('ADAPTER', nil)
  warn "Could not load do_sqlite: #{e}"
end
