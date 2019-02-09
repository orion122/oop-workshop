require 'oop/workshop/version'
require 'open-uri'

module Oop::Workshop
  class GeoData
    URL = 'http://ip-api.com/json'

    attr_reader :url

    def initialize(ip = '')
      @url = "#{URL}/#{ip}"
    end

    def get_data
      open(@url).read
    end
  end
end
