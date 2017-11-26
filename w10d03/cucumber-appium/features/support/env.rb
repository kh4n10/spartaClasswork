require 'appium_lib'
require 'cucumber'
require 'pry'
require 'rspec'
require 'require_all'
require_relative '../../lib/budget_app'

def opts
  {
   caps: {
    platformName: "Android",
    deviceName: "pixel-emulator",
   	app: "/Users/tech-a53/development/classwork/w10d03/cucumber-appium/lib/budgetwatch.apk"
   }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)