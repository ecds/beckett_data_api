# frozen_string_literal: true

class CreatePersonals < ActiveRecord::Migration[7.0]
  def change
    create_table :personals, id: :uuid do |t|
      t.string :authorized_name, null: false, default: ''
      t.integer :legacy_id
      t.date :birth_date
      t.date :death_date
      t.text :description, default: ''
      t.text :alternate_names, array: true, default: []
      t.text :links, array: true, default: []
      t.text :images, array: true, default: []
      t.timestamps
    end
  end
end
