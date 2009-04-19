require 'pathname'
require 'rubygems'
require 'rake'
require 'echoe'

ROOT = Pathname(__FILE__).dirname.expand_path

Echoe.new('dm-form_friendly_integer') do |p|
  p.description               = "A DataMapper Integer type which behaves well on forms"
  p.url                       = "http://github.com/roovo/dm-form_friendly_integer"
  p.author                    = "roovo"
  p.email                     = "roovo@roovoweb.com"
  p.ignore_pattern            = ["tmp/*", "script/*"]
  p.development_dependencies  = []
  p.runtime_dependencies      = ['dm-core']
end

Pathname.glob(ROOT.join('tasks/**/*.rb').to_s).each { |f| require f }
