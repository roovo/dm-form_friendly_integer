module DataMapper
  module Types
    class FormFriendlyInteger < DataMapper::Type
      primitive Integer

      def self.load(value, property)
        if value.is_a?(Integer) || value.nil?
          value
        else
          raise ArgumentError.new("+value+ must be nil or a String")
        end
      end

      def self.typecast(value, property)
        if value.kind_of?(String) && value =~ /\A[+-]?\d+\z/
          value.to_i
        elsif value.kind_of?(String)
          value
        else
          load(value, property)
        end
      end
    end
  end
end

