=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Properties
      class Property
        # The internal user ID of the user who created the property in HubSpot. This field may not exist if the property was created outside of HubSpot.
        attr_accessor :created_user_id

        # Whether or not the property will be hidden from the HubSpot UI. It's recommended this be set to false for custom properties.
        attr_accessor :hidden

        attr_accessor :modification_metadata

        # Properties are shown in order, starting with the lowest positive integer value.
        attr_accessor :display_order

        # A description of the property that will be shown as help text in HubSpot.
        attr_accessor :description

        # Whether or not the property will display the currency symbol set in the account settings.
        attr_accessor :show_currency_symbol

        # A human-readable property label that will be shown in HubSpot.
        attr_accessor :label

        # The property data type.
        attr_accessor :type

        # This will be true for default object properties built into HubSpot.
        attr_accessor :hubspot_defined

        # Whether or not the property can be used in a HubSpot form.
        attr_accessor :form_field

        # 
        attr_accessor :created_at

        # When the property was archived.
        attr_accessor :archived_at

        # Whether or not the property is archived.
        attr_accessor :archived

        # The name of the property group the property belongs to.
        attr_accessor :group_name

        # If this property is related to other object(s), they'll be listed here.
        attr_accessor :referenced_object_type

        # The internal property name, which must be used when referencing the property via the API.
        attr_accessor :name

        # A list of valid options for the property. This field is required for enumerated properties, but will be empty for other property types.
        attr_accessor :options

        # Represents a formula that is used to compute a calculated property.
        attr_accessor :calculation_formula

        # Whether or not the property's value must be unique. Once set, this can't be changed.
        attr_accessor :has_unique_value

        # Controls how the property appears in HubSpot.
        attr_accessor :field_type

        # The internal user ID of the user who updated the property in HubSpot. This field may not exist if the property was updated outside of HubSpot.
        attr_accessor :updated_user_id

        # For default properties, true indicates that the property is calculated by a HubSpot process. It has no effect for custom properties.
        attr_accessor :calculated

        # For default properties, true indicates that the options are stored externally to the property settings.
        attr_accessor :external_options

        # 
        attr_accessor :updated_at

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'created_user_id' => :'createdUserId',
            :'hidden' => :'hidden',
            :'modification_metadata' => :'modificationMetadata',
            :'display_order' => :'displayOrder',
            :'description' => :'description',
            :'show_currency_symbol' => :'showCurrencySymbol',
            :'label' => :'label',
            :'type' => :'type',
            :'hubspot_defined' => :'hubspotDefined',
            :'form_field' => :'formField',
            :'created_at' => :'createdAt',
            :'archived_at' => :'archivedAt',
            :'archived' => :'archived',
            :'group_name' => :'groupName',
            :'referenced_object_type' => :'referencedObjectType',
            :'name' => :'name',
            :'options' => :'options',
            :'calculation_formula' => :'calculationFormula',
            :'has_unique_value' => :'hasUniqueValue',
            :'field_type' => :'fieldType',
            :'updated_user_id' => :'updatedUserId',
            :'calculated' => :'calculated',
            :'external_options' => :'externalOptions',
            :'updated_at' => :'updatedAt'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'created_user_id' => :'String',
            :'hidden' => :'Boolean',
            :'modification_metadata' => :'PropertyModificationMetadata',
            :'display_order' => :'Integer',
            :'description' => :'String',
            :'show_currency_symbol' => :'Boolean',
            :'label' => :'String',
            :'type' => :'String',
            :'hubspot_defined' => :'Boolean',
            :'form_field' => :'Boolean',
            :'created_at' => :'Time',
            :'archived_at' => :'Time',
            :'archived' => :'Boolean',
            :'group_name' => :'String',
            :'referenced_object_type' => :'String',
            :'name' => :'String',
            :'options' => :'Array<Option>',
            :'calculation_formula' => :'String',
            :'has_unique_value' => :'Boolean',
            :'field_type' => :'String',
            :'updated_user_id' => :'String',
            :'calculated' => :'Boolean',
            :'external_options' => :'Boolean',
            :'updated_at' => :'Time'
          }
        end

        # List of attributes with nullable: true
        def self.openapi_nullable
          Set.new([
          ])
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          if (!attributes.is_a?(Hash))
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Properties::Property` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Properties::Property`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'created_user_id')
            self.created_user_id = attributes[:'created_user_id']
          end

          if attributes.key?(:'hidden')
            self.hidden = attributes[:'hidden']
          end

          if attributes.key?(:'modification_metadata')
            self.modification_metadata = attributes[:'modification_metadata']
          end

          if attributes.key?(:'display_order')
            self.display_order = attributes[:'display_order']
          end

          if attributes.key?(:'description')
            self.description = attributes[:'description']
          end

          if attributes.key?(:'show_currency_symbol')
            self.show_currency_symbol = attributes[:'show_currency_symbol']
          end

          if attributes.key?(:'label')
            self.label = attributes[:'label']
          end

          if attributes.key?(:'type')
            self.type = attributes[:'type']
          end

          if attributes.key?(:'hubspot_defined')
            self.hubspot_defined = attributes[:'hubspot_defined']
          end

          if attributes.key?(:'form_field')
            self.form_field = attributes[:'form_field']
          end

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end

          if attributes.key?(:'archived_at')
            self.archived_at = attributes[:'archived_at']
          end

          if attributes.key?(:'archived')
            self.archived = attributes[:'archived']
          end

          if attributes.key?(:'group_name')
            self.group_name = attributes[:'group_name']
          end

          if attributes.key?(:'referenced_object_type')
            self.referenced_object_type = attributes[:'referenced_object_type']
          end

          if attributes.key?(:'name')
            self.name = attributes[:'name']
          end

          if attributes.key?(:'options')
            if (value = attributes[:'options']).is_a?(Array)
              self.options = value
            end
          end

          if attributes.key?(:'calculation_formula')
            self.calculation_formula = attributes[:'calculation_formula']
          end

          if attributes.key?(:'has_unique_value')
            self.has_unique_value = attributes[:'has_unique_value']
          end

          if attributes.key?(:'field_type')
            self.field_type = attributes[:'field_type']
          end

          if attributes.key?(:'updated_user_id')
            self.updated_user_id = attributes[:'updated_user_id']
          end

          if attributes.key?(:'calculated')
            self.calculated = attributes[:'calculated']
          end

          if attributes.key?(:'external_options')
            self.external_options = attributes[:'external_options']
          end

          if attributes.key?(:'updated_at')
            self.updated_at = attributes[:'updated_at']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @description.nil?
            invalid_properties.push('invalid value for "description", description cannot be nil.')
          end

          if @label.nil?
            invalid_properties.push('invalid value for "label", label cannot be nil.')
          end

          if @type.nil?
            invalid_properties.push('invalid value for "type", type cannot be nil.')
          end

          if @group_name.nil?
            invalid_properties.push('invalid value for "group_name", group_name cannot be nil.')
          end

          if @name.nil?
            invalid_properties.push('invalid value for "name", name cannot be nil.')
          end

          if @options.nil?
            invalid_properties.push('invalid value for "options", options cannot be nil.')
          end

          if @field_type.nil?
            invalid_properties.push('invalid value for "field_type", field_type cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @description.nil?
          return false if @label.nil?
          return false if @type.nil?
          return false if @group_name.nil?
          return false if @name.nil?
          return false if @options.nil?
          return false if @field_type.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              created_user_id == o.created_user_id &&
              hidden == o.hidden &&
              modification_metadata == o.modification_metadata &&
              display_order == o.display_order &&
              description == o.description &&
              show_currency_symbol == o.show_currency_symbol &&
              label == o.label &&
              type == o.type &&
              hubspot_defined == o.hubspot_defined &&
              form_field == o.form_field &&
              created_at == o.created_at &&
              archived_at == o.archived_at &&
              archived == o.archived &&
              group_name == o.group_name &&
              referenced_object_type == o.referenced_object_type &&
              name == o.name &&
              options == o.options &&
              calculation_formula == o.calculation_formula &&
              has_unique_value == o.has_unique_value &&
              field_type == o.field_type &&
              updated_user_id == o.updated_user_id &&
              calculated == o.calculated &&
              external_options == o.external_options &&
              updated_at == o.updated_at
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [created_user_id, hidden, modification_metadata, display_order, description, show_currency_symbol, label, type, hubspot_defined, form_field, created_at, archived_at, archived, group_name, referenced_object_type, name, options, calculation_formula, has_unique_value, field_type, updated_user_id, calculated, external_options, updated_at].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          attributes = attributes.transform_keys(&:to_sym)
          self.class.openapi_types.each_pair do |key, type|
            if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
              self.send("#{key}=", nil)
            elsif type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :Time
            Time.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :Boolean
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            # models (e.g. Pet) or oneOf
            klass = Hubspot::Crm::Properties.const_get(type)
            klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
        end

        # Returns the object in the form of hash
        # @return [Hash] Returns the object in the form of hash
        def to_hash
          hash = {}
          self.class.attribute_map.each_pair do |attr, param|
            value = self.send(attr)
            if value.nil?
              is_nullable = self.class.openapi_nullable.include?(attr)
              next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
            end

            hash[param] = _to_hash(value)
          end
          hash
        end

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map { |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end

      end

    end
  end
end
