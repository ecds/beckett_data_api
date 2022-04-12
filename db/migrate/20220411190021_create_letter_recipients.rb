# frozen_string_literal: true

class CreateLetterRecipients < ActiveRecord::Migration[7.0]
  def change
    create_table :letter_recipients do |t|
      t.belongs_to :letter, optional: true, type: :uuid
      t.belongs_to :coporate, optional: true, type: :uuid
      t.belongs_to :personal, optional: true, type: :uuid
      t.timestamps
    end
  end
end
