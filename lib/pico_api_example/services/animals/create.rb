module PicoApiExample
  module Services
    module Animals
      class Create < ::PicoApiExample::Services::Base
        def call
          validate!

          animal_repo.create(animal)
        end

        private

        def validate!
          animal_contract.validate!(attributes)
        end

        def animal
          animal_entity_klass.new(contract_output)
        end

        def contract_output
          animal_contract.call(attributes).to_h
        end

        def animal_repo
          params[:animal_repo]
        end

        def animal_entity_klass
          params[:animal_enity_klass]
        end

        def animal_contract
          params[:animal_contract]
        end

        def attributes
          params.dig(:data, :attributes, :animals)
        end
      end
    end
  end
end
