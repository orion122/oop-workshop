RSpec.describe Oop::Workshop do
  class HttpClient
    def self.get(uri)
      { "city": 'Mountain View' }.to_json
    end
  end

  let(:ip) { '8.8.8.8' }
  let(:city) { 'Mountain View' }
  let(:geo_data) { Oop::Workshop::GeoData.new(http_client: HttpClient) }

  describe '#get_data' do
    context "don't pass ip" do
      subject { geo_data.get_data['city'] }
      it { is_expected.to eq('Mountain View') }
    end

    context 'pass ip' do
      subject { geo_data.get_data(ip: ip)['city'] }
      it { is_expected.to eq('Mountain View') }
    end
  end
end
