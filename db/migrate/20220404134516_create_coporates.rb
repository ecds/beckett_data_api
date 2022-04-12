# frozen_string_literal: true

class CreateCoporates < ActiveRecord::Migration[7.0]
  def change
    create_table :coporates, id: :uuid do |t|
      t.integer :coporate_type, null: false, default: 0
      t.integer :legacy_id
      t.string :authorized_name, null: false, default: ''
      t.text :alternate_names, array: true, default: []
      t.text :description, default: ''
      t.timestamps
    end
  end
end
