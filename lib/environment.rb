require_relative "./cocktails/version"
require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative './cocktails/cocktails'
require_relative './cocktails/cocktails_controller'
require_relative './cocktails/scraper'

module Cocktails
  class Error < StandardError; end
  # Your code goes here...
end
