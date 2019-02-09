RSpec.describe Oop::Workshop do
  let(:ip) { '8.8.8.8' }
  let(:city) { 'Mountain View' }
  let(:geo_data_class) { Oop::Workshop::GeoData }
  let(:geo_data_pass_ip) { geo_data_class.new(ip) }
  let(:geo_data_dont_pass_ip) { geo_data_class.new }

  describe '#get_data' do
    context "don't pass ip" do
      subject { geo_data_dont_pass_ip.get_data }
      it { is_expected.to include('as', 'city', 'country', 'countryCode', 'isp', \
                              'lat', 'lon', 'org', 'query', 'region', \
                              'regionName', 'status', 'timezone', 'zip') }
    end

    context 'pass ip' do
      subject { geo_data_pass_ip.get_data }
      it { is_expected.to include(ip) }
      it { is_expected.to include(city) }
    end
  end
end
