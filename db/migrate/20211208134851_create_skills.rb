# frozen_string_literal: true

class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :service_id

      t.timestamps
    end
  end
end
