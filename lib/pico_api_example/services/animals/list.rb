module PicoApiExample
  module Services
    module Animals
      class List < ::PicoApiExample::Services::Base
        def call
          animal_repo.all
        end

        private

        def animal_repo
          params[:animal_repo]
        end
      end
    end
  end
end
