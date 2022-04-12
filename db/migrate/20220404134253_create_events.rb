# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events, id: :uuid do |t|
      t.integer :event_type, null: false, default: 0
      t.text :event_name, null: false, default: ''
      t.text :description, default: ''
      t.string :place, default: ''
      t.date :date_attended
      t.timestamps
    end
  end
end
