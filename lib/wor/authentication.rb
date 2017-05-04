require_relative 'authentication/controller'
require_relative 'authentication/decoded_token'
require_relative 'authentication/exceptions'
require_relative 'authentication/sessions_controller'
require_relative 'authentication/token_manager'
require_relative 'authentication/version'

module Wor
  module Authentication
    @config = {
      expiration_days: 2,
      maximum_useful_days: 30
    }

    def self.configure
      yield self
    end

    def self.expiration_days=(expiration_days)
      @config[:expiration_days] = expiration_days if expiration_days.is_a? Integer
    end

    def self.maximum_useful_days=(maximum_useful_days)
      @config[:maximum_useful_days] = maximum_useful_days if maximum_useful_days.is_a? Integer
    end

    def self.config
      @config
    end

    def self.expiration_days
      @config[:expiration_days]
    end

    def self.maximum_useful_days
      @config[:maximum_useful_days]
    end
  end
end
