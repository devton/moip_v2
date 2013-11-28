require 'spec_helper'\

describe MoipV2::Configuration do  
  MoipV2::Configuration::VALID_CONFIG_KEYS.each do |key|
    describe ".#{key}" do
      it 'should return the default value' do
        expect(MoipV2.send(key)).to eq MoipV2::Configuration.const_get("DEFAULT_#{key.upcase}")
      end
    end
  end

  describe '.configure' do
    after do
      MoipV2.reset
    end

    MoipV2::Configuration::VALID_CONFIG_KEYS.each do |key|
      it "should set the #{key}" do
        MoipV2.configure do |config|
          config.send("#{key}=", key)
          expect(MoipV2.send(key)).to eq key
        end
      end
    end
  end
end
