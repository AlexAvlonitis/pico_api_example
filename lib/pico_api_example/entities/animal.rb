module PicoApiExample
  module Entities
    class Animal < Dry::Struct
      attribute? :id, Types::Integer
      attribute? :name, Types::String.optional
      attribute? :weight, Types::Integer.optional
    end
  end
end
