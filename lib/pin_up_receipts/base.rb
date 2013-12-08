module Pin
  ##
  # This class sets up a few things like the base URL and provides a few utility methods to be shared between classes.
  class ReceiptBase
    include HTTParty
    include Pin

    ##
    # Create a new Pin instance
    # Args:
    #  key: Your Pin secret key
    #  env: The environment you want to use. Leave blank for live and pass in :test for test
    # An error is raised if an invalid env is passed in.
    # def initialize(key = "", env = :live)
    #   @key = key
    #   env = env.to_sym
    #   @@auth = {username: key, password: ''}
    #   @@base_url = if env == :live
    #     "https://api.pin.net.au/1/"
    #   elsif env == :test
    #     "https://test-api.pin.net.au/1/"
    #   else
    #     raise "'env' option must be :live or :test. Leave blank for live payments"
    #   end
    # end

    ##
    # Provides access to your key if needed
    def self.root
      File.expand_path '../../..', __FILE__
    end

  end
end