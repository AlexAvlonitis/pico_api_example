module PicoApiExample
  module Repositories
    class Animal < ROM::Repository[:animals]
      def all
        animals.map_to(Entities::Animal).to_a
      end

      def create(animal)
        a = animals.changeset(:create, {
            name: animal.name,
            weight: animal.weight
          }).commit

        by_id(a.id)
      end

      def by_id(id)
        animals.by_pk(id).map_to(Entities::Animal).one
      end
    end
  end
end
