require_relative 'ServiceProvider_New'
require_relative 'data'
require_relative 'print'

RSpec.describe ServiceProvider do
  describe '#initialize' do
    it 'initializes each instance of ServiceProvider' do
      service_provider = ServiceProvider.new('Provider', 1231111111, ['Gaming', 'Swimming'], {
          "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
      })
      expect(service_provider.name).to eq('Provider')
      expect(service_provider.phone_number).to eq(1231111111)
      expect(service_provider.services[0]).to eq('Gaming')
      expect(service_provider.services[1]).to eq('Swimming')
    end
  end
  describe '#add_service_provider' do
    it 'adds_service_provider' do
      expect{DshsData.instance.add_service_provider('Mark', 1231111111, ['Gaming', 'Swimming'],{
          "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
      })}.to output('Mark has successfully been added to service providers!'.colorize(:green ).colorize( :background => :black) + "\n").to_stdout
    end
    it 'will not add an existing service provider' do
      expect{DshsData.instance.add_service_provider('Mark', 1231111111, ['Gaming', 'Swimming'],{
          "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
          "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
      })}.to output('Mark Provider of that name already added, try another.'.colorize(:green ).colorize( :background => :black) + "\n").to_stdout
    end
  end
  describe '#remove_service_provider' do
    it 'removes service provider' do
      expect{DshsData.instance.remove_service_provider('Provider')}.to output("Provider has successfully been removed from service providers".colorize(:green ).colorize( :background => :black) + "\n").to_stdout
    end
  end
  describe '#get_all_service_provider_names' do
    it 'returns all service provider names' do
      expect(DshsData.instance.get_all_service_provider_names).to eq(['jon','daenerys','arya', 'Mark'])
    end
  end
end
