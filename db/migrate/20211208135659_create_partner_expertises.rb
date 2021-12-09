# frozen_string_literal: true

class CreatePartnerExpertises < ActiveRecord::Migration[7.0]
  def change
    create_table :partner_expertises do |t|
      t.integer :service_id
      t.integer :partner_id

      t.timestamps
    end
  end
end
