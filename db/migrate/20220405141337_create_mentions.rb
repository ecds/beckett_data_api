# frozen_string_literal: true

class CreateMentions < ActiveRecord::Migration[7.0]
  def change
    create_table :mentions, id: :uuid do |t|
      t.belongs_to :activity, optional: true, type: :uuid
      t.belongs_to :coporate, optional: true, type: :uuid
      t.belongs_to :event, optional: true, type: :uuid
      t.belongs_to :letter, type: :uuid
      t.belongs_to :location, optional: true, type: :uuid
      t.belongs_to :personal, optional: true, type: :uuid
      t.belongs_to :work, optional: true, type: :uuid
      t.boolean :significant, default: false
      t.integer :mention_type, null: true
      t.timestamps
    end
  end
end
