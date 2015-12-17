module Soapforce
  class Configuration
    attr_accessor :client_id
    attr_accessor :version
    attr_accessor :organization_id

    def initialize
      @client_id = nil
    end
  end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end

end