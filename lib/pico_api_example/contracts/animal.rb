module PicoApiExample
  module Contracts
    class Animal < Base
      params do
        required(:name).filled(:string)
        required(:weight).value(:integer)
      end
    end
  end
end
