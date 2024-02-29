=begin
#CRM Associations

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Associations
      module V4
        class BatchApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Delete
          # Batch delete associations for objects
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_association_multi_archive [BatchInputPublicAssociationMultiArchive] 
          # @param [Hash] opts the optional parameters
          # @return [nil]
          def archive(from_object_type, to_object_type, batch_input_public_association_multi_archive, opts = {})
            archive_with_http_info(from_object_type, to_object_type, batch_input_public_association_multi_archive, opts)
            nil
          end

          # Delete
          # Batch delete associations for objects
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_association_multi_archive [BatchInputPublicAssociationMultiArchive] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
          def archive_with_http_info(from_object_type, to_object_type, batch_input_public_association_multi_archive, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: BatchApi.archive ...'
            end
            # verify the required parameter 'from_object_type' is set
            if @api_client.config.client_side_validation && from_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.archive"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.archive"
            end
            # verify the required parameter 'batch_input_public_association_multi_archive' is set
            if @api_client.config.client_side_validation && batch_input_public_association_multi_archive.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_public_association_multi_archive' when calling BatchApi.archive"
            end
            # resource path
            local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/batch/archive'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])
            # HTTP header 'Content-Type'
            content_type = @api_client.select_header_content_type(['application/json'])
            if !content_type.nil?
                header_params['Content-Type'] = content_type
            end

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_public_association_multi_archive)

            # return_type
            return_type = opts[:debug_return_type]

            # auth_names
            auth_names = opts[:debug_auth_names] || ['oauth2']

            new_options = opts.merge(
              :operation => :"BatchApi.archive",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: BatchApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Delete Specific Labels
          # Batch delete specific association labels for objects. Deleting an unlabeled association will also delete all labeled associations between those two objects
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_association_multi_post [BatchInputPublicAssociationMultiPost] 
          # @param [Hash] opts the optional parameters
          # @return [nil]
          def archive_labels(from_object_type, to_object_type, batch_input_public_association_multi_post, opts = {})
            archive_labels_with_http_info(from_object_type, to_object_type, batch_input_public_association_multi_post, opts)
            nil
          end

          # Delete Specific Labels
          # Batch delete specific association labels for objects. Deleting an unlabeled association will also delete all labeled associations between those two objects
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_association_multi_post [BatchInputPublicAssociationMultiPost] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
          def archive_labels_with_http_info(from_object_type, to_object_type, batch_input_public_association_multi_post, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: BatchApi.archive_labels ...'
            end
            # verify the required parameter 'from_object_type' is set
            if @api_client.config.client_side_validation && from_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.archive_labels"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.archive_labels"
            end
            # verify the required parameter 'batch_input_public_association_multi_post' is set
            if @api_client.config.client_side_validation && batch_input_public_association_multi_post.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_public_association_multi_post' when calling BatchApi.archive_labels"
            end
            # resource path
            local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/batch/labels/archive'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])
            # HTTP header 'Content-Type'
            content_type = @api_client.select_header_content_type(['application/json'])
            if !content_type.nil?
                header_params['Content-Type'] = content_type
            end

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_public_association_multi_post)

            # return_type
            return_type = opts[:debug_return_type]

            # auth_names
            auth_names = opts[:debug_auth_names] || ['oauth2']

            new_options = opts.merge(
              :operation => :"BatchApi.archive_labels",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: BatchApi#archive_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Create
          # Batch create associations for objects
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_association_multi_post [BatchInputPublicAssociationMultiPost] 
          # @param [Hash] opts the optional parameters
          # @return [BatchResponseLabelsBetweenObjectPair]
          def create(from_object_type, to_object_type, batch_input_public_association_multi_post, opts = {})
            data, _status_code, _headers = create_with_http_info(from_object_type, to_object_type, batch_input_public_association_multi_post, opts)
            data
          end

          # Create
          # Batch create associations for objects
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_association_multi_post [BatchInputPublicAssociationMultiPost] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(BatchResponseLabelsBetweenObjectPair, Integer, Hash)>] BatchResponseLabelsBetweenObjectPair data, response status code and response headers
          def create_with_http_info(from_object_type, to_object_type, batch_input_public_association_multi_post, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: BatchApi.create ...'
            end
            # verify the required parameter 'from_object_type' is set
            if @api_client.config.client_side_validation && from_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.create"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.create"
            end
            # verify the required parameter 'batch_input_public_association_multi_post' is set
            if @api_client.config.client_side_validation && batch_input_public_association_multi_post.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_public_association_multi_post' when calling BatchApi.create"
            end
            # resource path
            local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/batch/create'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            content_type = @api_client.select_header_content_type(['application/json'])
            if !content_type.nil?
                header_params['Content-Type'] = content_type
            end

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_public_association_multi_post)

            # return_type
            return_type = opts[:debug_return_type] || 'BatchResponseLabelsBetweenObjectPair'

            # auth_names
            auth_names = opts[:debug_auth_names] || ['oauth2']

            new_options = opts.merge(
              :operation => :"BatchApi.create",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: BatchApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          #  Create Default Associations
          # Create the default (most generic) association type between two object types
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_default_association_multi_post [BatchInputPublicDefaultAssociationMultiPost] 
          # @param [Hash] opts the optional parameters
          # @return [BatchResponsePublicDefaultAssociation]
          def create_default(from_object_type, to_object_type, batch_input_public_default_association_multi_post, opts = {})
            data, _status_code, _headers = create_default_with_http_info(from_object_type, to_object_type, batch_input_public_default_association_multi_post, opts)
            data
          end

          #  Create Default Associations
          # Create the default (most generic) association type between two object types
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_default_association_multi_post [BatchInputPublicDefaultAssociationMultiPost] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(BatchResponsePublicDefaultAssociation, Integer, Hash)>] BatchResponsePublicDefaultAssociation data, response status code and response headers
          def create_default_with_http_info(from_object_type, to_object_type, batch_input_public_default_association_multi_post, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: BatchApi.create_default ...'
            end
            # verify the required parameter 'from_object_type' is set
            if @api_client.config.client_side_validation && from_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.create_default"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.create_default"
            end
            # verify the required parameter 'batch_input_public_default_association_multi_post' is set
            if @api_client.config.client_side_validation && batch_input_public_default_association_multi_post.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_public_default_association_multi_post' when calling BatchApi.create_default"
            end
            # resource path
            local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/batch/associate/default'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            content_type = @api_client.select_header_content_type(['application/json'])
            if !content_type.nil?
                header_params['Content-Type'] = content_type
            end

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_public_default_association_multi_post)

            # return_type
            return_type = opts[:debug_return_type] || 'BatchResponsePublicDefaultAssociation'

            # auth_names
            auth_names = opts[:debug_auth_names] || ['oauth2']

            new_options = opts.merge(
              :operation => :"BatchApi.create_default",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: BatchApi#create_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Read
          # Batch read associations for objects to specific object type. The 'after' field in a returned paging object  can be added alongside the 'id' to retrieve the next page of associations from that objectId. The 'link' field is deprecated and should be ignored. 
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_fetch_associations_batch_request [BatchInputPublicFetchAssociationsBatchRequest] 
          # @param [Hash] opts the optional parameters
          # @return [BatchResponsePublicAssociationMultiWithLabel]
          def get_page(from_object_type, to_object_type, batch_input_public_fetch_associations_batch_request, opts = {})
            data, _status_code, _headers = get_page_with_http_info(from_object_type, to_object_type, batch_input_public_fetch_associations_batch_request, opts)
            data
          end

          # Read
          # Batch read associations for objects to specific object type. The &#39;after&#39; field in a returned paging object  can be added alongside the &#39;id&#39; to retrieve the next page of associations from that objectId. The &#39;link&#39; field is deprecated and should be ignored. 
          # @param from_object_type [String] 
          # @param to_object_type [String] 
          # @param batch_input_public_fetch_associations_batch_request [BatchInputPublicFetchAssociationsBatchRequest] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(BatchResponsePublicAssociationMultiWithLabel, Integer, Hash)>] BatchResponsePublicAssociationMultiWithLabel data, response status code and response headers
          def get_page_with_http_info(from_object_type, to_object_type, batch_input_public_fetch_associations_batch_request, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: BatchApi.get_page ...'
            end
            # verify the required parameter 'from_object_type' is set
            if @api_client.config.client_side_validation && from_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.get_page"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.get_page"
            end
            # verify the required parameter 'batch_input_public_fetch_associations_batch_request' is set
            if @api_client.config.client_side_validation && batch_input_public_fetch_associations_batch_request.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_public_fetch_associations_batch_request' when calling BatchApi.get_page"
            end
            # resource path
            local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/batch/read'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            content_type = @api_client.select_header_content_type(['application/json'])
            if !content_type.nil?
                header_params['Content-Type'] = content_type
            end

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_public_fetch_associations_batch_request)

            # return_type
            return_type = opts[:debug_return_type] || 'BatchResponsePublicAssociationMultiWithLabel'

            # auth_names
            auth_names = opts[:debug_auth_names] || ['oauth2']

            new_options = opts.merge(
              :operation => :"BatchApi.get_page",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: BatchApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
