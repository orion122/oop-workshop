require 'oop/workshop/version'
require 'net/http'

module Oop::Workshop
  class GeoData
    URL = 'http://ip-api.com/json'

    attr_reader :ip

    def initialize(ip = nil)
      @ip = ip
    end

    def get_url
      @ip.nil? ? URL : "#{URL}/#{@ip}"
    end

    def get_data
      uri = URI.parse(get_url)
      request = Net::HTTP::Get.new(uri)

      response = Net::HTTP.start(uri.host, uri.port) do |http|
        http.request(request)
      end

      response.body
    end
  end
end
