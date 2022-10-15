module PicoApiExample
  module Handlers
    module Animals
      class Create < PicoApiExample::Handlers::Base
        SRV_INCLUDES = {
          animal_repo: Repositories::Animal.new(PicoApi::Database.container),
          animal_contract: Contracts::Animal.new,
          animal_enity_klass: Entities::Animal
        }.freeze

        def call
          animal = Services::Animals::Create.call(params.merge(SRV_INCLUDES))
          serialize(animal, serializer: Serializers::Animal)
        end
      end
    end
  end
end
