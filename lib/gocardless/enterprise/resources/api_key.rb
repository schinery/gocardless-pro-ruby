

# encoding: utf-8
#
# WARNING: Do not edit by hand, this file was generated by Crank:
#
#   https://github.com/gocardless/crank
#
require 'uri'

module GoCardless
  module Resources
  # <a name="api_key_not_active"></a>API keys are designed to be used by any
  # integrations you build. You should generate a key and then use it to make
  # requests to the API and set the webhook URL for that integration. They do
  # not expire, but can be disabled.
    class ApiKey
      
      
      attr_reader :created_at
      
      attr_reader :enabled
      
      attr_reader :id
      
      attr_reader :key
      
      
      attr_reader :name
      
      attr_reader :webhook_url
      def initialize(object)
        @object = object
        
        @created_at = object["created_at"]
        @enabled = object["enabled"]
        @id = object["id"]
        @key = object["key"]
        @links = object["links"]
        @name = object["name"]
        @webhook_url = object["webhook_url"]
      end

      
      
      
      
      
      
      
      
      
      
      def links
        Struct.new(
          *{
          
            role: "",
          
          }.keys
          ).new(*@links.values)
      end
      
      
      
      
      
      

      def envelope_key
        #TODO: could you use $propName here, or use the Envelope property
        "api_keys"
      end
    end
  end
end