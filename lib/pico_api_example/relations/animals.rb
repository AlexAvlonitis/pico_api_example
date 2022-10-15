# frozen_string_literal: true

module PicoApiExample
  module Relations
    class Animals < ROM::Relation[:sql]
      schema(:animals, infer: true)
    end
  end
end
