# frozen_string_literal: true

class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :phone_number
      t.integer :operating_radius
      t.string :address
      t.integer :latitude
      t.integer :longitude
      t.integer :rating

      t.timestamps
    end
  end
end
