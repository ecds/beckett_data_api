# frozen_string_literal: true

class CreateLetters < ActiveRecord::Migration[7.0]
  def change
    create_table :letters, id: :uuid do |t|
      t.integer :legacy_id
      t.date :date_sent
      t.text :address
      t.text :physical_description
      t.text :content
      t.boolean :verified, null: false, default: false
      t.integer :language, null: false, default: 198
      t.timestamps
    end
  end
end
