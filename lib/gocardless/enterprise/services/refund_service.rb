require_relative './base_service'



# encoding: utf-8
#
# WARNING: Do not edit by hand, this file was generated by Crank:
#
#   https://github.com/gocardless/crank

module GoCardless
  module Services
    class RefundService < BaseService

    
      

            # Creates a new refund object.
    # 
    # This fails with:<a
    # name="refund_payment_invalid_state"></a><a
    # name="total_amount_confirmation_invalid"></a>
    # 
    # -
    # `refund_payment_invalid_state` error if the linked
    # [payment](https://developer.gocardless.com/pro/#api-endpoints-payments)
    # isn't either `confirmed` or `paid_out`.
    # 
    # -
    # `total_amount_confirmation_invalid` if the confirmation amount doesn't
    # match the total amount refunded for the payment. This safeguard is there
    # to prevent two processes from creating refunds without awareness of each
    # other.
    # 
        # Example URL: /refunds
        # @param options: any query parameters, in the form of a hash
        def create(
        options = {}, custom_headers = {}
        )
        path = nil
        
          path = "/refunds"
        

        
        
          new_options = {}
          new_options[envelope_key] = options
          options = new_options
        
        
        response = make_request(:post, path, options, custom_headers)
        
          Resources::Refund.new(unenvelope_body(response.body))
        
        end

        
        
      

            # Returns a
    # [cursor-paginated](https://developer.gocardless.com/pro/#overview-cursor-pagination)
    # list of your refunds.
        # Example URL: /refunds
        # @param options: any query parameters, in the form of a hash
        def list(
        options = {}, custom_headers = {}
        )
        path = nil
        
          path = "/refunds"
        

        
        
        
        response = make_request(:get, path, options, custom_headers)
        
          ListResponse.new(
            raw_response: response,
            unenveloped_body: unenvelope_body(response.body),
            resource_class: Resources::Refund
          )
        
        end

        
        def all(options = {})
          Paginator.new(
            service: self,
            path: "/refunds",
            options: options
          ).enumerator
        end
        
        
      

            # Retrieves all details for a single refund
        # Example URL: /refunds/:identity
        #
        # @param identity:       # Unique identifier, beginning with "RF" }}
        # @param options: any query parameters, in the form of a hash
        def get(
        identity, options = {}, custom_headers = {}
        )
        path = nil
        
          path = sub_url("/refunds/:identity", { 
            "identity" => identity
          })
        

        
        
        
        response = make_request(:get, path, options, custom_headers)
        
          Resources::Refund.new(unenvelope_body(response.body))
        
        end

        
        
      

            # Updates a refund object.
        # Example URL: /refunds/:identity
        #
        # @param identity:       # Unique identifier, beginning with "RF" }}
        # @param options: any query parameters, in the form of a hash
        def update(
        identity, options = {}, custom_headers = {}
        )
        path = nil
        
          path = sub_url("/refunds/:identity", { 
            "identity" => identity
          })
        

        
        
        
          new_options = {}
          new_options[envelope_key] = options
          options = new_options
        
        response = make_request(:put, path, options, custom_headers)
        
          Resources::Refund.new(unenvelope_body(response.body))
        
        end

        
        

        def unenvelope_body(body)
          body[envelope_key] || body["data"]
        end

        private

        def envelope_key
          "refunds"
        end

        def sub_url(url, param_map)
          param_map.reduce(url) do |new_url, (param, value)|
            new_url.gsub(":#{param}", value)
          end
        end
    end
  end
end
