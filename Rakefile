# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "pin_up_receipts"
  gem.homepage = "http://github.com/dNitza/pin_up_receipts"
  gem.license = "MIT"
  gem.summary = %Q{A receipts addon for pin_up}
  gem.description = %Q{A receipts addon for pin_up}
  gem.email = "dnitza@gmail.com"
  gem.authors = ["Daniel Nitsikopoulos"]
  # dependencies defined in Gemfile
  gem.files.exclude(Dir.glob('spec/vcr/*.yml'))
  gem.add_dependency "httparty"
  gem.add_dependency "pin_up"  
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "pin_up #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
