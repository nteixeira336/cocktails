require_relative "./cocktails/version"
require 'pry'
require 'nokogiri'
require_relative './cocktails/cocktails'
require_relative './cocktails/cocktails_controller'
require_relative './cocktails/api'

module Cocktails
  class Error < StandardError; end
  # Your code goes here...
end
