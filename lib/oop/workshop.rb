require 'oop/workshop/version'
require 'net/http'
require 'json'

module Oop::Workshop
  class GeoData
    URL = 'http://ip-api.com/json/'

    attr_reader :data

    def initialize(http_client: Net::HTTP)
      @http_client = http_client
    end

    def get_data(ip: '', http_client: @http_client)
      uri = URI(URL + ip)
      response = http_client.get(uri)
      @data = JSON.parse(response)
      self
    end

    def get_city
      data['city']
    end

    def get_country
      data['country']
    end

    def get_country_code
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

    def get_region_name
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
