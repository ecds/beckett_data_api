# frozen_string_literal: true

class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works, id: :uuid do |t|
      t.integer :work_type, null: false, default: 0
      t.integer :language, null: false, default: 198
      t.string :title, null: false, default: ''
      t.text :alternate_titles, array: true, default: []
      t.text :translator
      t.text :publication_info
      t.boolean :published
      t.text :description
      t.text :performed_by
      t.timestamps
    end
  end
end
