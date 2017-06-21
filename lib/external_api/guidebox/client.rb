module External_API
  module Guidebox
    class Client
      include HTTParty
      base_uri "http://api-public.guidebox.com/v2"
      default_params api_key: API_KEYS['guidebox']['key']

      def shows
        self.class.get("/shows")
      end
    end
  end
end
