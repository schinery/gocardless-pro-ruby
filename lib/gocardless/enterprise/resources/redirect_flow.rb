

# encoding: utf-8
#
# WARNING: Do not edit by hand, this file was generated by Crank:
#
#   https://github.com/gocardless/crank
#
require 'uri'

module GoCardless
  module Resources
  # Redirect flows enable you to use GoCardless Pro's secure payment pages to
  # set up mandates with your customers.
  # 
  # The overall flow is:
  # 
  #
  # 1. You
  # [create](https://developer.gocardless.com/pro/#create-a-redirect-flow) a
  # redirect flow for your customer, and redirect them to the returned redirect
  # url, e.g. `https://pay.gocardless.com/flow/RE123`.
  # 
  # 2. Your customer
  # supplies their name, email, address, and bank account details, and submits
  # the form. This securely stores their details, and redirects them back to
  # your `success_redirect_url` with `redirect_flow_id=RE123` in the
  # querystring.
  # 
  # 3. You
  # [complete](https://developer.gocardless.com/pro/#complete-a-redirect-flow)
  # the redirect flow, which creates a
  # [customer](https://developer.gocardless.com/pro/#api-endpoints-customers),
  # [customer bank
  # account](https://developer.gocardless.com/pro/#api-endpoints-customer-bank-accounts),
  # and [mandate](https://developer.gocardless.com/pro/#api-endpoints-mandates),
  # and returns the ID of the mandate. You may wish to create a
  # [subscription](https://developer.gocardless.com/pro/#api-endpoints-subscriptions)
  # or [payment](https://developer.gocardless.com/pro/#api-endpoints-payments)
  # at this point.
  # 
  # It is recommended that you link the redirect flow to
  # your user object as soon as it is created, and attach the created resources
  # to that user in the complete step.
  # 
  # Redirect flows expire 30 minutes
  # after they are first created. You cannot
  # [complete](https://developer.gocardless.com/pro/#complete-a-redirect-flow)
  # an expired redirect flow.
    class RedirectFlow
      
      
      attr_reader :created_at
      
      attr_reader :description
      
      attr_reader :id
      
      
      attr_reader :redirect_url
      
      attr_reader :scheme
      
      attr_reader :session_token
      
      attr_reader :success_redirect_url
      def initialize(object)
        @object = object
        
        @created_at = object["created_at"]
        @description = object["description"]
        @id = object["id"]
        @links = object["links"]
        @redirect_url = object["redirect_url"]
        @scheme = object["scheme"]
        @session_token = object["session_token"]
        @success_redirect_url = object["success_redirect_url"]
      end

      
      
      
      
      
      
      
      
      def links
        Struct.new(
          *{
          
            creditor: "",
          
          }.keys
          ).new(*@links.values)
      end
      
      
      
      
      
      
      
      
      
      

      def envelope_key
        #TODO: could you use $propName here, or use the Envelope property
        "redirect_flows"
      end
    end
  end
end