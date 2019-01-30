require 'rspec'
require_relative '../Generator'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end