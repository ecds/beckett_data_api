# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations, id: :uuid do |t|
      t.string :name
      t.text :description
      t.text :alternate_names, array: true, default: []
      t.text :links, array: true, default: []
      t.timestamps
    end
  end
end
