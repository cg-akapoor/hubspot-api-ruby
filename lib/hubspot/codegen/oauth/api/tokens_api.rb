=begin
#OAuthService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module OAuth
    class TokensApi
      attr_accessor :api_client

      def initialize(api_client = ApiClient.default)
        @api_client = api_client
      end
      # @param [Hash] opts the optional parameters
      # @option opts [String] :grant_type 
      # @option opts [String] :code 
      # @option opts [String] :redirect_uri 
      # @option opts [String] :client_id 
      # @option opts [String] :client_secret 
      # @option opts [String] :refresh_token 
      # @return [TokenResponseIF]
      def create_token(opts = {})
        data, _status_code, _headers = create_token_with_http_info(opts)
        data
      end

      # @param [Hash] opts the optional parameters
      # @option opts [String] :grant_type 
      # @option opts [String] :code 
      # @option opts [String] :redirect_uri 
      # @option opts [String] :client_id 
      # @option opts [String] :client_secret 
      # @option opts [String] :refresh_token 
      # @return [Array<(TokenResponseIF, Integer, Hash)>] TokenResponseIF data, response status code and response headers
      def create_token_with_http_info(opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: TokensApi.create_token ...'
        end
        allowable_values = ["authorization_code", "refresh_token"]
        if @api_client.config.client_side_validation && opts[:'grant_type'] && !allowable_values.include?(opts[:'grant_type'])
          fail ArgumentError, "invalid value for \"grant_type\", must be one of #{allowable_values}"
        end
        # resource path
        local_var_path = '/oauth/v1/token'

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

        # form parameters
        form_params = opts[:form_params] || {}
        form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?
        form_params['code'] = opts[:'code'] if !opts[:'code'].nil?
        form_params['redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?
        form_params['client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
        form_params['client_secret'] = opts[:'client_secret'] if !opts[:'client_secret'].nil?
        form_params['refresh_token'] = opts[:'refresh_token'] if !opts[:'refresh_token'].nil?

        # http body (model)
        post_body = opts[:body] 

        # return_type
        return_type = opts[:return_type] || 'TokenResponseIF' 

        # auth_names
        auth_names = opts[:auth_names] || []

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: TokensApi#create_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end