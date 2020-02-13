require "./cocktails/version"
require 'pry'
require 'httparty'
require_relative './cocktails/cocktails'
require_relative './cocktails/cocktails_controller'
require_relative './cocktails/api'

module Cocktails
  class Error < StandardError; end
  # Your code goes here...
end
