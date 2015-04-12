

# encoding: utf-8
#
# WARNING: Do not edit by hand, this file was generated by Crank:
#
#   https://github.com/gocardless/crank
#
require 'uri'

module GoCardless
  module Resources
  # Events are stored for all webhooks. An event refers to a resource which has
  # been updated, for example a payment which has been collected, or a mandate
  # which has been transferred.
    class Event
      
      
      attr_reader :action
      
      attr_reader :created_at
      
      attr_reader :details
      
      attr_reader :id
      
      
      attr_reader :metadata
      
      attr_reader :resource_type
      def initialize(object)
        @object = object
        
        @action = object["action"]
        @created_at = object["created_at"]
        @details = object["details"]
        @id = object["id"]
        @links = object["links"]
        @metadata = object["metadata"]
        @resource_type = object["resource_type"]
      end

      
      
      
      
      
      
      
      
      
      
      def links
        Struct.new(
          *{
          
            mandate: "",
          
            new_customer_bank_account: "",
          
            parent_event: "",
          
            payment: "",
          
            payout: "",
          
            previous_customer_bank_account: "",
          
            refund: "",
          
            subscription: "",
          
          }.keys
          ).new(*@links.values)
      end
      
      
      
      
      
      

      def envelope_key
        #TODO: could you use $propName here, or use the Envelope property
        "events"
      end
    end
  end
end