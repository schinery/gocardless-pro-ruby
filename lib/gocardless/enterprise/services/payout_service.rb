require_relative './base_service'



# encoding: utf-8
#
# WARNING: Do not edit by hand, this file was generated by Crank:
#
#   https://github.com/gocardless/crank

module GoCardless
  module Services
    class PayoutService < BaseService

    
      

            # Returns a
    # [cursor-paginated](https://developer.gocardless.com/pro/#overview-cursor-pagination)
    # list of your payouts.
        # Example URL: /payouts
        # @param options: any query parameters, in the form of a hash
        def list(
        options = {}, custom_headers = {}
        )
        path = nil
        
          path = "/payouts"
        

        
        
        
        response = make_request(:get, path, options, custom_headers)
        
          ListResponse.new(
            raw_response: response,
            unenveloped_body: unenvelope_body(response.body),
            resource_class: Resources::Payout
          )
        
        end

        
        def all(options = {})
          Paginator.new(
            service: self,
            path: "/payouts",
            options: options
          ).enumerator
        end
        
        
      

            # Retrieves the details of a single payout.
        # Example URL: /payouts/:identity
        #
        # @param identity:       # Unique identifier, beginning with "PO" }}
        # @param options: any query parameters, in the form of a hash
        def get(
        identity, options = {}, custom_headers = {}
        )
        path = nil
        
          path = sub_url("/payouts/:identity", { 
            "identity" => identity
          })
        

        
        
        
        response = make_request(:get, path, options, custom_headers)
        
          Resources::Payout.new(unenvelope_body(response.body))
        
        end

        
        

        def unenvelope_body(body)
          body[envelope_key] || body["data"]
        end

        private

        def envelope_key
          "payouts"
        end

        def sub_url(url, param_map)
          param_map.reduce(url) do |new_url, (param, value)|
            new_url.gsub(":#{param}", value)
          end
        end
    end
  end
end

