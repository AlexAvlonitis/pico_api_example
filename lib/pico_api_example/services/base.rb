module PicoApiExample
  module Services
    class Base
      def self.call(params = {})
        new(params).call
      end

      def initialize(params)
        @params = params
      end

      def call
        raise NotImplementError
      end

      private

      attr_reader :params
    end
  end
end
