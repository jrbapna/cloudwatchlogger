dir = File.dirname(__FILE__)
require File.expand_path(File.join(dir, 'lib', 'cloudwatchlogger', 'version'))

Gem::Specification.new do |s|
  s.name              = 'cloudwatchlogger'
  s.version           = CloudWatchLogger::VERSION
  s.date              = Time.now
  s.summary           = 'AWS CloudWatchLogs compatiable logger for ruby.'
  s.description       = 'Logger => CloudWatchLogs'

  s.license           = "http://opensource.org/licenses/MIT"

  s.authors           = ["Zane Shannon"]
  s.email             = 'zcs@amvse.com'
  s.homepage          = 'http://github.com/amvse/cloudwatchlogger'

  s.files             = %w{ README.md Gemfile LICENSE cloudwatchlogger.gemspec } + Dir["lib/**/*.rb"]
  s.require_paths     = ['lib']
  s.test_files        = Dir["spec/**/*.rb"]

  s.required_ruby_version     = '>= 1.8.6'
  s.required_rubygems_version = '>= 1.3.6'

  s.add_runtime_dependency 'uuid', '~> 2'
  s.add_runtime_dependency 'multi_json', '~> 1'
  s.add_runtime_dependency 'aws-sdk-cloudwatchlogs', '~> 1'
end