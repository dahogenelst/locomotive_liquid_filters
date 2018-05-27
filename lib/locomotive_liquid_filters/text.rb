require 'liquid'
require 'nokogiri'

module LocomotiveLiquidFilters
  module Text
    def xpath(input, xpath)
      results = Nokogiri::HTML(input).xpath(xpath.to_s)
      results.to_html if results.any?
    end
  end
end
