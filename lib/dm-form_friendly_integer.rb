require 'rubygems'
require 'pathname'

gem     'dm-core',  '>=0.9.11'
require 'dm-core'

require Pathname(__FILE__).dirname.expand_path / 'dm-types' / 'form_friendly_integer'
