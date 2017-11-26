require 'appium_lib'
require 'pry'
require 'rspec'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
    "platformName": "Android",
    "deviceName": "pixel-emulator",
    "app": "/Users/tech-a53/Downloads/budgetwatch.apk"
    }
  }
end

