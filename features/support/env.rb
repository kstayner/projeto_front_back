require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'cucumber'
require 'httparty'
require 'site_prism'
require 'yaml'
require 'selenium-webdriver'
require 'resolv-replace'

require_relative '../../fixtures/factories/posts_factory.rb'
ENVIRONMENT = YAML.load_file('./config/environment.yml')
USER_DATA = YAML.load_file('./config/user_data.yml')
JSONDATA = YAML.load_file('./fixtures/templates/json_data.yml')

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
		Capybara::Selenium::Driver.new(app, browser: :chrome)
end
