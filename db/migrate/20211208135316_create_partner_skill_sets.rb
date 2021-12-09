# frozen_string_literal: true

class CreatePartnerSkillSets < ActiveRecord::Migration[7.0]
  def change
    create_table :partner_skill_sets do |t|
      t.integer :level
      t.integer :skill_id
      t.integer :partner_id

      t.timestamps
    end
  end
end
