module MoipV2
  module Configuration
    VALID_CONNECTION_KEYS = [:endpoint, :user_agent, :method].freeze
    VALID_OPTIONS_KEYS    = [:api_secret, :api_key].freeze
    VALID_CONFIG_KEYS     = VALID_CONNECTION_KEYS + VALID_OPTIONS_KEYS
 
    DEFAULT_ENDPOINT    = 'http://awesome.dev/api'
    DEFAULT_METHOD      = :get
    DEFAULT_USER_AGENT  = "Awesome API Ruby Gem #{MoipV2::VERSION}".freeze
 
    DEFAULT_API_KEY     = nil
    DEFAULT_API_SECRET  = nil
 
    # Build accessor methods for every config options so we can do this, for example:
    #   Awesome.format = <img src="http://s2.wp.com/wp-includes/images/smilies/icon_mad.gif?m=1129645325g" alt=":x" class="wp-smiley"> ml
    attr_accessor *VALID_CONFIG_KEYS
 
    # Make sure we have the default values set when we get 'extended'
    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end 

    def options
      Hash[ * VALID_CONFIG_KEYS.map { |key| [key, send(key)] }.flatten ]
    end

    def reset
      self.endpoint   = DEFAULT_ENDPOINT
      self.method     = DEFAULT_METHOD
      self.user_agent = DEFAULT_USER_AGENT

      self.api_key    = DEFAULT_API_KEY
      self.api_secret = DEFAULT_API_SECRET
    end

  end # Configuration
end
