require 'rspec'
require 'faker'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require_relative 'support/helpers.rb'
require_relative 'support/request_helper.rb'

RSpec.configure do |config|
  config.include Helpers
  config.include Requests

  config.color = true
  config.formatter = :documentation

  @environment = ENV['ENVIRONMENT'] || 'prod'

  CONFIG = YAML.load_file(File.dirname(__FILE__) + "/support/environments/#{@environment}.yml")
  puts "Ambiente >> #{@environment}"

  config.before(:all) do
    class BaseApi
      include HTTParty
      base_uri CONFIG['base_uri']
    end
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
