require File.expand_path('../lib/fanyi_api/version.rb', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'fanyi_api'
  s.version     = FanyiAPI::VERSION
  s.date        = '2014-10-28'
  s.summary     = "English to Chinese Translation APIs Wrapper in Ruby."
  s.description = <<-DESC
    An English to Chinese translation tool using open APIs, such as Youdao, iCiba, etc.
  DESC
  s.authors     = ["Qi He"]
  s.email       = 'qhe@heyook.com'
  s.homepage    = 'http://github.com/he9qi/fanyi_api'
  s.license     = 'MIT'

  s.files         = Dir.glob('lib/**/*.rb')
  s.require_paths = ['lib']
  s.test_files    = Dir.glob('spec/**/*.rb')

  s.add_runtime_dependency "faraday", '~> 0.9.0'
  s.add_runtime_dependency "extlib", '~> 0.9.16'
end
