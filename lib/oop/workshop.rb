require 'oop/workshop/version'
require 'open-uri'
require 'json'

module Oop::Workshop
  class GeoData
    URL = 'http://ip-api.com/json'

    attr_accessor :data

    def initialize
    end

    def get_data(ip = '')
      url = "#{URL}/#{ip}"
      @data = JSON.parse(open(url).read)
      self
    end

    def get_city
      data['city']
    end

    def get_country
      data['country']
    end

    def get_countryCode
      data['countryCode']
    end

    def get_isp
      data['isp']
    end

    def get_lat
      data['lat']
    end

    def get_lon
      data['lon']
    end

    def get_org
      data['org']
    end

    def get_query
      data['query']
    end

    def get_region
      data['region']
    end

    def get_regionName
      data['regionName']
    end

    def get_status
      data['status']
    end

    def get_timezone
      data['timezone']
    end

    def get_zip
      data['zip']
    end
  end
end
