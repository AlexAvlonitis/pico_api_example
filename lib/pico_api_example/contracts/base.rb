require 'dry-validation'

module PicoApiExample
  module Contracts
    class Base < Dry::Validation::Contract
      def validate!(params)
        result = self.call(params)

        raise Exceptions::ValidationError, print_errors(result.errors) unless result.success?
      end

      private

      def print_errors(errors)
        errors.messages.map do |e|
          "#{e.path.join('->')}: #{e.text}"
        end.join(', ')
      end
    end
  end
end
