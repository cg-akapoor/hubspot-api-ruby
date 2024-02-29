=begin
#Schemas

#The CRM uses schemas to define how custom objects should store and represent information in the HubSpot CRM. Schemas define details about an object's type, properties, and associations. The schema can be uniquely identified by its **object type ID**.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Schemas
      class ObjectTypePropertyCreate
        attr_accessor :hidden

        # Controls how the property options will be sorted in the HubSpot UI.
        attr_accessor :option_sort_strategy

        # The order that this property should be displayed in the HubSpot UI relative to other properties for this object type. Properties are displayed in order starting with the lowest positive integer value. A value of -1 will cause the property to be displayed **after** any positive values.
        attr_accessor :display_order

        # A description of the property that will be shown as help text in HubSpot.
        attr_accessor :description

        # Whether the property will display the currency symbol in the HubSpot UI.
        attr_accessor :show_currency_symbol

        # A human-readable property label that will be shown in HubSpot.
        attr_accessor :label

        # The data type of the property.
        attr_accessor :type

        # Whether the property can be used in a HubSpot form.
        attr_accessor :form_field

        # The name of the group this property belongs to.
        attr_accessor :group_name

        # Defines the options this property will return, e.g. OWNER would return name of users on the portal.
        attr_accessor :referenced_object_type

        # Controls how text properties are formatted in the HubSpot UI
        attr_accessor :text_display_hint

        # The internal property name, which must be used when referencing the property from the API.
        attr_accessor :name

        # A list of available options for the property. This field is only required for enumerated properties.
        attr_accessor :options

        # Allow users to search for information entered to this field (limited to 3 properties)
        attr_accessor :searchable_in_global_search

        # Controls how numeric properties are formatted in the HubSpot UI
        attr_accessor :number_display_hint

        # Whether or not the property's value must be unique. Once set, this can't be changed.
        attr_accessor :has_unique_value

        # Controls how the property appears in HubSpot.
        attr_accessor :field_type

        class EnumAttributeValidator
          attr_reader :datatype
          attr_reader :allowable_values

          def initialize(datatype, allowable_values)
            @allowable_values = allowable_values.map do |value|
              case datatype.to_s
              when /Integer/i
                value.to_i
              when /Float/i
                value.to_f
              else
                value
              end
            end
          end

          def valid?(value)
            !value || allowable_values.include?(value)
          end
        end

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'hidden' => :'hidden',
            :'option_sort_strategy' => :'optionSortStrategy',
            :'display_order' => :'displayOrder',
            :'description' => :'description',
            :'show_currency_symbol' => :'showCurrencySymbol',
            :'label' => :'label',
            :'type' => :'type',
            :'form_field' => :'formField',
            :'group_name' => :'groupName',
            :'referenced_object_type' => :'referencedObjectType',
            :'text_display_hint' => :'textDisplayHint',
            :'name' => :'name',
            :'options' => :'options',
            :'searchable_in_global_search' => :'searchableInGlobalSearch',
            :'number_display_hint' => :'numberDisplayHint',
            :'has_unique_value' => :'hasUniqueValue',
            :'field_type' => :'fieldType'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'hidden' => :'Boolean',
            :'option_sort_strategy' => :'String',
            :'display_order' => :'Integer',
            :'description' => :'String',
            :'show_currency_symbol' => :'Boolean',
            :'label' => :'String',
            :'type' => :'String',
            :'form_field' => :'Boolean',
            :'group_name' => :'String',
            :'referenced_object_type' => :'String',
            :'text_display_hint' => :'String',
            :'name' => :'String',
            :'options' => :'Array<OptionInput>',
            :'searchable_in_global_search' => :'Boolean',
            :'number_display_hint' => :'String',
            :'has_unique_value' => :'Boolean',
            :'field_type' => :'String'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Schemas::ObjectTypePropertyCreate` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Schemas::ObjectTypePropertyCreate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'hidden')
            self.hidden = attributes[:'hidden']
          end

          if attributes.key?(:'option_sort_strategy')
            self.option_sort_strategy = attributes[:'option_sort_strategy']
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

          if attributes.key?(:'form_field')
            self.form_field = attributes[:'form_field']
          end

          if attributes.key?(:'group_name')
            self.group_name = attributes[:'group_name']
          end

          if attributes.key?(:'referenced_object_type')
            self.referenced_object_type = attributes[:'referenced_object_type']
          end

          if attributes.key?(:'text_display_hint')
            self.text_display_hint = attributes[:'text_display_hint']
          end

          if attributes.key?(:'name')
            self.name = attributes[:'name']
          end

          if attributes.key?(:'options')
            if (value = attributes[:'options']).is_a?(Array)
              self.options = value
            end
          end

          if attributes.key?(:'searchable_in_global_search')
            self.searchable_in_global_search = attributes[:'searchable_in_global_search']
          end

          if attributes.key?(:'number_display_hint')
            self.number_display_hint = attributes[:'number_display_hint']
          end

          if attributes.key?(:'has_unique_value')
            self.has_unique_value = attributes[:'has_unique_value']
          end

          if attributes.key?(:'field_type')
            self.field_type = attributes[:'field_type']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @label.nil?
            invalid_properties.push('invalid value for "label", label cannot be nil.')
          end

          if @type.nil?
            invalid_properties.push('invalid value for "type", type cannot be nil.')
          end

          if @name.nil?
            invalid_properties.push('invalid value for "name", name cannot be nil.')
          end

          if @field_type.nil?
            invalid_properties.push('invalid value for "field_type", field_type cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          option_sort_strategy_validator = EnumAttributeValidator.new('String', ["DISPLAY_ORDER", "ALPHABETICAL"])
          return false unless option_sort_strategy_validator.valid?(@option_sort_strategy)
          return false if @label.nil?
          return false if @type.nil?
          type_validator = EnumAttributeValidator.new('String', ["string", "number", "date", "datetime", "enumeration", "bool"])
          return false unless type_validator.valid?(@type)
          text_display_hint_validator = EnumAttributeValidator.new('String', ["unformatted_single_line", "multi_line", "email", "phone_number", "domain_name", "ip_address", "physical_address", "postal_code"])
          return false unless text_display_hint_validator.valid?(@text_display_hint)
          return false if @name.nil?
          number_display_hint_validator = EnumAttributeValidator.new('String', ["unformatted", "formatted", "currency", "percentage", "duration", "probability"])
          return false unless number_display_hint_validator.valid?(@number_display_hint)
          return false if @field_type.nil?
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] option_sort_strategy Object to be assigned
        def option_sort_strategy=(option_sort_strategy)
          validator = EnumAttributeValidator.new('String', ["DISPLAY_ORDER", "ALPHABETICAL"])
          unless validator.valid?(option_sort_strategy)
            fail ArgumentError, "invalid value for \"option_sort_strategy\", must be one of #{validator.allowable_values}."
          end
          @option_sort_strategy = option_sort_strategy
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] type Object to be assigned
        def type=(type)
          validator = EnumAttributeValidator.new('String', ["string", "number", "date", "datetime", "enumeration", "bool"])
          unless validator.valid?(type)
            fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
          end
          @type = type
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] text_display_hint Object to be assigned
        def text_display_hint=(text_display_hint)
          validator = EnumAttributeValidator.new('String', ["unformatted_single_line", "multi_line", "email", "phone_number", "domain_name", "ip_address", "physical_address", "postal_code"])
          unless validator.valid?(text_display_hint)
            fail ArgumentError, "invalid value for \"text_display_hint\", must be one of #{validator.allowable_values}."
          end
          @text_display_hint = text_display_hint
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] number_display_hint Object to be assigned
        def number_display_hint=(number_display_hint)
          validator = EnumAttributeValidator.new('String', ["unformatted", "formatted", "currency", "percentage", "duration", "probability"])
          unless validator.valid?(number_display_hint)
            fail ArgumentError, "invalid value for \"number_display_hint\", must be one of #{validator.allowable_values}."
          end
          @number_display_hint = number_display_hint
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              hidden == o.hidden &&
              option_sort_strategy == o.option_sort_strategy &&
              display_order == o.display_order &&
              description == o.description &&
              show_currency_symbol == o.show_currency_symbol &&
              label == o.label &&
              type == o.type &&
              form_field == o.form_field &&
              group_name == o.group_name &&
              referenced_object_type == o.referenced_object_type &&
              text_display_hint == o.text_display_hint &&
              name == o.name &&
              options == o.options &&
              searchable_in_global_search == o.searchable_in_global_search &&
              number_display_hint == o.number_display_hint &&
              has_unique_value == o.has_unique_value &&
              field_type == o.field_type
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [hidden, option_sort_strategy, display_order, description, show_currency_symbol, label, type, form_field, group_name, referenced_object_type, text_display_hint, name, options, searchable_in_global_search, number_display_hint, has_unique_value, field_type].hash
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
            klass = Hubspot::Crm::Schemas.const_get(type)
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
