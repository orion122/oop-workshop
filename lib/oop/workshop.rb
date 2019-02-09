require 'oop/workshop/version'
require 'net/http'
require 'json'

module Oop::Workshop
  class GeoData
    URL = 'http://ip-api.com/json/'

    attr_reader :http_client

    def initialize(http_client: Net::HTTP)
      @http_client = http_client
    end

    def get_data(ip: '')
      uri = URI(URL + ip)
      response = http_client.get(uri)
      JSON.parse(response)
    end
  end
end
