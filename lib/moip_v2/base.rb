module MoipV2
  class Base < ActiveResource::Base
    def self.user
      MoipV2.api_token
    end

    def self.password
      MoipV2.api_key
    end

    self.include_format_in_path = false
  end
end

