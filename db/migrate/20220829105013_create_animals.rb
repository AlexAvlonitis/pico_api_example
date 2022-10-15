# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :animals do
      primary_key :id
      column :name, String
      column :weight, Integer
    end
  end
end
