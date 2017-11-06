require 'selenium-webdriver'
require 'rspec'
require_relative '../selenium_demoqa_registration'

RSpec.configure do |config|
  config.formatter = :documentation
end