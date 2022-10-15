module PicoApiExample
  module Serializers
    class Animal < PicoApi::Serializers::Base
      set_type :animal

      attributes :name, :weight
    end
  end
end
