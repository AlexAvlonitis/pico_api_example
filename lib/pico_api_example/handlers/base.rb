module PicoApiExample
  module Handlers
    class Base
      include PicoApi::JsonApiRenderer

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
