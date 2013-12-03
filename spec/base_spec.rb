require 'spec_helper'

describe MoipV2::Base do  
  describe ".user" do
    subject{ MoipV2::Base.user }
    before{ MoipV2.api_token = 'api_token' }
    it{ should eq MoipV2.api_token }
  end

  describe ".password" do
    subject{ MoipV2::Base.password }
    before{ MoipV2.api_key = 'api_key' }
    it{ should eq MoipV2.api_key }
  end
end

