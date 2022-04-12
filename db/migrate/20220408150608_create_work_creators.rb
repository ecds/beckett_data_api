# frozen_string_literal: true

class CreateWorkCreators < ActiveRecord::Migration[7.0]
  def change
    create_table :work_creators do |t|
      t.belongs_to :work, type: :uuid
      t.belongs_to :personal, type: :uuid
      t.timestamps
    end
  end
end
