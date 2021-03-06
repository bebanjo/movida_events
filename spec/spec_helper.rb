# frozen_string_literal: true

require 'webmock/rspec'

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

require 'movida_events'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
end
