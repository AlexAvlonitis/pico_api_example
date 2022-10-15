module PicoApiExample
  module Handlers
    module Animals
      class Index < PicoApiExample::Handlers::Base
        SRV_INCLUDES = {
          animal_repo: PicoApiExample::Repositories::Animal.new(PicoApi::Database.container)
        }.freeze

        def call
          animals = Services::Animals::List.call(params.merge(SRV_INCLUDES))
          serialize(animals, serializer: Serializers::Animal)
        end
      end
    end
  end
end
