# frozen_string_literal: true

class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities, id: :uuid do |t|
      t.integer :activity_type, null: false, default: 1
      t.text :notes
      t.belongs_to :work, type: :uuid
      t.timestamps
    end
  end
end
